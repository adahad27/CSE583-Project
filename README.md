# CSE583 Project

This project builds LLVM-based loop-unroll datasets from benchmark suites, then fine-tunes and evaluates causal LLMs to predict the unroll factor for each loop.

## Workflow

### 1. Clone the benchmark repositories

Run the setup script first. It downloads the benchmark suites used to generate LLVM IR and profiling data.

```bash
bash setup.sh
```

This script fetches the benchmark repositories needed for dataset creation, including PolyBench, Embench-IoT, LLVM Test Suite, and NPB.

### 2. Generate the LLVM datasets

Use the repository-specific PGO / instrumentation scripts to compile the benchmarks, run the instrumented binaries, and collect profile-guided optimization results.

The project expects the benchmark outputs to be organized into folders such as:

- `training_data/`
- `pgo_results/`
- `*_pgo_results/`
- `*_unroll_remarks/`

These scripts produce the LLVM IR and loop-unroll remark data that will be turned into the training CSV.

### 3. Install dependencies

Create and activate a Python environment, then install the required packages.

```bash
pip install -r requirements.txt
```

### 4. Train the model

Run the training script directly:

```bash
python training.py
```

Or submit the batch script if you are running on a scheduler:

The training script:

- loads `data.csv`
- builds prompt/target pairs from the LLVM IR and loop metadata
- applies stratified splitting
- oversamples minority classes in the training split
- fine-tunes the selected model with QLoRA
- saves one checkpoint per fold under `models/<model-name>/fold1` through `fold5`

## Evaluation

After training, run the evaluation script to score all five folds and write per-fold plus combined prediction CSVs.

```bash
python eval_sft.py
```

## Plotting results

If you want to plot the summary table in `results.csv`, run:

```bash
python plot_results.py
```

This writes two figures into `plots/`:

- highest accuracy vs. dataset size
- mean accuracy vs. dataset size

## Notes

- The model checkpoints are stored per fold inside the model folder, for example `models/sft-llm-compiler-7b-0.25/fold3`.
- `eval_sft.py` expects the fold split metadata saved by `training.py` in `kfold_splits.json`.