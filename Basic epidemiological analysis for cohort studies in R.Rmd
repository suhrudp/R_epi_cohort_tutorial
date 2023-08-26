# BASIC EPIDEMIOLOGY FOR COHORT STUDIES

## LOAD LIBRARIES

```{r}
library(readxl)
library(epiR)
```

## IMPORT DATA

```{r}
df <- read_excel(file.choose())
attach(df)
View(df)
```

## BASIC CALCULATIONS

```{r}
table(Status, Outcome)
```

## 2 BY 2 TABLE ANALYSIS FOR SIMPLE COUNTS

```{r}
mat1 <- c(29,71,9,91)
epi.2by2(dat=mat1, method="cohort.count", interpret=TRUE)
```

## CALCULATING CUMULATIVE FOLLOW UP DURATIONS

```{r}
100*sum(`Follow-up time`[Status=="Non-smoker"])
100*sum(`Follow-up time`[Status=="Smoker"])
```

## 2 BY 2 TABLE ANALYSIS WITH FOLLOW UP DURATIONS

```{r}
mat2 <- c(29, 496.70, 9, 497.30)
epi.2by2(dat=mat2, method="cohort.time", interpret=TRUE)
```
