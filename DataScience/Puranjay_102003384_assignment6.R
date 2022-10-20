#Puranjay Singh
#102003384
#3CO9
#Assignment 6

#Q1
df <- read_csv("/users/purja/Downloads/data.csv")
head(df)

#Q1_1
df %>% 
  group_by(continent) %>% 
  summarize(total_number=n_distinct(country))

#Q1_2
given_year <- 2002
df %>%
  filter(continent == "Europe" & year == given_year) %>%
  arrange(gdppercap) %>%
  head(1)

#Q1_3
given_year <- 1982
df %>%
  filter(year == given_year) %>%
  group_by(continent) %>%
  summarize(mean_lifeexp = mean(lifeexpectancy))

#Q1_4
df %>%
  mutate(gdp = gdppercap*population) %>%
  group_by(country) %>%
  summarise(Total.GDP = sum(gdp)) %>%
  arrange(desc(Total.GDP)) %>%
  head(5)

#Q1_5
df %>%
  filter(lifeexpectancy >= 80) %>%
  select(country, lifeexpectancy, year)

#Q1_6
df %>%
  group_by(country) %>%
  summarise(cor = cor(lifeexpectancy, gdppercap)) %>%
  arrange(desc(abs(cor))) %>%
  head(10)

#Q1_7
df %>%
  filter(continent != "Asia") %>%
  group_by(continent, year) %>%
  summarise(mean.pop = mean(population)) %>%
  arrange(desc(mean.pop)) 

#Q1_8
df %>%
  group_by(country) %>%
  summarize(sd.pop = sd(population)) %>%
  arrange(sd.pop) %>%
  head(3)

#Q1_9
df %>% 
  arrange(country, year) %>% 
  group_by(country) %>% 
  filter(population < lag(population) & lifeexpectancy > lag(lifeexpectancy))