################################################################################
# Define functions
toss_coin <- function(
    toss_count,
    head_probability
) {
    coin_tosses <- rbinom(
        n = toss_count, 
        size = 1, 
        prob = head_probability
    )
    
    return(coin_tosses)
}

calculate_confidence_interval <- function(
    coin_tosses,
    confidence_level,
    methods
) {
    head_count <- sum(coin_tosses)
    toss_count <- length(coin_tosses)
    
    confidence_intervals <- binom.confint(
        x = head_count,
        n = toss_count,
        conf.level = confidence_level,
        methods = methods
    )
    
    return(confidence_intervals)
}

write_output <- function(
  object,
  file
) {
    object |>
        capture.output() |>
        writeLines(file)
}