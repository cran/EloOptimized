## ----setup, include = FALSE---------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>"
)

## ----warning = FALSE, message = FALSE-----------------------------------------
library(EloOptimized)
library(dplyr)
library(ggplot2)

## -----------------------------------------------------------------------------
res = eloratingfixed(agon_data = nba)

## ----fig.width = 9, fig.height = 6--------------------------------------------
head(res$elo)

res$elo %>%
  rename(Team = Individual) %>%
  ggplot(aes(x = Date, y = Elo, color = Team)) + 
  geom_line()

## -----------------------------------------------------------------------------
tail(res$elo, 29) %>% arrange(-Elo) %>% select(-ExpNumBeaten, -JenksEloCardinal)

## -----------------------------------------------------------------------------
res2 = eloratingopt(agon_data = nba)

## ----fig.width = 9, fig.height = 6--------------------------------------------
res2$elo %>%
  rename(Team = Individual) %>%
  ggplot(aes(x = Date, y = Elo, color = Team)) + 
  geom_line()

## -----------------------------------------------------------------------------
tail(res2$elo, 29) %>% arrange(-Elo) %>% select(-ExpNumBeaten, -JenksEloCardinal)

## -----------------------------------------------------------------------------
res3 = eloratingopt(agon_data = nba, fit_init_elo = TRUE)

## ----fig.width = 9, fig.height = 6--------------------------------------------
res3$elo %>%
  rename(Team = Individual) %>%
  ggplot(aes(x = Date, y = Elo, color = Team)) + 
  geom_line()

## -----------------------------------------------------------------------------
tail(res3$elo, 29) %>% arrange(-Elo) %>% select(-ExpNumBeaten, -JenksEloCardinal)

