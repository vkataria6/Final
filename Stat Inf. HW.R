setwd("S:/Data 101/Recitation 8")

census_data <- as.data.frame(read.csv("CensusData.csv"))
census_data


# Example 1
education = table(CensusData2$EDUCATION)



# Example 2
# Aggregate functions that can be used are: mean, median, variance, sum etc.
sales_profession = subset(census_data, census_data$PROFESSION == "Sales")
sales_capitalgains = tapply(sales_profession$CAPITALGAINS,
                            sales_profession$EDUCATION, mean)

# Example 3
age_greater_than_50 = subset(census_data, census_data$AGE >= 50)
aged_capitalgains = tapply(age_greater_than_50$CAPITALGAINS,
                           age_greater_than_50$PROFESSION, mean)


max(aged_capitalgains)


# Example 4
education_years = tapply(census_data$YEARS, census_data$EDUCATION, mean)

min(education_years)

# Example 5
education_capitalgains = aggregate(CAPITALGAINS ~ EDUCATION, data=census_data,
                                   mean)

# Example 6
education_capitalloss = aggregate(CAPITALLOSS ~ EDUCATION, data=census_data,
                                  mean)
education_capitalloss_tapply <- tapply(census_data$CAPITALLOSS,census_data$EDUCATION ,mean)
min(education_capitalloss_tapply)

# Example 7
data_age_less_than_45 = subset(census_data, (AGE <= 45) & (NATIVE == "United-States")
                               & EDUCATION == "Doctorate")
nrow(data_age_less_than_45)


# Example 8
r <-subset(census_data, (AGE <= 25) & (NATIVE == "United-States"))
example8_data = table(r$EDUCATION)


# Example 9
example9_data = subset(census_data, (YEARS < 17))
example9_data = tapply(example9_data$CAPITALGAINS, example9_data$YEARS, mean)
min(example9_data)


# Example 10
example10_data = subset(census_data, (YEARS <= 16))
example10_data = tapply(example10_data$CAPITALLOSS, example10_data$YEARS, mean)
max(example10_data)

# Example 11
example11_data = tapply(census_data$CAPITALGAIN, census_data$PROFESSION, mean)


# Example 12
example12_data = table(subset(census_data, YEARS <= 10)$PROFESSION)

# Example 13
example13_data = table(subset(census_data, PROFESSION == "Prof-specialty")$EDUCATION)

# Example 14
example14_data = table(subset(census_data, NATIVE == "United-States")$EDUCATION)

# Example 15
example15_data = table(subset(census_data, YEARS >= 12)$EDUCATION)