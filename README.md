# LTU Sport Analytics

R code and synthetic datasets for sport analytics research videos.
Each folder is one paper — clone, run the R script, explore the data.

Part of the [La Trobe University Master of Sport Analytics](https://www.latrobe.edu.au/courses/master-of-sport-analytics) program.

## Papers

| Paper | Folder | Authors | Year |
|-------|--------|---------|------|
| Benchmarking Formula 1 results using a normal model | [f1-benchmark](f1-benchmark/) | Fry, Fanzon, Austin & Brighton | 2026 |

## How to use

```bash
git clone https://github.com/hareshsuppiah/ltu-sport-analytics.git
cd ltu-sport-analytics/f1-benchmark
```

Open `analysis.R` in RStudio or run:

```r
source("analysis.R")
```

Each folder is self-contained with its own data, code, and output plot.

## Requirements

- R 4.0+
- tidyverse (`install.packages("tidyverse")`)
