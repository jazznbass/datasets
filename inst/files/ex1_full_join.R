library(tidyverse)
library(jwdatasets)

df <- full_join(
  ex1_student, ex1_teacher,
  by = "class_id",
  suffix = c("_student", "_teacher")
)

df_add <- df %>%
  group_by(class_id) %>%
  summarise(
    average_age = mean(age_student, na.rm = TRUE),
    prop_male = mean(sex_student == "M") * 100
  )

df <- full_join(df, df_add, by = "class_id")

view(df)

