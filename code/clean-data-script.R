# ===================================================================
# Title: clean up datas
# Description: this file is to download the raw data from github, and 
# chose 2 auhtor to do web scripting and clean up the datas. then make 
# their articles, number of cited, years into dataframe, and finally turn 
# them into csv and save in the cleandata folder.
# Input(s): raw data from github
# Output(s): csv files
# Author: yuelinzhou
# Date: 12-05-2019
# ===================================================================

library(xml2)
library(rvest)
library(stringr)
Sys.sleep(15)

setwd("/Users/yuelinzhou/stat133/workouts/workout3/data/rawdata")
# first author
abhijitrawdata_url <- "https://raw.githubusercontent.com/ucb-stat133/stat133-fall-2019/master/data/scholar/abhijit_banerjee_GoogleScholarCitations.html"
#download.file(abhijitrawdata_url, 'abhijit_banerjee_GoogleScholarCitations.html')
data1 <- read_html('abhijit_banerjee_GoogleScholarCitations.html')
data1_table <- html_table(data1)

# second author
angusrawdata_url <- "https://raw.githubusercontent.com/ucb-stat133/stat133-fall-2019/master/data/scholar/angus_deaton_GoogleScholarCitations.html"
#download.file(angusrawdata_url,'angus_deaton_GoogleScholarCitations.html')
data2 <- read_html('angus_deaton_GoogleScholarCitations.html')
data2_table <- html_table(data2)

# Part 1: Extract simple information of the authors
# Extract simple information of the authors
html_text(data1 %>% html_nodes(xpath = '//*[@id="gsc_prf_in"]'))
html_text(data1 %>% html_nodes(xpath = '//*[@class="gsc_prf_il"]'))

html_text(data2 %>% html_nodes(xpath = '//*[@id="gsc_prf_in"]'))
html_text(data2 %>% html_nodes(xpath = '//*[@class="gsc_prf_ila"]'))

# Part 2: Extract all the papers for each author (not just the 20 most cited)
# first author
info1 <- data1 %>% html_nodes(xpath ='//*[@id="gsc_a_b"]') %>%
  html_nodes(xpath = "tr") %>% html_nodes(xpath = "td") 

result1 <- sapply(html_children(info1), html_text)
final_form1 <- result1[result1 != "*"]

# second author
info2 <- data2 %>% html_nodes(xpath ='//*[@id="gsc_a_b"]') %>%
  html_nodes(xpath = "tr") %>% html_nodes(xpath = "td")

result2 <- sapply(html_children(info2), html_text)
final_form2 <- result2[result2 != "*"]

# Make dataframe for my first data set: Abhijit Banerjee
# vector for paperName1
paperName1 <- c()
for(i in 1:495){
  paperName1[i] <- final_form1[seq(1,2475,5)[i]]
}
paperName1

# vector for reseacher1
researcher1 <- c()
for(i in 1:495){
  researcher1[i] <- final_form1[seq(2,2475,5)[i]]
}
researcher1

# vector for journal1 
journal1 <- c()
for(i in 1:495){
  journal1[i] <- final_form1[seq(3,length(final_form1),5)[i]]
}
journal1

# vector for citation1 
citation1 <- c()
for(i in 1:495){
  citation1[i] <- final_form1[seq(4,length(final_form1),5)[i]]
}
citation1 <- as.integer(citation1)

# vector for year1
year1 <- c()
for(i in 1:495){
  year1[i] <- final_form1[seq(5,length(final_form1),5)[i]]
}
year1 <- as.integer(year1)
dat1 <- data.frame(paperName = paperName1,
researcher = researcher1,journal = journal1,citations = citation1,year = year1)

# Make dataframe for my second  data set: Angus Deaton
# vector for paperName2 
paperName2 <- c()
for(i in 1:(nrow(data2_table[[2]])-1)){
  paperName2[i] <- final_form2[seq(1,length(final_form2),5)[i]]
}
paperName2

# vector for reseacher2
researcher2 <- c()
for(i in 1:(nrow(data2_table[[2]])-1)){
  researcher2[i] <- final_form2[seq(2,length(final_form2),5)[i]]
}
researcher2

# vector for journal2
journal2 <- c()
for(i in 1:(nrow(data2_table[[2]])-1)){
  journal2[i] <- final_form2[seq(3,length(final_form2),5)[i]]
}
journal2

# vector for citation2
citation2 <- c()
for(i in 1:(nrow(data2_table[[2]])-1)){
  citation2[i] <- final_form2[seq(4,length(final_form2),5)[i]]
}
citation2 <- as.integer(citation2)

# vector for year2
year2 <- c()
for(i in 1:(nrow(data2_table[[2]])-1)){
  year2[i] <- final_form2[seq(5,length(final_form2),5)[i]]
}
year2 <- as.integer(year2)
dat2 <- data.frame(paperName = paperName2,
researcher = researcher2,journal = journal2,citations = citation2,year = year2)

# turn dataframe into csv file and save them in cleandata folder
write.csv(dat1,"/Users/yuelinzhou/stat133/workouts/workout3/data/cleandata/abhijit_banerjee_GoogleScholarCitations.csv",
          row.names = FALSE)
write.csv(dat2,"/Users/yuelinzhou/stat133/workouts/workout3/data/cleandata/angus_deaton_GoogleScholarCitations.csv",
          row.names = FALSE)


# make data dictionary file
# joedeMacBook-Pro:cleandata yuelinzhou$ touch data-dictionary.md
