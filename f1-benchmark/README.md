# Benchmarking Formula 1 Results Using a Normal Model

> Fry, J., Fanzon, S., Austin, M., & Brighton, T. (2026). Benchmarking Formula 1 results using a normal model. *arXiv preprint arXiv:2603.15192v1*.

## Files

| File | Description |
|------|-------------|
| `analysis.R` | ggplot2 code producing the bivariate scatter plot |
| `data.csv` | Synthetic dataset (480 rows, 20 drivers x 24 races) |
| `plot.png` | Output visualization |

## How to run

```r
setwd("f1-benchmark")
source("analysis.R")
```

## Data disclaimer

The dataset is **synthetic** — generated to approximate patterns described in the paper. It is not real F1 results data. For educational and visualization purposes only.

## La Trobe Brand Colors

- Red (elite teams): `#E2231B`
- Blue (non-elite): `#0591F8`
- Background: `#FAFAFA`
