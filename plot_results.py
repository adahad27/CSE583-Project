import argparse
import csv
import os
from collections import defaultdict

import matplotlib

matplotlib.use("Agg")
import matplotlib.pyplot as plt


SIZE_TO_COUNT = {
    "0.25": 75,
    "0.5": 151,
    "1.0": 260,
}


def load_results(csv_path: str):
    highest_by_model = defaultdict(dict)
    mean_by_model = defaultdict(dict)

    with open(csv_path, newline="") as f:
        reader = csv.DictReader(f)
        for row in reader:
            model_and_size = row["model"].strip()
            model_name, size_str = model_and_size.rsplit("-", 1)

            if size_str not in SIZE_TO_COUNT:
                continue

            x_count = SIZE_TO_COUNT[size_str]
            highest_by_model[model_name][x_count] = float(row["highest"])
            mean_by_model[model_name][x_count] = float(row["mean"])

    return highest_by_model, mean_by_model


def plot_metric(metric_by_model, ylabel: str, title: str, out_path: str):
    plt.figure(figsize=(8, 5))

    for model_name in sorted(metric_by_model.keys()):
        points = metric_by_model[model_name]
        x_vals = sorted(points.keys())
        y_vals = [points[x] for x in x_vals]
        plt.plot(x_vals, y_vals, marker="o", linewidth=2, label=model_name)

    plt.xlabel("Dataset size (raw sample count)")
    plt.ylabel(ylabel)
    plt.title(title)
    plt.xticks([75, 151, 260], ["75", "151", "260"])
    plt.grid(True, linestyle="--", alpha=0.4)
    plt.legend()
    plt.tight_layout()
    plt.savefig(out_path, dpi=200)
    plt.close()


def main():
    parser = argparse.ArgumentParser(description="Plot model accuracy trends from results.csv")
    parser.add_argument("--input", default="results.csv", help="Path to results.csv")
    parser.add_argument("--outdir", default="plots", help="Directory to write plot images")
    args = parser.parse_args()

    os.makedirs(args.outdir, exist_ok=True)

    highest_by_model, mean_by_model = load_results(args.input)

    highest_out = os.path.join(args.outdir, "highest_accuracy_vs_dataset_size.png")
    mean_out = os.path.join(args.outdir, "mean_accuracy_vs_dataset_size.png")

    plot_metric(
        highest_by_model,
        ylabel="Highest accuracy",
        title="Highest Accuracy vs Dataset Size",
        out_path=highest_out,
    )
    plot_metric(
        mean_by_model,
        ylabel="Mean accuracy",
        title="Mean Accuracy vs Dataset Size",
        out_path=mean_out,
    )

    print(f"Saved: {highest_out}")
    print(f"Saved: {mean_out}")


if __name__ == "__main__":
    main()
