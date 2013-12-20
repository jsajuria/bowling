setwd("~/Dropbox/UCL/PhD/APR paper/oakland")

library(igraph)

oakland1 <- read.graph("week1.net", format=c("pajek"))
oakland2 <- read.graph("week2.net", format=c("pajek"))
oakland3 <- read.graph("week3.net", format=c("pajek"))
oakland4 <- read.graph("week4.net", format=c("pajek"))
oakland5 <- read.graph("week5.net", format=c("pajek"))
oakland6 <- read.graph("week6.net", format=c("pajek"))
oakland7 <- read.graph("week7.net", format=c("pajek"))
oakland8 <- read.graph("week8.net", format=c("pajek"))
oakland9 <- read.graph("week9.net", format=c("pajek"))
oakland10 <- read.graph("week10.net", format=c("pajek"))
oakland11 <- read.graph("week11.net", format=c("pajek"))
oakland12 <- read.graph("week12.net", format=c("pajek"))
oakland13 <- read.graph("week13.net", format=c("pajek"))

oakland1.constraint  <- constraint(oakland1)
oakland2.constraint  <- constraint(oakland2)
oakland3.constraint  <- constraint(oakland3)
oakland4.constraint  <- constraint(oakland4)
oakland5.constraint  <- constraint(oakland5)
oakland6.constraint  <- constraint(oakland6)
oakland7.constraint  <- constraint(oakland7)
oakland8.constraint  <- constraint(oakland8)
oakland9.constraint  <- constraint(oakland9)
oakland10.constraint  <- constraint(oakland10)
oakland11.constraint  <- constraint(oakland11)
oakland12.constraint  <- constraint(oakland12)
oakland13.constraint  <- constraint(oakland13)

oakland.cons <- c(mean(oakland1.constraint, na.rm=T),mean(oakland2.constraint, na.rm=T),mean(oakland3.constraint, na.rm=T),
              mean(oakland4.constraint, na.rm=T),mean(oakland5.constraint, na.rm=T),mean(oakland6.constraint, na.rm=T),
              mean(oakland7.constraint, na.rm=T),mean(oakland8.constraint, na.rm=T),mean(oakland9.constraint, na.rm=T),
              mean(oakland10.constraint, na.rm=T),mean(oakland11.constraint, na.rm=T),mean(oakland12.constraint, na.rm=T),
              mean(oakland13.constraint, na.rm=T))

oakland1.trans <- transitivity(oakland1)
oakland2.trans <- transitivity(oakland2)
oakland3.trans <- transitivity(oakland3)
oakland4.trans <- transitivity(oakland4)
oakland5.trans <- transitivity(oakland5)
oakland6.trans <- transitivity(oakland6)
oakland7.trans <- transitivity(oakland7)
oakland8.trans <- transitivity(oakland8)
oakland9.trans <- transitivity(oakland9)
oakland10.trans  <- transitivity(oakland10)
oakland11.trans  <- transitivity(oakland11)
oakland12.trans  <- transitivity(oakland12)
oakland13.trans  <- transitivity(oakland13)

oakland.trans <- c(oakland1.trans,oakland2.trans,oakland3.trans,oakland4.trans,oakland5.trans,oakland6.trans,
               oakland7.trans,oakland8.trans,oakland9.trans,oakland10.trans,oakland11.trans,oakland12.trans,
               oakland13.trans)

oakland.df <- as.data.frame(cbind("constraint"=oakland.cons,"trans"=oakland.trans, "week"=c(1:13)))
oakland.df$type <- "oakland"


erdos.oakland1 <- replicate(100,simulate.erdos(vcount(oakland1), ecount(oakland1)))
erdos.oakland2 <- replicate(100,simulate.erdos(vcount(oakland2), ecount(oakland2)))
erdos.oakland3 <- replicate(100,simulate.erdos(vcount(oakland3), ecount(oakland3)))
erdos.oakland4 <- replicate(100,simulate.erdos(vcount(oakland4), ecount(oakland4)))
erdos.oakland5 <- replicate(100,simulate.erdos(vcount(oakland5), ecount(oakland5)))
erdos.oakland6 <- replicate(100,simulate.erdos(vcount(oakland6), ecount(oakland6)))
erdos.oakland7 <- replicate(100,simulate.erdos(vcount(oakland7), ecount(oakland7)))
erdos.oakland8 <- replicate(100,simulate.erdos(vcount(oakland8), ecount(oakland8)))
erdos.oakland9 <- replicate(100,simulate.erdos(vcount(oakland9), ecount(oakland9)))
erdos.oakland10 <- replicate(100,simulate.erdos(vcount(oakland10), ecount(oakland10)))
erdos.oakland11 <- replicate(100,simulate.erdos(vcount(oakland11), ecount(oakland11)))
erdos.oakland12 <- replicate(100,simulate.erdos(vcount(oakland12), ecount(oakland12)))
erdos.oakland13 <- replicate(100,simulate.erdos(vcount(oakland13), ecount(oakland13)))

erdos.oakland <- as.data.frame(cbind("constraint"=c(mean(as.numeric(as.data.frame(t(as.data.frame(erdos.oakland1)))$constraint)),
                                                mean(as.numeric(as.data.frame(t(as.data.frame(erdos.oakland2)))$constraint)),
                                                mean(as.numeric(as.data.frame(t(as.data.frame(erdos.oakland3)))$constraint)),
                                                mean(as.numeric(as.data.frame(t(as.data.frame(erdos.oakland4)))$constraint)),
                                                mean(as.numeric(as.data.frame(t(as.data.frame(erdos.oakland5)))$constraint)),
                                                mean(as.numeric(as.data.frame(t(as.data.frame(erdos.oakland6)))$constraint)),
                                                mean(as.numeric(as.data.frame(t(as.data.frame(erdos.oakland7)))$constraint)),
                                                mean(as.numeric(as.data.frame(t(as.data.frame(erdos.oakland8)))$constraint)),
                                                mean(as.numeric(as.data.frame(t(as.data.frame(erdos.oakland9)))$constraint)),
                                                mean(as.numeric(as.data.frame(t(as.data.frame(erdos.oakland10)))$constraint)),
                                                mean(as.numeric(as.data.frame(t(as.data.frame(erdos.oakland11)))$constraint)),
                                                mean(as.numeric(as.data.frame(t(as.data.frame(erdos.oakland12)))$constraint)),
                                                mean(as.numeric(as.data.frame(t(as.data.frame(erdos.oakland13)))$constraint))),   			 
                                 "trans"=c(mean(as.numeric(as.data.frame(t(as.data.frame(erdos.oakland1)))$trans)),
                                           mean(as.numeric(as.data.frame(t(as.data.frame(erdos.oakland2)))$trans)),
                                           mean(as.numeric(as.data.frame(t(as.data.frame(erdos.oakland3)))$trans)),
                                           mean(as.numeric(as.data.frame(t(as.data.frame(erdos.oakland4)))$trans)),
                                           mean(as.numeric(as.data.frame(t(as.data.frame(erdos.oakland5)))$trans)),
                                           mean(as.numeric(as.data.frame(t(as.data.frame(erdos.oakland6)))$trans)),
                                           mean(as.numeric(as.data.frame(t(as.data.frame(erdos.oakland7)))$trans)),
                                           mean(as.numeric(as.data.frame(t(as.data.frame(erdos.oakland8)))$trans)),
                                           mean(as.numeric(as.data.frame(t(as.data.frame(erdos.oakland9)))$trans)),
                                           mean(as.numeric(as.data.frame(t(as.data.frame(erdos.oakland10)))$trans)),
                                           mean(as.numeric(as.data.frame(t(as.data.frame(erdos.oakland11)))$trans)),
                                           mean(as.numeric(as.data.frame(t(as.data.frame(erdos.oakland12)))$trans)),
                                           mean(as.numeric(as.data.frame(t(as.data.frame(erdos.oakland13)))$trans)))))

erdos.oakland$week <- c(1:13)
erdos.oakland$type <- "erdos"

watts.oakland1 <- replicate(100,simulate.watts(oakland1))
watts.oakland2 <- replicate(100,simulate.watts(oakland2))
watts.oakland3 <- replicate(100,simulate.watts(oakland3))
watts.oakland4 <- replicate(100,simulate.watts(oakland4))
watts.oakland5 <- replicate(100,simulate.watts(oakland5))
watts.oakland6 <- replicate(100,simulate.watts(oakland6))
watts.oakland7 <- replicate(100,simulate.watts(oakland7))
watts.oakland8 <- replicate(100,simulate.watts(oakland8))
watts.oakland9 <- replicate(100,simulate.watts(oakland9))
watts.oakland10 <- replicate(100,simulate.watts(oakland10))
watts.oakland11 <- replicate(100,simulate.watts(oakland11))
watts.oakland12 <- replicate(100,simulate.watts(oakland12))
watts.oakland13 <- replicate(100,simulate.watts(oakland13))

watts.oakland <- as.data.frame(cbind("constraint"=c(mean(as.numeric(as.data.frame(t(as.data.frame(watts.oakland1)))$constraint)),
                                                    mean(as.numeric(as.data.frame(t(as.data.frame(watts.oakland2)))$constraint)),
                                                    mean(as.numeric(as.data.frame(t(as.data.frame(watts.oakland3)))$constraint)),
                                                    mean(as.numeric(as.data.frame(t(as.data.frame(watts.oakland4)))$constraint)),
                                                    mean(as.numeric(as.data.frame(t(as.data.frame(watts.oakland5)))$constraint)),
                                                    mean(as.numeric(as.data.frame(t(as.data.frame(watts.oakland6)))$constraint)),
                                                    mean(as.numeric(as.data.frame(t(as.data.frame(watts.oakland7)))$constraint)),
                                                    mean(as.numeric(as.data.frame(t(as.data.frame(watts.oakland8)))$constraint)),
                                                    mean(as.numeric(as.data.frame(t(as.data.frame(watts.oakland9)))$constraint)),
                                                    mean(as.numeric(as.data.frame(t(as.data.frame(watts.oakland10)))$constraint)),
                                                    mean(as.numeric(as.data.frame(t(as.data.frame(watts.oakland11)))$constraint)),
                                                    mean(as.numeric(as.data.frame(t(as.data.frame(watts.oakland12)))$constraint)),
                                                    mean(as.numeric(as.data.frame(t(as.data.frame(watts.oakland13)))$constraint))),       	 
                                     "trans"=c(mean(as.numeric(as.data.frame(t(as.data.frame(watts.oakland1)))$trans)),
                                               mean(as.numeric(as.data.frame(t(as.data.frame(watts.oakland2)))$trans)),
                                               mean(as.numeric(as.data.frame(t(as.data.frame(watts.oakland3)))$trans)),
                                               mean(as.numeric(as.data.frame(t(as.data.frame(watts.oakland4)))$trans)),
                                               mean(as.numeric(as.data.frame(t(as.data.frame(watts.oakland5)))$trans)),
                                               mean(as.numeric(as.data.frame(t(as.data.frame(watts.oakland6)))$trans)),
                                               mean(as.numeric(as.data.frame(t(as.data.frame(watts.oakland7)))$trans)),
                                               mean(as.numeric(as.data.frame(t(as.data.frame(watts.oakland8)))$trans)),
                                               mean(as.numeric(as.data.frame(t(as.data.frame(watts.oakland9)))$trans)),
                                               mean(as.numeric(as.data.frame(t(as.data.frame(watts.oakland10)))$trans)),
                                               mean(as.numeric(as.data.frame(t(as.data.frame(watts.oakland11)))$trans)),
                                               mean(as.numeric(as.data.frame(t(as.data.frame(watts.oakland12)))$trans)),
                                               mean(as.numeric(as.data.frame(t(as.data.frame(watts.oakland13)))$trans)))))
watts.oakland$week <- c(1:13)
watts.oakland$type <- "watts"

oakland.bar1 <- replicate(100, simulate.barabasi(oakland1))
oakland.bar2 <- replicate(100, simulate.barabasi(oakland2))
oakland.bar3 <- replicate(100, simulate.barabasi(oakland3))
oakland.bar4 <- replicate(100, simulate.barabasi(oakland4))
oakland.bar5 <- replicate(100, simulate.barabasi(oakland5))
oakland.bar6 <- replicate(100, simulate.barabasi(oakland6))
oakland.bar7 <- replicate(100, simulate.barabasi(oakland7))
oakland.bar8 <- replicate(100, simulate.barabasi(oakland8))
oakland.bar9 <- replicate(100, simulate.barabasi(oakland9))
oakland.bar10 <- replicate(100, simulate.barabasi(oakland10))
oakland.bar11 <- replicate(100, simulate.barabasi(oakland11))
oakland.bar12 <- replicate(100, simulate.barabasi(oakland12))
oakland.bar13 <- replicate(100, simulate.barabasi(oakland13))

bar.oakland <- as.data.frame(cbind("constraint"=c(mean(as.numeric(as.data.frame(t(as.data.frame(oakland.bar1)))$V1)),
                                              mean(as.numeric(as.data.frame(t(as.data.frame(oakland.bar2)))$V1)),
                                              mean(as.numeric(as.data.frame(t(as.data.frame(oakland.bar3)))$V1)),
                                              mean(as.numeric(as.data.frame(t(as.data.frame(oakland.bar4)))$V1)),
                                              mean(as.numeric(as.data.frame(t(as.data.frame(oakland.bar5)))$V1)),
                                              mean(as.numeric(as.data.frame(t(as.data.frame(oakland.bar6)))$V1)),
                                              mean(as.numeric(as.data.frame(t(as.data.frame(oakland.bar7)))$V1)),
                                              mean(as.numeric(as.data.frame(t(as.data.frame(oakland.bar8)))$V1)),
                                              mean(as.numeric(as.data.frame(t(as.data.frame(oakland.bar9)))$V1)),
                                              mean(as.numeric(as.data.frame(t(as.data.frame(oakland.bar10)))$V1)),
                                              mean(as.numeric(as.data.frame(t(as.data.frame(oakland.bar11)))$V1)),
                                              mean(as.numeric(as.data.frame(t(as.data.frame(oakland.bar12)))$V1)),
                                              mean(as.numeric(as.data.frame(t(as.data.frame(oakland.bar13)))$V1))),          
                               "trans"=c(mean(as.numeric(as.data.frame(t(as.data.frame(oakland.bar1)))$V2)),
                                         mean(as.numeric(as.data.frame(t(as.data.frame(oakland.bar2)))$V2)),
                                         mean(as.numeric(as.data.frame(t(as.data.frame(oakland.bar3)))$V2)),
                                         mean(as.numeric(as.data.frame(t(as.data.frame(oakland.bar4)))$V2)),
                                         mean(as.numeric(as.data.frame(t(as.data.frame(oakland.bar5)))$V2)),
                                         mean(as.numeric(as.data.frame(t(as.data.frame(oakland.bar6)))$V2)),
                                         mean(as.numeric(as.data.frame(t(as.data.frame(oakland.bar7)))$V2)),
                                         mean(as.numeric(as.data.frame(t(as.data.frame(oakland.bar8)))$V2)),
                                         mean(as.numeric(as.data.frame(t(as.data.frame(oakland.bar9)))$V2)),
                                         mean(as.numeric(as.data.frame(t(as.data.frame(oakland.bar10)))$V2)),
                                         mean(as.numeric(as.data.frame(t(as.data.frame(oakland.bar11)))$V2)),
                                         mean(as.numeric(as.data.frame(t(as.data.frame(oakland.bar12)))$V2)),
                                         mean(as.numeric(as.data.frame(t(as.data.frame(oakland.bar13)))$V2)))))
bar.oakland$week <- c(1:13)
bar.oakland$type <- "barabasi"



c_oakland <- rbind(oakland.df,erdos.oakland, watts.oakland, bar.oakland)

library(ggplot2)
library(scales)
library(gridExtra)

bar.oakland

ggplot(c_oakland, aes(week, constraint, color=type)) + geom_smooth(se=F, spam=0.5) +
  geom_point() +
  scale_x_discrete(breaks=c(1:13))