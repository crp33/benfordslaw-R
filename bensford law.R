benlaw <- function(d) {log10(1+(1/d))}
benlaw(1)
benlaw(2)
benlaw(3)
benlaw(4)
benlaw(5)
benlaw(6)
benlaw(7)
benlaw(8)
benlaw(9)
sum(benlaw(1:9))
plot(1:9, (benlaw(1:9)))


install.packages("devtools")  # if not installed
devtools::install_github("carloscinelli/benford.analysis", build_vignettes = TRUE)

library(benford.analysis)
data <- data.frame(Digit = 1:9, prob = benlaw(1:9))
trends = benford(data$Digit,
                 number.of.digits = 1,
                 discrete = T,
                 sign = "positive")
trends
plot(trends)
# If benfords law (the red line) is follwed then you dont have to worry about fraud

# now that we have a base line we will work with real data
getwd()

data = read.csv("C:/Users/paravia_conor/cbsa-est2019-alldata.csv")
bfl_1 <- benford(as.numeric(data$POPESTIMATE2019),
                 sign='positive',
                 number.of.digits = 3)
plot(bfl_1)
