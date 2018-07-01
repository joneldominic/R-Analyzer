#Taps
#Problem #4

> library(rJava)
> library(xlsxjars)
> library(xlsx)
> dataDye <- read.xlsx("StatExer_Taps.xlsx", "dye")
> head(dataDye)
  CycleTime Temperature  Operators Score
1      CT40        T300 Operator 1    23
2      CT40        T300 Operator 1    24
3      CT40        T300 Operator 1    25
4      CT50        T300 Operator 1    36
5      CT50        T300 Operator 1    35
6      CT50        T300 Operator 1    36
> anovaDye <- (aov(Score~CycleTime+Temperature+Operators+CycleTime:Temperature+CycleTime:Operators+Temperature:Operators+CycleTime:Temperature:Operators, data = dataDye))
> summary(anovaDye)
                                Df Sum Sq Mean Sq F value   Pr(>F)    
CycleTime                        2  426.3  213.17  61.887 2.24e-12 ***
Temperature                      1   44.5   44.46  12.909  0.00097 ***
Operators                        2  279.0  139.50  40.500 6.11e-10 ***
CycleTime:Temperature            2   68.9   34.46  10.005  0.00035 ***
CycleTime:Operators              4  349.7   87.42  25.379 4.76e-10 ***
Temperature:Operators            2    8.0    4.02   1.167  0.32290    
CycleTime:Temperature:Operators  4   38.4    9.60   2.788  0.04087 *  
Residuals                       36  124.0    3.44                     
---
Signif. codes:  0 ‘***’ 0.001 ‘**’ 0.01 ‘*’ 0.05 ‘.’ 0.1 ‘ ’ 1

