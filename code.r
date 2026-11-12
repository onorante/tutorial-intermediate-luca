# Example analysis for the course "Git and GitHub for social science research"
# The data are fictional.

# Load the data (the working directory must be the repository folder)
data <- read.csv("data.csv")

# Look at the data
head(data)
summary(data)

# Average trust score by gender
aggregate(trust_score ~ gender, data = data, FUN = mean)

# Does education predict trust?
model <- lm(trust_score ~ education_years + age, data = data)
summary(model)
