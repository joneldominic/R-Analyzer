#Taps
#Problem #3

> library(rJava)
> library(xlsxjars)
> library(xlsx)
> dataKey <- read.xlsx("StatExer_Taps.xlsx", "keyboard")
> head(dataKey)
    Size  Feel Speed
1  Small Mushy    33
2 Medium Mushy    36
3  Large Mushy    37
4  Small Mushy    31
5 Medium Mushy    35
6  Large Mushy    34
> anovaKey <- (aov(Speed~Size+Feel+Size:Feel, data=dataKey))
> summary(anovaKey)
            Df Sum Sq Mean Sq F value   Pr(>F)    
Size         2  12.33    6.17   1.762    0.213    
Feel         1 117.56  117.56  33.587 8.53e-05 ***
Size:Feel    2  10.11    5.06   1.444    0.274    
Residuals   12  42.00    3.50                     
---
Signif. codes:  0 ‘***’ 0.001 ‘**’ 0.01 ‘*’ 0.05 ‘.’ 0.1 ‘ ’ 1
> interaction.plot(dataKey$Size, dataKey$Feel, dataKey$Speed)
