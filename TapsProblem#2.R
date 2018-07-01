#Taps
#Problem #2

> library(rJava)
> library(xlsxjars)
> library(xlsx)
> dataChemical <- read.xlsx("StatExer_Taps.xlsx", "chemical")
> head(dataChemical)
    Day   Batch Ingredients Reaction
1 Day 1 Batch 1           A        8
2 Day 1 Batch 2           C       11
3 Day 1 Batch 3           B        4
4 Day 1 Batch 4           D        6
5 Day 1 Batch 5           E        4
6 Day 2 Batch 1           B        7
> AnovaChemical <- (aov(Reaction~Day+Batch+Ingredients, data=dataChemical))
> summary(AnovaChemical)
            Df Sum Sq Mean Sq F value   Pr(>F)    
Day          4  12.24    3.06   0.979 0.455014    
Batch        4  15.44    3.86   1.235 0.347618    
Ingredients  4 141.44   35.36  11.309 0.000488 ***
Residuals   12  37.52    3.13                     
---
Signif. codes:  0 ‘***’ 0.001 ‘**’ 0.01 ‘*’ 0.05 ‘.’ 0.1 ‘ ’ 1
> library(agricolae)
> LSD.test(AnovaChemical, "Ingredients")

Study:

LSD t Test for Reaction 

Mean Square Error:  3.126667 

Ingredients,  means and individual ( 95 %) CI

  Reaction   std.err r      LCL       UCL Min. Max.
A      8.4 0.5099020 5 7.289019  9.510981    7   10
B      5.6 0.9273618 5 3.579452  7.620548    3    8
C      8.8 0.7348469 5 7.198906 10.401094    7   11
D      3.4 0.9273618 5 1.379452  5.420548    1    6
E      3.2 0.8602325 5 1.325714  5.074286    1    6

alpha: 0.05 ; Df Error: 12
Critical Value of t: 2.178813 

Least Significant Difference 2.436636
Means with the same letter are not significantly different.

Groups, Treatments and means
a        C       8.8 
a        A       8.4 
b        B       5.6 
b        D       3.4 
b        E       3.2 
 
