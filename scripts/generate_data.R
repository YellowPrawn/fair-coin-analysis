################################################################################
# Define constants
SEED <- 42

TOSS_COUNT <- 100
HEAD_PROBABILITY <- 2/3

DATA_PATH <- "data/coin_tosses.rds"

################################################################################
# Load functions
source("R/functions.R")

################################################################################
# Generate and save data
set.seed(SEED)

coin_tosses <- toss_coin(TOSS_COUNT, HEAD_PROBABILITY)

saveRDS(coin_tosses, DATA_PATH)