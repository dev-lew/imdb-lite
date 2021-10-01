library("tidyverse")

title_akas <- read_tsv("./data/title.akas.tsv")
title_basics <- read_tsv("./data/title.basics.tsv")
title_crew <- read_tsv("./data/title.crew.tsv")
title_principals <- read_tsv("./data/title.principals.tsv")
title_ratings <- read_tsv("./data/title.ratings.tsv")

# Get only english movies, remove rows with duplicate titleId
title_akas <- title_akas %>% filter(language == "en") %>% distinct(titleId, .keep_all = TRUE)

# Trim, it has 50 million rows
title_principals <- title_principals %>% distinct(tconst, .keep_all = TRUE)

# Filter out the non english movies from every other dataframe
total <- list(title_basics, title_crew, title_principals, title_ratings)
total <- lapply(total, function(df) filter(df, tconst %in% title_akas$titleId))
names(total) <- c("t_basics", "t_crew", "t_principals", "t_ratings" )
list2env(total, .GlobalEnv)

# After the above, title_akas has two extra rows, remove them
title_akas <- title_akas %>%
  filter(!titleId %in% anti_join(title_akas, title_basics,
                                           by = c("titleId" = "tconst"))$titleId)

# Conform to the schema by dropping unnecessary columns 
title_akas <- title_akas %>% select(titleId, title)
t_basics <- t_basics %>% select(tconst, primaryTitle, startYear, genres)
t_principals <- t_principals %>% select(tconst, nconst, category, characters)

# Export clean(ish) tables
write_tsv(title_akas, "title.akas.tsv")
write_tsv(t_basics, "title.basics.tsv")
write_tsv(t_crew, "title.crew.tsv")
write_tsv(t_principals, "title.principals.tsv")
write_tsv(t_ratings, "title.ratings.tsv")
