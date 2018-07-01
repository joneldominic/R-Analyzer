#Taps
#Problem #1

> library(rJava)
> library(xlsxjars)
> library(xlsx)
> dataTV <- read.xlsx("StatExer_Taps.xlsx", "television")
> head(dataTV)
    Operator   Order   Method Assembly
1 Operator 1 Order 1 Method C       10
2 Operator 1 Order 2 Method B        7
3 Operator 1 Order 3 Method A        5
4 Operator 1 Order 4 Method D       10
5 Operator 2 Order 1 Method D       14
6 Operator 2 Order 2 Method C       18
> AnovaTV <- (aov(Assembly~Operator+Order+Method, data=dataTV))
> summary(AnovaTV)
            Df Sum Sq Mean Sq F value  Pr(>F)   
Operator     3   51.5  17.167   9.810 0.00993 **
Order        3   18.5   6.167   3.524 0.08852 . 
Method       3   72.5  24.167  13.810 0.00421 **
Residuals    6   10.5   1.750                   
---
Signif. codes:  0 ‘***’ 0.001 ‘**’ 0.01 ‘*’ 0.05 ‘.’ 0.1 ‘ ’ 1
> library(agricolae)
> HSD.test(AnovaTV, "Method")

Study:

HSD Test for Assembly 

Mean Square Error:  1.75 

Method,  means

         Assembly  std.err r Min. Max.
Method A     7.50 1.040833 4    5   10
Method B     9.25 1.108678 4    7   12
Method C    13.25 1.796988 4   10   18
Method D    11.00 1.080123 4    9   14

alpha: 0.05 ; Df Error: 6 
Critical Value of Studentized Range: 4.895599 

Honestly Significant Difference: 3.238134 

Means with the same letter are not significantly different.

Groups, Treatments and means
a        Method C        13.25 
ab       Method D        11 
bc       Method B        9.25 
c        Method A        7.5 

