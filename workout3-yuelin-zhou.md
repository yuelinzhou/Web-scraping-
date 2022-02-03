Workout3-yuelin-zhou
================

## Codes are in Rmd file.

# Part 3: Practice with Regular Expressions

    ## Loading required package: NLP

## a) For the two scholars, how many of their paper titles begin with a word that starts with a vowel, respectively?

    ## [1] 118

I creat an vector called vowel contains all vowel words, and I use
substr to display the first letter of the word and use %in% to check,
then I got the result of 118 paper titles begin with a vowel word in
abhihit’s data.

    ## [1] 146

Do the same thing for angus’s data and I got 146 paper titles begin with
a vowel word in angus’s
data

## b) For the two scholars, how many of their paper titles end with “s” respectively?

    ## [1] 78

For abhijit’s data, I use substr and nchar to display each string in the
last character,so I can check them in the if statement. Finally the
result will be 78 paper titles end with “s” in abhijit’s data.

    ## [1] 127

Do the samething for angus’s data, I got 127 paper titles end with “s”
in angus’s
data.

## c) For the two scholars, find the longest title, respectively (“longest” in terms of number of characters)

    ## [1] 178

    ## [1] "Voters be Primed to Choose Better Legislators? Experimental Evidence from Rural India,” October 2010. mimeo, Harvard Universiy. 4, 27, 29, Selvan Kumar, Rohini Pande, and Felix …"

The longest title for abhijit’s data is 178 characters,I use nchar to
make an vector for the titles, and compares them using max(), then I use
which.max() to find out the index for the longest title, and finally
display the
    title.

    ## [1] 177

    ## [1] "Tº paper is concerned with the empirical behavior of commodity prices—in particular, changes in the variability of commodity prices and in the trend growth of prices over time …"

Same for angus’s data, The longest title for angus’s data is 177
characters and with the title
above.

## d) For the two scholars, calculate the variable “number of punctuation symbols in the their titles”. Display summary() statistics of these variables, and the corresponding histograms

    ##    Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
    ##    0.00    0.00    1.00    1.64    2.00   21.00

![](workout3-yuelin-zhou_files/figure-gfm/unnamed-chunk-8-1.png)<!-- -->

<img src="../images/abhijit_his.png" style="display: block; margin: auto;" />
For abhijit’s data, I make an vector to store each count in each titles,
using regular expression “\[:punct:\]” to does the job,then display
statistics of these variables using summary(), and finally make an
corresponding histograms

    ##    Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
    ##   0.000   0.000   1.000   1.523   2.000  15.000

![](workout3-yuelin-zhou_files/figure-gfm/unnamed-chunk-10-1.png)<!-- -->

<img src="../images/angus_his.png" style="display: block; margin: auto;" />
For angus’s data, I just repeat the same thing as abhijit and make an
corresponding histograms with
it

## e) Remove stop words(“the”, “a”, “an”, “and”, “in”, “if”, “but”), numbers and punctua- tions from the titles

### I feel like the stop words(“the”, “a”, “an”, “and”, “in”, “if”, “but”) are not enough, I think the word “of”,“for”,“to”,“from”,“on” should also be remove.

    ##  [1] "simple model herd behavior"                                                         
    ##  [2] "occupational choice process development"                                            
    ##  [3] "poor economics radical rethinking way fight global poverty"                         
    ##  [4] "miracle microfinance evidence randomized evaluation"                                
    ##  [5] "economic lives poor"                                                                
    ##  [6] "inequality growth what can data say"                                                
    ##  [7] "remedying education evidence two randomized experiments india"                      
    ##  [8] "history institutions economic performance legacy colonial land tenure systems india"
    ##  [9] "growth theory through lens development economics"                                   
    ## [10] "thy neighbors keeper design credit cooperative with theory test"

For abhijit’s data, I make everything in lowercase first, then I make an
vector to store each filtered titles, then using a big forloop that can
filtered out stopwords,numbers and punctuations, then clean up the extra
whitespaces using stripWhitespace() and str\_trim(), and finally display
the first 10 line of this
    data.

    ##  [1] "economics consumer behavior"                                            
    ##  [2] "analysis household surveys microeconometric approach development policy"
    ##  [3] "almost ideal demand system"                                             
    ##  [4] "understanding consumption"                                              
    ##  [5] "saving liquidity constraints"                                           
    ##  [6] "high income improves evaluation life not emotional wellbeing"           
    ##  [7] "health inequality economic development"                                 
    ##  [8] "instruments randomization learning about development"                   
    ##  [9] "panel data time series crosssections"                                   
    ## [10] "behaviour commodity prices"

Do the samething with angus’s data and finally display the first 10 line
of this
data.

## f) Excluding stop words, numbers and punctuations, what are the 10 most frequent words in scholar A’s titles?

    ## words_abhijit
    ##    evidence       india development   economics          dp    economic 
    ##          67          45          41          38          30          30 
    ##        poor      theory      growth  randomized 
    ##          28          26          24          24

For abhijit’s data, I again creat an vector that stores all words, using
append to add up the vector and use strslipit to display the words from
a strings, then sort from highest to lowest, and display the top 10 of
the data
set

## g) Excluding stop words, numbers and punctuations, what are the 10 most frequent words in scholar B’s titles?

    ## words_angus
    ##      health   household        data    economic  inequality     poverty 
    ##          44          38          36          36          36          34 
    ##      demand    analysis consumption development 
    ##          32          31          30          30

I did the samething with angus’s data and finally display the first 10
line of this data.

# Part 4: Data visualizations

    ## Loading required package: RColorBrewer

    ## 
    ## Attaching package: 'ggplot2'

    ## The following object is masked from 'package:NLP':
    ## 
    ##     annotate

## 1\) Excluding stop words, numbers and punctuations, create two wordclouds for all the titles of scholar A and B respectively. What’s your observation from the wordcloud plots?

    ## <<SimpleCorpus>>
    ## Metadata:  corpus specific: 1, document level (indexed): 0
    ## Content:  documents: 5
    ## 
    ## [1] simple model herd behavior                                
    ## [2] occupational choice process development                   
    ## [3] poor economics radical rethinking way fight global poverty
    ## [4] miracle microfinance evidence randomized evaluation       
    ## [5] economic lives poor

    ## <<SimpleCorpus>>
    ## Metadata:  corpus specific: 1, document level (indexed): 0
    ## Content:  documents: 5
    ## 
    ## [1] economics consumer behavior                                            
    ## [2] analysis household surveys microeconometric approach development policy
    ## [3] almost ideal demand system                                             
    ## [4] understanding consumption                                              
    ## [5] saving liquidity constraints

<img src="../images/abhijit_wordcloud.png" style="display: block; margin: auto;" />
For abhijit’s data, I make corpus first then insepct the elements to see
if anything wrong,then I start plot my wordcloud, Based on abhjit’s
data, I saw that the most frequency words are tend to be bigger,for
example the word evidence and india are big. if we set random.order =
FALSE (in this case, I didn’t), then the more frequently used word will
place at the center. as we can see abhijit love to use evidence to
support certian point he wants to make, therefore he must took a lot of
reference from other
scholars.

<img src="../images/angus_wordcloud.png" style="display: block; margin: auto;" />
Do the same thing with angus’s data,I make corpus first then insepct the
elements to see if anything wrong,then I start plot my wordclouD. For
angus’s data has more words, so I set the smaller scale, based on
angus’s data,I Saw that health,household,data and household,health are
seem to be the most frequently used words, as we can see that angus is
more serious towards the solving problem based on ineuqality on people’s
health condition, so that we can boost the economic for the
society.

## 2\) Create a line plot that displays the number of the publications for the two scholars across years. What can you observe from the plot?

    ##  [1] 1974 1975 1987 1989 1990 1991 1992 1993 1994 1995 1996 1997 1998 1999
    ## [15] 2000 2001 2002 2003 2004 2005 2006 2007 2008 2009 2010 2011 2012 2013
    ## [29] 2014 2015 2016 2017 2018 2019

    ##  [1] 1965 1971 1972 1973 1974 1975 1976 1977 1978 1979 1980 1981 1982 1983
    ## [15] 1984 1985 1986 1987 1988 1989 1990 1991 1992 1993 1994 1995 1996 1997
    ## [29] 1998 1999 2000 2001 2002 2003 2004 2005 2006 2007 2008 2009 2010 2011
    ## [43] 2012 2013 2014 2015 2016 2017 2018 2019 2020

Before ploting, I first display the unique year for the data set
above,then I remove all na value for all unknown year by using
na.omit(), then I make an foor loop to find out how many publication for
each year, then make an dataframe store number of publciation for each
year and also indicated their name in the data frame.
<img src="../images/publication_year.png" style="display: block; margin: auto;" />
Based on the data plot above, I discovered both line are increasing as
the year increases. Abhijit seems publish more articles than angus in
around (2000 to 2019). Angus seems publish more articles than abhijit in
the past (1970 to 2000). In addtion, angus’s timeline seems more balance
that abhijit because he roughly post 14-19 articles each year. Comparing
to abhijit, he only post 1 article in the early time, but increase
raipdly round 2000 until today, both lines are very
interesting.

## 3\) For each author, select 3 of the top 10 most frequently used words in his/her titles. With this set of six words, create a plot with timelines that show the trend (i.e. evolution) of each word over a period of 10 to 20 year (the more years the better)

### For abhijit’s data I pick poor,economic and evidence

Before ploting, I first display how many times the word appear on each
year. For the word poor:

    ## 
    ## 2006 2007 2008 2009 2010 2011 2012 2013 2014 2015 2018 2019 
    ##    2    2    2    1    3    6    4    1    2    1    2    1

For the word econmic:

    ## 
    ## 1987 1990 1993 1996 1997 1998 1999 2000 2002 2003 2004 2005 2006 2007 2008 
    ##    1    2    2    1    1    2    1    1    6    1    1    6    3    2    3 
    ## 2009 2010 2011 2012 2013 2014 2015 2016 2017 
    ##    2    2    5    6    1    2    1    1    1

For the word evidence:

    ## 
    ## 1989 1991 2001 2003 2004 2005 2006 2007 2008 2009 2010 2011 2012 2013 2014 
    ##    1    1    1    3    2    1    2    2    4    2    3    2    6    4    5 
    ## 2015 2016 2017 2018 2019 
    ##    3    7    3    6    5

Then make an dataframe for those 3 words

    ##        word number year
    ## 1      poor      2 2006
    ## 2      poor      2 2007
    ## 3      poor      2 2008
    ## 4      poor      1 2009
    ## 5      poor      3 2010
    ## 6      poor      6 2011
    ## 7      poor      4 2012
    ## 8      poor      1 2013
    ## 9      poor      2 2014
    ## 10     poor      1 2015
    ## 11     poor      2 2018
    ## 12     poor      1 2019
    ## 13 economic      1 1987
    ## 14 economic      2 1990
    ## 15 economic      2 1993
    ## 16 economic      1 1996
    ## 17 economic      1 1997
    ## 18 economic      2 1998
    ## 19 economic      1 1999
    ## 20 economic      1 2000
    ## 21 economic      6 2002
    ## 22 economic      1 2003
    ## 23 economic      1 2004
    ## 24 economic      6 2005
    ## 25 economic      3 2006
    ## 26 economic      2 2007
    ## 27 economic      3 2008
    ## 28 economic      2 2009
    ## 29 economic      2 2010
    ## 30 economic      5 2011
    ## 31 economic      6 2012
    ## 32 economic      1 2013
    ## 33 economic      2 2014
    ## 34 economic      1 2015
    ## 35 economic      1 2016
    ## 36 economic      1 2017
    ## 37 evidence      1 1989
    ## 38 evidence      1 1991
    ## 39 evidence      1 2001
    ## 40 evidence      3 2003
    ## 41 evidence      2 2004
    ## 42 evidence      1 2005
    ## 43 evidence      2 2006
    ## 44 evidence      2 2007
    ## 45 evidence      4 2008
    ## 46 evidence      2 2009
    ## 47 evidence      3 2010
    ## 48 evidence      2 2011
    ## 49 evidence      6 2012
    ## 50 evidence      4 2013
    ## 51 evidence      5 2014
    ## 52 evidence      3 2015
    ## 53 evidence      7 2016
    ## 54 evidence      3 2017
    ## 55 evidence      6 2018
    ## 56 evidence      5 2019

<img src="../images/3word_abhijit.png" style="display: block; margin: auto;" />
Based on the abhijit’s data,I saw that the word “economics” most used in
2000-2010, the maxiumn is 6 times, which is a lot.For “evidence” is a
increasing trend, it seems like in the modern day, people like to use
evidence to prove something instead of keep saying such word “this will
boost the economic”. According to the Financial crisis from 2008, people
more became poor, therefore abhijit start word “poor” more frequently.

### For angus’s data I pick inequality,household,health

For the word inequality:

    ## 
    ## 1982 1994 1995 1997 1998 1999 2001 2002 2003 2004 2008 2009 2010 2013 2014 
    ##    1    1    2    1    2    2    5    3    3    1    1    2    1    4    2 
    ## 2015 2016 2017 
    ##    1    2    2

For the word household:

    ## 
    ## 1979 1980 1981 1984 1987 1988 1989 1992 1993 1994 1995 1997 1998 2000 2003 
    ##    1    1    1    2    4    5    3    1    1    2    1    4    3    2    2 
    ## 2004 2006 2019 
    ##    1    2    2

For the word health:

    ## 
    ## 1998 1999 2001 2002 2003 2004 2005 2006 2007 2008 2009 2010 2013 2014 2015 
    ##    2    2    3    3    4    2    2    5    4    3    2    1    3    2    4 
    ## 2016 
    ##    1

Then I make an dataframe for those 3 words

    ##          word number year
    ## 1  inequality      1 1982
    ## 2  inequality      1 1994
    ## 3  inequality      2 1995
    ## 4  inequality      1 1997
    ## 5  inequality      2 1998
    ## 6  inequality      2 1999
    ## 7  inequality      5 2001
    ## 8  inequality      3 2002
    ## 9  inequality      3 2003
    ## 10 inequality      1 2004
    ## 11 inequality      1 2008
    ## 12 inequality      2 2009
    ## 13 inequality      1 2010
    ## 14 inequality      4 2013
    ## 15 inequality      2 2014
    ## 16 inequality      1 2015
    ## 17 inequality      2 2016
    ## 18 inequality      2 2017
    ## 19  household      1 1979
    ## 20  household      1 1980
    ## 21  household      1 1981
    ## 22  household      2 1984
    ## 23  household      4 1987
    ## 24  household      5 1988
    ## 25  household      3 1989
    ## 26  household      1 1992
    ## 27  household      1 1993
    ## 28  household      2 1994
    ## 29  household      1 1995
    ## 30  household      4 1997
    ## 31  household      3 1998
    ## 32  household      2 2000
    ## 33  household      2 2003
    ## 34  household      1 2004
    ## 35  household      2 2006
    ## 36  household      2 2019
    ## 37     health      2 1998
    ## 38     health      2 1999
    ## 39     health      3 2001
    ## 40     health      3 2002
    ## 41     health      4 2003
    ## 42     health      2 2004
    ## 43     health      2 2005
    ## 44     health      5 2006
    ## 45     health      4 2007
    ## 46     health      3 2008
    ## 47     health      2 2009
    ## 48     health      1 2010
    ## 49     health      3 2013
    ## 50     health      2 2014
    ## 51     health      4 2015
    ## 52     health      1 2016

<img src="../images/3word_angus.png" style="display: block; margin: auto;" />
Based on angus’s data,I saw that the word “inequality” is has 2 climaxs
point in around 2003 and 2013. For the word “household” looks very
similar to “inequality” that has 2 cliamxs point in 1985 and 1995. For
the word “health”, it start increases in 2005 all the way up to 2007,and
decreases and finally remaind at the middle line.

# Part 5: Report

    ## 
    ## Attaching package: 'dplyr'

    ## The following objects are masked from 'package:stats':
    ## 
    ##     filter, lag

    ## The following objects are masked from 'package:base':
    ## 
    ##     intersect, setdiff, setequal, union

## Q1. On average, which scholar has more co-authors?

    ## [1] 2.573737

    ## [1] 1.385321

Based on the result, abhijit have about 2.573737 co-authors on average
(I around it to 3), angus have about 1.385321 co-author on average (I
around it to 1). In conclusion, abhijit has more co-authors than
angus.

## Q2. Do the two scholars have mutual friends(co-authors)? If yes, print the names of their friends.

    ##  [1] "A Deaton"        "A Case"          "P Glewwe"       
    ##  [4] "AV Banerjee"     "A Banerjee"      "E Duflo"        
    ##  [7] "N Lustig"        "K Rogoff"        "E Hsu"          
    ## [10] "..."             "V Alatas"        "P Aghion"       
    ## [13] "G Akerlof"       "D Fudenberg"     "C Udry"         
    ## [16] "R Chattopadhyay" "WTD Acemoglu"    "MG Dastidar"    
    ## [19] "D Acemoglu"      "S Johnson"       "A Alesina"      
    ## [22] "Y Alagh"         "H Aaron"         "JT Abaluck"     
    ## [25] "JH Abbring"      "J Ameriks"       "C Azzi"         
    ## [28] "PB Bach"         "LC Baker"        "W Easterly"     
    ## [31] "AJ Auerbach"     "B Bosworth"      "M Ainsworth"    
    ## [34] "PJ Gertler"      "J Lanjouw"       "F Ahmed"        
    ## [37] "I Adelman"       "P Bardhan"       "K Basu"         
    ## [40] "D Donaldson"     "I Morris"        "A Ando"         
    ## [43] "M Artis"         "S Galiani"       "P Gertler"      
    ## [46] "G Becker"        "FZ Ahmed"        "E Werker"       
    ## [49] "KB Anderson"     "E Durbin"        "A Michael"      
    ## [52] "H David"         "MG Duggan"       "RJ Barro"       
    ## [55] "RM McCleary"     "G Bel"           "R Hanna"        
    ## [58] "S Cole"          "JC Aker"         "IM Mbiti"       
    ## [61] "JD Angrist"      "JS Pischke"

Based on the result, Yes,there’s 59 mutual friends (excluding author
himself and “…”62-3 = 59) in the two scholars. This result suprised me
because 59 mutual friends between 2 scholars make me think the world is
so small, smart people are more likely to make friends with smart
people. Once I graudate from berkeley, I might have a lot of friends
with statistics major, so we can disccuss together to make contribution
to the
society.

## Q3. Did the two scholars once publish a paper together? If yes, please print the related information of that paper.

    ##                                          paperName
    ## 63 An evaluation of World Bank research, 1998-2005
    ##                                          researcher
    ## 63 AV Banerjee, A Deaton, N Lustig, K Rogoff, E Hsu
    ##                            journal citations year
    ## 63 Available at SSRN 2950327, 2006       191 2006

    ##                                          paperName
    ## 86 An evaluation of World Bank research, 1998-2005
    ##                                          researcher
    ## 86 AV Banerjee, A Deaton, N Lustig, K Rogoff, E Hsu
    ##                            journal citations year
    ## 86 Available at SSRN 2950327, 2006       191 2006

Based on the result, Yes, they have publish a paper together the title
of their paper is called “An evaluation of World Bank research” in 2006
with 191 citations. This article is assessed by a team of 25 evaluators.
Panel members also solicited views from current and past Bank staff, as
well as from policy makers and academics in developing countries. Based
on the evidence the authors assembled, the interviews the authors
conducted, and their own consideration, the panel concluded that the
World Bank needs a research department, and that its research needs
cannot be fully met by hiring in from the outside.

## Q4. What’s the paper with the most co-authors?

From Q1, I have already calucated how many co-authors in every
    paper

    ##   [1] 0 1 2 3 1 1 3 1 1 2 3 0 1 2 1 1 2 2 2 1 4 3 7 1 1 2 2 2 4 2 3 1 1 1 2
    ##  [36] 3 4 1 3 2 1 0 0 0 2 1 0 1 2 3 2 1 1 3 3 2 1 1 6 1 1 3 4 3 1 2 3 0 1 1
    ##  [71] 3 2 3 1 1 2 4 1 1 5 0 5 2 3 1 1 2 3 6 0 0 1 2 7 1 6 2 4 1 3 1 1 2 3 4
    ## [106] 1 4 4 2 0 2 0 4 1 2 1 3 1 6 0 4 1 5 1 1 6 1 3 1 3 1 1 1 0 1 1 3 0 0 1
    ## [141] 1 4 1 3 1 1 4 3 0 2 1 2 2 0 4 3 2 3 1 2 1 3 3 1 3 3 4 2 2 3 6 3 6 1 1
    ## [176] 1 3 2 2 1 6 0 2 4 1 6 0 2 1 6 3 2 1 1 1 3 1 3 0 0 3 2 2 2 1 0 2 3 4 1
    ## [211] 2 1 3 1 3 1 2 4 3 1 1 1 2 1 1 4 2 1 3 4 1 0 3 2 3 2 0 3 1 1 2 1 3 2 3
    ## [246] 3 0 1 2 3 1 0 2 2 4 1 4 4 2 1 0 1 2 1 5 2 1 1 1 3 5 2 3 1 1 3 6 1 6 3
    ## [281] 4 3 4 4 1 6 2 7 6 0 1 0 3 4 7 6 3 6 6 5 8 4 1 6 0 2 7 4 0 1 4 5 7 6 7
    ## [316] 2 0 5 5 7 1 4 0 2 6 3 2 6 1 2 7 3 5 1 4 1 6 6 6 3 5 1 6 5 3 2 3 4 4 1
    ## [351] 5 3 2 1 0 3 5 7 2 2 0 1 1 3 1 1 6 4 6 4 6 0 0 0 2 1 4 2 3 1 2 3 6 5 1
    ## [386] 6 0 0 1 3 6 1 3 0 6 0 1 1 1 6 1 2 6 6 2 1 1 2 2 1 2 4 2 0 6 2 2 2 0 7
    ## [421] 2 0 0 7 2 0 2 3 1 6 6 3 6 2 0 1 1 5 5 1 1 1 5 0 0 2 0 5 7 3 0 2 6 0 2
    ## [456] 3 7 1 6 5 0 2 6 6 3 2 4 1 7 1 4 1 4 6 5 6 5 4 3 6 6 7 6 0 0 1 3 6 6 4
    ## [491] 5 7 7 5 6

    ##   [1] 1 0 1 0 0 1 0 0 0 1 0 0 2 1 1 1 1 2 0 1 1 0 1 2 1 1 0 0 0 1 1 1 1 3 3
    ##  [36] 0 0 1 1 0 1 1 1 1 1 0 1 1 0 0 1 0 1 0 1 1 0 2 0 2 0 1 0 0 0 0 1 1 0 0
    ##  [71] 0 0 1 0 0 1 2 0 2 0 0 0 0 0 0 4 0 0 0 1 1 1 4 0 1 1 1 1 1 1 0 0 1 0 1
    ## [106] 0 1 1 0 2 0 0 1 1 0 0 0 0 1 0 1 0 1 1 0 1 0 0 0 0 1 0 0 0 1 1 1 0 2 1
    ## [141] 0 0 0 0 0 1 0 1 1 2 2 1 0 2 1 4 2 1 0 0 0 0 1 0 6 1 1 1 1 1 1 1 0 0 1
    ## [176] 2 0 0 0 3 0 1 3 0 3 2 1 0 0 1 1 0 1 1 0 1 0 2 0 1 0 0 0 2 1 0 1 0 0 3
    ## [211] 1 0 1 1 1 4 4 0 0 0 0 0 0 0 1 0 2 6 0 0 0 0 1 0 0 0 1 0 0 1 0 0 1 1 0
    ## [246] 1 0 0 2 0 1 0 0 5 1 2 0 0 0 0 1 0 0 1 0 0 0 0 0 0 0 0 0 2 1 1 1 6 0 1
    ## [281] 0 0 0 1 0 0 0 0 0 1 0 5 1 1 1 0 0 0 5 0 1 1 1 0 0 0 0 1 1 1 0 0 0 5 1
    ## [316] 0 0 0 0 1 0 0 1 1 0 2 1 5 7 0 0 0 0 1 0 0 0 5 5 1 3 6 7 0 0 6 0 6 0 7
    ## [351] 1 0 0 1 6 0 0 0 6 0 0 1 0 6 0 6 1 1 5 0 1 6 1 1 6 0 8 1 7 1 0 0 0 7 0
    ## [386] 5 0 2 6 7 6 6 6 0 0 2 0 2 0 6 0 1 2 0 0 0 6 0 6 0 1 1 1 1 0 6 0 6 6 6
    ## [421] 0 7 0 6 1 6 0 6 0 6 5 0 3 0 1 0 0 6 0 5 0 0 1 5 6 6 0 0 5 0 0 3 0 1 0
    ## [456] 0 1 0 0 5 6 4 0 6 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 3 0 5 7 5 0 0 6 3 1 1
    ## [491] 1 5 5 5 5 1 1 0 0 5 7 5 0 0 6 1 0 0 1 0 0 5 0 0 5 0 7 6 7 5 0 0 1 1 3
    ## [526] 1 1 6 6 6 7 1 5 0 5 6 6 4 1 0 6 3 0 6 2

The maxiumn of co\_authors in abhijit’s data is

    ## [1] 8

The maxiumn of co\_authors in angus’s data is

    ## [1] 8

Then find the index and display the paper title name

    ## [1] "Russia’s Phony Capitalism"

    ## [1] "Attendance list"

Based on the result, it seems the maxiumn co-author for both scholars
are 8. For abhijit’s data, the paper with the most co-authors is called
“Russia’s Phony Capitalism” which is about question for Russia is
whether it will become a democratic oligarchy with corporatist, criminal
characteristics or take the more difficult, painful road to becoming a
normal, Western-style democracy with a market economy. Communism is no
longer an option and so on. For angu’s data, the paper with thr most
co-authors is called “Attendance list” which is about low attendance are
serious for all children and for the community, not just the students
who miss school.

## Q5. How many distinct journals are there in the two citation tables?

### I use unique() for each scholars and display the length

For abhijit’s data:

    ## [1] 253

For angus’s data:

    ## [1] 265

Based on the result, Abhijit has 253 distinct journals, Angus has 265
distinct journals, clearly angus has more referenced more journals than
abhijit, this shows that angus know more people, more places. But
overall, 253 and 265 are seems pretty close.

## Q6. Count the total number of citations for each journal

Result is a very huge data set (477 elements), I only going to display
the first 20
    lines.

    ##  [1] "the quarterly journal of economics (total citations of: 12339 )"        
    ##  [2] "journal of political economy (total citations of: 8383 )"               
    ##  [3] "public affairs (total citations of: 2911 )"                             
    ##  [4] "american economic journal applied economics (total citations of: 2545 )"
    ##  [5] "journal of economic perspectives (total citations of: 7205 )"           
    ##  [6] "journal of economic growth (total citations of: 1455 )"                 
    ##  [7] "american economic review (total citations of: 11469 )"                  
    ##  [8] "handbook of economic growth (total citations of: 1158 )"                
    ##  [9] "science (total citations of: 7170 )"                                    
    ## [10] "european economic review (total citations of: 1350 )"                   
    ## [11] "review of economic studies (total citations of: 4764 )"                 
    ## [12] "national bureau of economic research (total citations of: 6887 )"       
    ## [13] "annu rev econ (total citations of: 850 )"                               
    ## [14] "american economic journal economic policy (total citations of: 525 )"   
    ## [15] "journal of monetary economics (total citations of: 1123 )"              
    ## [16] "journal of development economics (total citations of: 774 )"            
    ## [17] "games and economic behavior (total citations of: 539 )"                 
    ## [18] "economics of transition (total citations of: 446 )"                     
    ## [19] "journal of economic theory (total citations of: 421 )"                  
    ## [20] "the review of economic studies (total citations of: 4023 )"

Based on the result, there’s 477 distinct jornals for 2 scholars. each
jornals with corrsponding total number of citations. from the previous
question, Abhijit has 253 distinct journals, Angus has 265 distinct
journals, if they combined togther will have some overlapping journals.
From the data set,“the quarterly journal of economics” have the most
citations of 12339, which is alot. when I search this article on google,
it’s about the professional and academic economists and ranking about
students around the world, pretty interesting. This is everything for my
workout3, thanks for grading my project, hope you enjoy it, have a good
semester\!
