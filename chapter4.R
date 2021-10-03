install.packages("ggplot2")
library(ggplot2)

setwd("/Users/Benlewis/Documents/DataScience/DSUR")
facebookData <- read.delim("FacebookNarcissism.dat", header = TRUE)
examData <- read.delim("ExamAnxiety.dat",header = TRUE)

R version 4.1.0 (2021-05-18) -- "Camp Pontanezen"
Copyright (C) 2021 The R Foundation for Statistical Computing
Platform: x86_64-apple-darwin17.0 (64-bit)

R is free software and comes with ABSOLUTELY NO WARRANTY.
You are welcome to redistribute it under certain conditions.
Type 'license()' or 'licence()' for distribution details.

Natural language support but running in an English locale

R is a collaborative project with many contributors.
Type 'contributors()' for more information and
'citation()' on how to cite R or R packages in publications.

Type 'demo()' for some demos, 'help()' for on-line help, or
'help.start()' for an HTML browser interface to help.
Type 'q()' to quit R.

> install.packages("ggplot2")
trying URL 'https://cran.rstudio.com/bin/macosx/contrib/4.1/ggplot2_3.3.5.tgz'
Content type 'application/x-gzip' length 4125542 bytes (3.9 MB)
==================================================
  downloaded 3.9 MB


The downloaded binary packages are in
/var/folders/33/tkk3956j0kbcj9f4dypw3rrm0000gn/T//Rtmp77dVlG/downloaded_packages
> library(ggplot2)
> setwd("C:/Users/Ben/Documents/DataScience/DSUR")
Error in setwd("C:/Users/Ben/Documents/DataScience/DSUR") : 
  cannot change working directory
> GETWD()
Error in GETWD() : could not find function "GETWD"
> getwd()
[1] "/Users/benlewis"
> etwd("C:/Users/Benlewis/Documents/DataScience/DSUR") 
Error in etwd("C:/Users/Benlewis/Documents/DataScience/DSUR") : 
  could not find function "etwd"
> setwd("C:/Users/Benlewis/Documents/DataScience/DSUR")
Error in setwd("C:/Users/Benlewis/Documents/DataScience/DSUR") : 
  cannot change working directory
> setwd("/Users/Benlewis/Documents/DataScience/DSUR")
> getwd()
[1] "/Users/benlewis/Documents/DataScience/DSUR"
> facebookData <- read.delim("FacebookNarcissism.dat", header = TRUE)
> setwd("/Users/Benlewis/Documents/DataScience/DSUR")
> View(facebookData)
> View(facebookData)
> graph <- ggplot(facebookData, aes(NPQC_R_Total, Rating))
> View(graph)
> graph + geom_point()
> graph + geom_point(shape = 17)
> graph + geom_point(size = 6)
> graph + geom_point(aes(colour = Rating_Type))
> graph + geom_point(aes(colour = Rating_Type), position = "jitter")
> graph + geom_point(aes(shape = Rating_Type), position = "jitter")
> examData <- read.delim("ExamAnxiety.dat",header = TRUE)
> View(graph)
> View(examData)
> scatter <- ggplot(examData, aes(Anxiety, Exam))
> View(scatter)
> scatter + geom_point()
> scatter + geom_point() + labs(x = "Exam Anxiety", y = "Exam Performance %")
> scatter + geom_point() + geom_smooth() + labs(x = "Exam Anxiety", y = "Exam Performance %")
`geom_smooth()` using method = 'loess' and formula 'y ~ x'
> scatter <- ggplot(examData, aes(Anxiety, Exam))
> scatter + geom_point() + geom_smooth(method = "lm", colour = "Red") + labs(x = "Exam Anxiety", y = "Exam Performance %")
`geom_smooth()` using formula 'y ~ x'
> + geom_smooth(method = "lm", se = F)
Error: Cannot use `+.gg()` with a single argument. Did you accidentally put + on a new line?
  Run `rlang::last_error()` to see where the error occurred.
> scatter + geom_smooth(method = "lm", se = F)
`geom_smooth()` using formula 'y ~ x'
> scatter <- ggplot(examData, aes(Anxiety, Exam))
> > scatter + geom_point() + geom_smooth(method = "lm", SE = F) + labs(x = "Exam Anxiety", y = "Exam Performance %")
Error: unexpected '>' in ">"
> scatter + geom_point() + geom_smooth(method = "lm", SE = F) + labs(x = "Exam Anxiety", y = "Exam Performance %")
`geom_smooth()` using formula 'y ~ x'
Warning message:
  Ignoring unknown parameters: SE 
> scatter + geom_point() + geom_smooth(method = "lm", se = F) + labs(x = "Exam Anxiety", y = "Exam Performance %")
`geom_smooth()` using formula 'y ~ x'
> scatter + geom_point() + geom_smooth(method = "lm", alpha = 0.1, fill = "Blue") + labs(x = "Exam Anxiety", y = "Exam Performance %")
`geom_smooth()` using formula 'y ~ x'
> scatter <- ggplot(examData, aes(Anxiety, Exam, colour = Gender))
> scatter + geom_point + geom_smooth(method = "lm")
Error: Can't add `geom_point` to a ggplot object.
Did you forget to add parentheses, as in `geom_point()`?
Run `rlang::last_error()` to see where the error occurred.
> scatter <- ggplot(examData, aes(Anxiety, Exam, colour = Gender))
> scatter + geom_point + geom_smooth(method = "lm")
Error: Can't add `geom_point` to a ggplot object.
Did you forget to add parentheses, as in `geom_point()`?
  Run `rlang::last_error()` to see where the error occurred.
> scatter + geom_point() + geom_smooth(method = "lm")
`geom_smooth()` using formula 'y ~ x'
> scatter + geom_point() + geom_smooth(method = "lm", aes(fill = Gender), alpha = 0.1)
`geom_smooth()` using formula 'y ~ x'
> 
  > + labs(x = "Exam Anxiety", y = "Exam Performance %", colour = "Gender")
Error in +labs(x = "Exam Anxiety", y = "Exam Performance %", colour = "Gender") : 
  invalid argument to unary operator
> + labs(x = "Exam Anxiety", y = "Exam Performance %", colour = "Gender")
Error in +labs(x = "Exam Anxiety", y = "Exam Performance %", colour = "Gender") : 
  invalid argument to unary operator
> scatter + geom_point() + geom_smooth(method = "lm", aes(fill = Gender), alpha = 0.1) + labs(x = "Exam Anxiety", y = "Exam Performance %", colour = "Gender")
`geom_smooth()` using formula 'y ~ x'