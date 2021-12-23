## Project title: Web scraping and data manipulation for 2 google scholars
This project is about taking data from 2 google scholars by using Web scraping and also includes extracting crucial insights from the data using regular expressions and present the insights in a creative manner.

## Packages 
The packages I used through out this whole project
 
 - library(xml2)
 - library(rvest)
 - library(tm)
 - library(dplyr)
 - library(wordcloud)
 - library(RColorBrewer)
 - library(stringr)
 - library(ggplot2)
 - library(tidyr)

## Extract the raw data
We will be select 1 pairs of google scholars out of all google scholar citations data set for 2 Noble laureates of the same field who received the Noble prize in near years,we will extract all the data on all the papers published by the two authors and ready for any data manipulation

***I chose Abhijit Banerjee and Angus Deaton as my pairs***

## Extract all the papers for each author
I will first download the data and use some web scraping code to turn into strings,
then we can make vector for dataframe:

 - paperName
 - researcher
 - journal
 - citations
 - year
 
 Then I use write.csv() to save into the clean data folder

## Practice with Regular Expressions
In this part, it's just some data manipulation by using regular expression in the stringr packages such as: 

 - [:punct:]
 - str_xxx
 - strsplit
 - "\\."
 - so on.......

## Data visualizations
In this part, we will keep practice on making graphs by using ggplot and wordcloud. For the wordcloud, we will be making graph about the most frequently used word for author, and more used, the word should be bigger.

## Report
The final part of this project is to apply everything we learn in order to answer the 6 out of 9 question. This part require a lot of thinking and coding knowledge. After answering each question, give a brief sentences about the result or any observation you see. 
