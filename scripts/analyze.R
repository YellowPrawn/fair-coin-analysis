################################################################################
# Load libraries
library(binom)

################################################################################
# Define constants
DATA_PATH <- "data/coin_tosses.rds"
RESULT_PATH <- "results/confidence_intervals.txt"

CONFIDENCE_LEVEL <- 0.95
METHODS <- c("exact", "asymptotic", "bayes")

################################################################################
# Load functions
source("R/functions.R")

################################################################################
# Read, analyze and save result
coin_tosses <- readRDS(DATA_PATH)

confidence_intervals <- binom.confint(
    x = sum(coin_tosses),
    n = length(coin_tosses),
    conf.level = CONFIDENCE_LEVEL,
    methods = METHODS
)

write_output(confidence_intervals, RESULT_PATH)