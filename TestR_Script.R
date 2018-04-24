####Reading in data


#Need to change to KNB url
escapement_goals <- read.csv("~/R/Esc_goals_evaluated.csv", stringsAsFactors = FALSE)
#escapement_annal <- read.csv("https://knb.ecoinformatics.org/knb/d1/mn/v2/object/urn%3Auuid%3A2572ff72-bf52-4a25-9872-5f97e2bc9e65")
#escapement_daily <- read.csv("https://knb.ecoinformatics.org/knb/d1/mn/v2/object/urn%3Auuid%3Ad8e70975-f7fb-41e8-b372-599f7f725d68")
```



#Show there are no goals in the Arctic by adding a region to the data set

Arctic <- data.frame("Arctic")
colnames(Arctic) <- "SASAP.Region"
AllRegions <- bind_rows(escapement_goals, Arctic)

#Check to make sure thse binded appropriately
ViewArctic <- AllRegions %>%
  filter(SASAP.Region == "Arctic")
#Looks good, so move on to plotting 
