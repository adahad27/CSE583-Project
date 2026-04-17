from transformers import (
    AutoTokenizer,
    AutoModelForCausalLM,
    TrainingArguments,
    Trainer,
    DataCollatorForLanguageModeling,
)
from datasets import load_dataset


path_to_dataset = input("Please enter path to dataset:")
path_to_output_model = input("Please enter path to save trained model to:")
dataset = load_dataset(path_to_dataset, split="train")

model_name = "facebook/llm-compiler-13b"

tokenizer = AutoTokenizer.from_pretrained(model_name)
model = AutoModelForCausalLM.from_pretrained(model_name)


def tokenize(batch):
    return tokenizer(batch["answer"], truncation=True, max_length=4096)


dataset = dataset.map(tokenize, batched=True, remove_columns=dataset.column_names)
dataset = dataset.train_test_split(test_size=0.1)

training_args = TrainingArguments(
    output_dir="llm-compiler-finetuned",
    num_train_epochs=3,
    per_device_train_batch_size=2,
    gradient_accumulation_steps=8,
    gradient_checkpointing=True,
    bf16=True,
    learning_rate=2e-5,
    logging_steps=10,
    eval_strategy="epoch",
    save_strategy="epoch",
    load_best_model_at_end=True,
)


trainer = Trainer(
    model=model,
    args=training_args,
    train_dataset=dataset["train"],
    eval_dataset=dataset["test"],
    processing_class=tokenizer,
    data_collator=DataCollatorForLanguageModeling(tokenizer, mlm=False),
)


print("Starting training...")
trainer.train()

print("Training completed. Saving model...")
trainer.save_model(path_to_output_model)

print("Model trained and saved to:", path_to_output_model)
