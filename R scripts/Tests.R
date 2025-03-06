library(readxl)

if (!require(ISLR)) install.packages("ISLR")
library(ISLR)

if (!require(ggplot2)) install.packages("ggplot2")
library(ggplot2)

if (!require(dplyr)) install.packages("dplyr")
library(dplyr)

if (!require(GGally)) install.packages("GGally")
library(GGally)

Social_Media <- read_excel("~/Documents/GitHub/Social-Media-Analysis/Data - Raw and Processed/Social Media Processed.xlsx")
View(Social_Media)

Engagements <- Social_Media$TotalEngagementsAndInteractions
Language <- Social_Media$Language

anova_model = aov(Social_Media$TotalEngagementsAndInteractions ~ Language, data = Social_Media)
summary(anova_model)

r1 <- Social_Media$TotalEngagementsAndInteractions
r2 <- Social_Media$Facebook
r3 <- Social_Media$Tiktok
r4 <- Social_Media$YouTube
r4 <- Social_Media$Twitter
r5 <- Social_Media$AuthorFollowerCount
r6 <- Social_Media$Eng
r7 <- Social_Media$Fra
r8 <- Social_Media$Spa
r9 <- Social_Media$Ita
r10 <- Social_Media$Afr
r11 <- Social_Media$Deu
r12 <- Social_Media$Isl
r13 <- Social_Media$Mar
r14 <- Social_Media$Swe
r15 <- Social_Media$Tur
r16 <- Social_Media$Zho


model <- lm(formula = r1 ~ r2 + r4 + r5 + r6 + r7 + r8 + r9 + r10 + r11 + r12 + r13+ r14 + r15 + r16, data = Social_Media)
summary(model)

anova_model <- aov(r1 ~ r2 + r3 + r4, data = Social_Media)
summary(anova_model)
