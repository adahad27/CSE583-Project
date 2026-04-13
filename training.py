from transformers import AutoTokenizer, AutoModelForCausalLM, TrainingArguments, Trainer, DataCollatorForLanguageModeling
from datasets import load_dataset


path_to_dataset = input("Please enter path to dataset:")
path_to_output_model = input("Please enter path to save trained model to:")
dataset = load_dataset(path_to_dataset, split="train")

tokenizer = AutoTokenizer.from_pretrained("facebook/llm-compiler-13b")
model = AutoModelForCausalLM.from_pretrained("facebook/llm-compiler-13b")


def tokenize():
    """
    TODO: Finish the following code so that it looks like this ->
    def tokenize(batch):
        return tokenizer(
            batch["horoscope"],
            truncation=True,
            max_length=512,
        )
    """
    return tokenizer()


dataset = dataset.map(tokenize, batched=True, remove_columns=dataset.column_names)
dataset = dataset.train_test_split(test_size=0.1)

"""
TODO: Finish the following object definition so that it looks like this ->
training_args = TrainingArguments(
    output_dir="qwen3-finetuned",
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
"""
training_args = TrainingArguments()


trainer = Trainer(
    model=model,
    args=training_args,
    train_dataset=dataset["train"],
    eval_dataset=dataset["test"],
    processing_class=tokenizer,
    data_collator=DataCollatorForLanguageModeling(tokenizer, mlm=False),
)



trainer.train()

trainer.save_model(path_to_output_model)

print("Sucessful")

