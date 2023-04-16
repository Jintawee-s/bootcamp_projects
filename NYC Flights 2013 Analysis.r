# # NYC Flight 2013 Analysis


## HOMEWORK 01 - flights
## 5 Business Question

library(dplyr)

flights <- read.csv("flights.csv", stringsAsFactors = FALSE)
View(flights)

airlines <- read.csv("airlines.csv", stringsAsFactors = FALSE)
planes <- read.csv("planes.csv", stringsAsFactors = FALSE)

# Q1 : Top 5 airlines with the most delayed departure in 2013
# Results : (1)ExpressJet Airlines (2)JetBlue Airways (3)United Air Lines (4)Delta Air Lines (5)Endeavor Air

flights %>%
  filter(!is.na(dep_delay)) %>%
  left_join(airlines, by ="carrier") %>%
  group_by(name) %>%
  summarise(sum_dep_delay = sum(dep_delay)) %>%
  arrange(desc(sum_dep_delay)) %>%
  head(5)

# Q2 : Top 5 airlines with the most delayed arrival in 2013
# Results : (1)ExpressJet Airlines (2)JetBlue Airways (3)Envoy Air (4)United Air Lines (5)Endeavor Air

flights %>%
 filter(!is.na(arr_delay)) %>%
 left_join(airlines, by ="carrier") %>%
 group_by(name) %>%
 summarise(sum_arr_delay = sum(arr_delay)) %>%
 arrange(desc(sum_arr_delay)) %>%
 head(5)

# Q3 : Top 3 route and dates that do a good time?
# Results : (1) EWR-SFO May 7, 2013 (2) JFK-SFO May 20, 2013 (3) EWR-LEX May 2, 2013
flights %>%
 select(month, day, origin, dest, carrier, arr_delay) %>%
 filter(arr_delay < 0) %>%
 arrange(arr_delay) %>%
 head(3)

# Q4 : Sum, avg and max of delayed arrival in each month by origin
options(dplyr.summarise.inform = FALSE)
flights %>%
 filter(arr_delay > 0) %>%
 group_by(month, origin) %>%
 summarise(sum_arr_delay = sum(arr_delay),
           avg_arr_delay = mean(arr_delay),
           max_arr_delay = max(arr_delay))

# Q5 : Top 10 planes data with the most delayed departure in 2013

 flights %>%
  select(dest,month, day, dep_delay, tailnum) %>%
  left_join(planes, by ="tailnum") %>%
  filter(seats > 100, year < 2000) %>%
  arrange(desc(dep_delay)) %>%
  head(10)

