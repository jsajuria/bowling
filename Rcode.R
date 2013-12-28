# Steps to follow 

## Set up working directory for OWS data

setwd("~/OWS")

library(igraph)

## Load the networks

### OWS datasets

ows1a <- read.graph("ows1.net", format=c("pajek"))
ows2a <- read.graph("ows2.net", format=c("pajek"))
ows3 <- read.graph("ows3.net", format=c("pajek"))
ows4 <- read.graph("ows4.net", format=c("pajek"))
ows5 <- read.graph("ows5.net", format=c("pajek"))
ows6 <- read.graph("ows6.net", format=c("pajek"))
ows7 <- read.graph("ows7.net", format=c("pajek"))
ows8 <- read.graph("ows8.net", format=c("pajek"))
ows9 <- read.graph("ows9.net", format=c("pajek"))
ows10 <- read.graph("ows10.net", format=c("pajek"))
ows11 <- read.graph("ows11.net", format=c("pajek"))
ows12 <- read.graph("ows12.net", format=c("pajek"))
ows13 <- read.graph("ows13.net", format=c("pajek"))

ows1.constraint  <- constraint(ows1)
ows2.constraint  <- constraint(ows2)
ows3.constraint  <- constraint(ows3)
ows4.constraint  <- constraint(ows4)
ows5.constraint  <- constraint(ows5)
ows6.constraint  <- constraint(ows6)
ows7.constraint  <- constraint(ows7)
ows8.constraint  <- constraint(ows8)
ows9.constraint  <- constraint(ows9)
ows10.constraint  <- constraint(ows10)
ows11.constraint  <- constraint(ows11)
ows12.constraint  <- constraint(ows12)
ows13.constraint  <- constraint(ows13)

ows.cons <- c(mean(ows1.constraint, na.rm=T),mean(ows2.constraint, na.rm=T),mean(ows3.constraint, na.rm=T),
              mean(ows4.constraint, na.rm=T),mean(ows5.constraint, na.rm=T),mean(ows6.constraint, na.rm=T),
              mean(ows7.constraint, na.rm=T),mean(ows8.constraint, na.rm=T),mean(ows9.constraint, na.rm=T),
              mean(ows10.constraint, na.rm=T),mean(ows11.constraint, na.rm=T),mean(ows12.constraint, na.rm=T),
              mean(ows13.constraint, na.rm=T))

ows1.trans <- transitivity(ows1)
ows2.trans <- transitivity(ows2)
ows3.trans <- transitivity(ows3)
ows4.trans <- transitivity(ows4)
ows5.trans <- transitivity(ows5)
ows6.trans <- transitivity(ows6)
ows7.trans <- transitivity(ows7)
ows8.trans <- transitivity(ows8)
ows9.trans <- transitivity(ows9)
ows10.trans  <- transitivity(ows10)
ows11.trans  <- transitivity(ows11)
ows12.trans  <- transitivity(ows12)
ows13.trans  <- transitivity(ows13)

ows.trans <- c(ows1.trans,ows2.trans,ows3.trans,ows4.trans,ows5.trans,ows6.trans,
              ows7.trans,ows8.trans,ows9.trans,ows10.trans,ows11.trans,ows12.trans,
              ows13.trans)

ows.df <- as.data.frame(cbind("constraint"=ows.cons,"trans"=ows.trans, "week"=c(1:13)))
ows.df$type <- "observed"



### IF datasets
setwd("~/Dropbox/UCL/PhD/APR paper/IF data")

cif1 <- read.graph("week1.net", format=c("pajek"))
cif2 <- read.graph("week2.net", format=c("pajek"))
cif3 <- read.graph("week3.net", format=c("pajek"))
cif4 <- read.graph("week4.net", format=c("pajek"))
cif5 <- read.graph("week5.net", format=c("pajek"))
cif6 <- read.graph("week6.net", format=c("pajek"))
cif7 <- read.graph("week7.net", format=c("pajek"))
cif8 <- read.graph("week8.net", format=c("pajek"))
cif9 <- read.graph("week9.net", format=c("pajek"))
cif10 <- read.graph("week10.net", format=c("pajek"))
cif11 <- read.graph("week11.net", format=c("pajek"))
cif12 <- read.graph("week12.net", format=c("pajek"))
cif13 <- read.graph("week13.net", format=c("pajek"))
cif14 <- read.graph("week14.net", format=c("pajek"))
cif15 <- read.graph("week15.net", format=c("pajek"))
cif16 <- read.graph("week16.net", format=c("pajek"))
cif17 <- read.graph("week17.net", format=c("pajek"))
cif18 <- read.graph("week18.net", format=c("pajek"))
cif19 <- read.graph("week19.net", format=c("pajek"))
cif20 <- read.graph("week20.net", format=c("pajek"))
cif21 <- read.graph("week21.net", format=c("pajek"))
cif22 <- read.graph("week22.net", format=c("pajek"))

cif1.constraint <- constraint(cif1)
cif2.constraint <- constraint(cif2)
cif3.constraint <- constraint(cif3)
cif4.constraint <- constraint(cif4)
cif5.constraint <- constraint(cif5)
cif6.constraint <- constraint(cif6)
cif7.constraint <- constraint(cif7)
cif8.constraint <- constraint(cif8)
cif9.constraint <- constraint(cif9)
cif10.constraint <- constraint(cif10)
cif11.constraint <- constraint(cif11)
cif12.constraint <- constraint(cif12)
cif13.constraint <- constraint(cif13)
cif14.constraint <- constraint(cif14)
cif15.constraint <- constraint(cif15)
cif16.constraint <- constraint(cif16)
cif17.constraint <- constraint(cif17)
cif18.constraint <- constraint(cif18)
cif19.constraint <- constraint(cif19)
cif20.constraint <- constraint(cif20)
cif21.constraint <- constraint(cif21)
cif22.constraint <- constraint(cif22)

cif.cons <- c(mean(cif1.constraint, na.rm=T),mean(cif2.constraint, na.rm=T),mean(cif3.constraint, na.rm=T),
              mean(cif4.constraint, na.rm=T),mean(cif5.constraint, na.rm=T),mean(cif6.constraint, na.rm=T),
              mean(cif7.constraint, na.rm=T),mean(cif8.constraint, na.rm=T),mean(cif9.constraint, na.rm=T),
              mean(cif10.constraint, na.rm=T),mean(cif11.constraint, na.rm=T),mean(cif12.constraint, na.rm=T),
              mean(cif13.constraint, na.rm=T),mean(cif14.constraint, na.rm=T),mean(cif15.constraint, na.rm=T),
              mean(cif16.constraint, na.rm=T),mean(cif17.constraint, na.rm=T),mean(cif18.constraint, na.rm=T),
              mean(cif19.constraint, na.rm=T),mean(cif20.constraint, na.rm=T),mean(cif21.constraint, na.rm=T),
              mean(cif22.constraint, na.rm=T))

cif1.trans <- transitivity(cif1)
cif2.trans <- transitivity(cif2)
cif3.trans <- transitivity(cif3)
cif4.trans <- transitivity(cif4)
cif5.trans <- transitivity(cif5)
cif6.trans <- transitivity(cif6)
cif7.trans <- transitivity(cif7)
cif8.trans <- transitivity(cif8)
cif9.trans <- transitivity(cif9)
cif10.trans <- transitivity(cif10)
cif11.trans <- transitivity(cif11)
cif12.trans <- transitivity(cif12)
cif13.trans <- transitivity(cif13)
cif14.trans <- transitivity(cif14)
cif15.trans <- transitivity(cif15)
cif16.trans <- transitivity(cif16)
cif17.trans <- transitivity(cif17)
cif18.trans <- transitivity(cif18)
cif19.trans <- transitivity(cif19)
cif20.trans <- transitivity(cif20)
cif21.trans <- transitivity(cif21)
cif22.trans <- transitivity(cif22)

cif.trans <- c(cif1.trans,cif2.trans,cif3.trans,cif4.trans,cif5.trans,cif6.trans,
               cif7.trans,cif8.trans,cif9.trans,cif10.trans,cif11.trans,cif12.trans,
               cif13.trans,cif14.trans,cif15.trans,cif16.trans,cif17.trans,cif18.trans,
               cif19.trans,cif20.trans,cif21.trans,cif22.trans)

cif.df <- as.data.frame(cbind("constraint"=cif.cons,"trans"=cif.trans,"week"=c(1:22)))
cif.df$type <- "observed"

### Chile datasets 

chile1 <- read.graph("week1.net", format=c("pajek"))
chile2 <- read.graph("week2.net", format=c("pajek"))
chile3 <- read.graph("week3.net", format=c("pajek"))
chile4 <- read.graph("week4.net", format=c("pajek"))
chile5 <- read.graph("week5.net", format=c("pajek"))
chile6 <- read.graph("week6.net", format=c("pajek"))
chile7 <- read.graph("week7.net", format=c("pajek"))

chile1.constraint  <- constraint(chile1)
chile2.constraint  <- constraint(chile2)
chile3.constraint  <- constraint(chile3)
chile4.constraint  <- constraint(chile4)
chile5.constraint  <- constraint(chile5)
chile6.constraint  <- constraint(chile6)
chile7.constraint  <- constraint(chile7)

chile.cons <- c(mean(chile1.constraint, na.rm=T),mean(chile2.constraint, na.rm=T),mean(chile3.constraint, na.rm=T),
              mean(chile4.constraint, na.rm=T),mean(chile5.constraint, na.rm=T),mean(chile6.constraint, na.rm=T),
              mean(chile7.constraint, na.rm=T))

chile1.trans <- transitivity(chile1)
chile2.trans <- transitivity(chile2)
chile3.trans <- transitivity(chile3)
chile4.trans <- transitivity(chile4)
chile5.trans <- transitivity(chile5)
chile6.trans <- transitivity(chile6)
chile7.trans <- transitivity(chile7)


chile.trans <- c(chile1.trans,chile2.trans,chile3.trans,chile4.trans,chile5.trans,chile6.trans,
               chile7.trans)

chile.df <- as.data.frame(cbind("constraint"=chile.cons,"trans"=chile.trans, "week"=c(1:7)))
chile.df$type <- "observed"


## Function to simulate erdos networks based on degree and transitivity

simulate.erdos <- function(x,y){
  a <- random.graph.game(x, y, type=c('gnm'), directed=TRUE, loops = FALSE)
  with(a,{
    b <- mean(constraint(a), na.rm=T)
    c <- transitivity(a)
    return(list("constraint"=b, "trans"=c))
  })
}

## Simulation of Barabasi models

simulate.barabasi <- function(x){
  a <- barabasi.game(vcount(x), m=sample(1:10,1), directed=TRUE, algorithm=c("psumtree-multiple"))
  with(a,{
    b <- mean(constraint(a), na.rm=T)
    c <- transitivity(a)
    return(list("constraint"=b,"transitivity"=c))
  })
}

## watts

simulate.watts <- function(x){
  a <- watts.strogatz.game(1, vcount(x) ,as.integer(mean(neighborhood.size(x,1),na.rm=T)),0.5)
  with(a,{
    b <- mean(constraint(a), na.rm=T)
    c <- transitivity(a)
    return(list("constraint"=b, "trans"=c))
  })
}

### Create the simulated networks

##Erdos

erdos.ows1 <- replicate(100,simulate.erdos(vcount(ows1), ecount(ows1)))
erdos.ows2 <- replicate(100,simulate.erdos(vcount(ows2), ecount(ows2)))
erdos.ows3 <- replicate(100,simulate.erdos(vcount(ows3), ecount(ows3)))
erdos.ows4 <- replicate(100,simulate.erdos(vcount(ows4), ecount(ows4)))
erdos.ows5 <- replicate(100,simulate.erdos(vcount(ows5), ecount(ows5)))
erdos.ows6 <- replicate(100,simulate.erdos(vcount(ows6), ecount(ows6)))
erdos.ows7 <- replicate(100,simulate.erdos(vcount(ows7), ecount(ows7)))
erdos.ows8 <- replicate(100,simulate.erdos(vcount(ows8), ecount(ows8)))
erdos.ows9 <- replicate(100,simulate.erdos(vcount(ows9), ecount(ows9)))
erdos.ows10 <- replicate(100,simulate.erdos(vcount(ows10), ecount(ows10)))
erdos.ows11 <- replicate(100,simulate.erdos(vcount(ows11), ecount(ows11)))
erdos.ows12 <- replicate(100,simulate.erdos(vcount(ows12), ecount(ows12)))
erdos.ows13 <- replicate(100,simulate.erdos(vcount(ows13), ecount(ows13)))

erdos.ows <- as.data.frame(cbind("constraint"=c(mean(as.numeric(as.data.frame(t(as.data.frame(erdos.ows1)))$constraint)),
                                                mean(as.numeric(as.data.frame(t(as.data.frame(erdos.ows2)))$constraint)),
                                                mean(as.numeric(as.data.frame(t(as.data.frame(erdos.ows3)))$constraint)),
                                                mean(as.numeric(as.data.frame(t(as.data.frame(erdos.ows4)))$constraint)),
                                                mean(as.numeric(as.data.frame(t(as.data.frame(erdos.ows5)))$constraint)),
                                                mean(as.numeric(as.data.frame(t(as.data.frame(erdos.ows6)))$constraint)),
                                                mean(as.numeric(as.data.frame(t(as.data.frame(erdos.ows7)))$constraint)),
                                                mean(as.numeric(as.data.frame(t(as.data.frame(erdos.ows8)))$constraint)),
                                                mean(as.numeric(as.data.frame(t(as.data.frame(erdos.ows9)))$constraint)),
                                                mean(as.numeric(as.data.frame(t(as.data.frame(erdos.ows10)))$constraint)),
                                                mean(as.numeric(as.data.frame(t(as.data.frame(erdos.ows11)))$constraint)),
                                                mean(as.numeric(as.data.frame(t(as.data.frame(erdos.ows12)))$constraint)),
                                                mean(as.numeric(as.data.frame(t(as.data.frame(erdos.ows13)))$constraint))), 				 
                                 "trans"=c(mean(as.numeric(as.data.frame(t(as.data.frame(erdos.ows1)))$trans)),
                                            mean(as.numeric(as.data.frame(t(as.data.frame(erdos.ows2)))$trans)),
                                            mean(as.numeric(as.data.frame(t(as.data.frame(erdos.ows3)))$trans)),
                                            mean(as.numeric(as.data.frame(t(as.data.frame(erdos.ows4)))$trans)),
                                            mean(as.numeric(as.data.frame(t(as.data.frame(erdos.ows5)))$trans)),
                                            mean(as.numeric(as.data.frame(t(as.data.frame(erdos.ows6)))$trans)),
                                            mean(as.numeric(as.data.frame(t(as.data.frame(erdos.ows7)))$trans)),
                                            mean(as.numeric(as.data.frame(t(as.data.frame(erdos.ows8)))$trans)),
                                            mean(as.numeric(as.data.frame(t(as.data.frame(erdos.ows9)))$trans)),
                                            mean(as.numeric(as.data.frame(t(as.data.frame(erdos.ows10)))$trans)),
                                            mean(as.numeric(as.data.frame(t(as.data.frame(erdos.ows11)))$trans)),
                                            mean(as.numeric(as.data.frame(t(as.data.frame(erdos.ows12)))$trans)),
                                            mean(as.numeric(as.data.frame(t(as.data.frame(erdos.ows13)))$trans)))))

erdos.ows$week <- c(1:13)
erdos.ows$type <- "erdos"

erdos.cif1 <- replicate(100,simulate.erdos(vcount(cif1), ecount(cif1)))
erdos.cif2 <- replicate(100,simulate.erdos(vcount(cif2), ecount(cif2)))
erdos.cif3 <- replicate(100,simulate.erdos(vcount(cif3), ecount(cif3)))
erdos.cif4 <- replicate(100,simulate.erdos(vcount(cif4), ecount(cif4)))
erdos.cif5 <- replicate(100,simulate.erdos(vcount(cif5), ecount(cif5)))
erdos.cif6 <- replicate(100,simulate.erdos(vcount(cif6), ecount(cif6)))
erdos.cif7 <- replicate(100,simulate.erdos(vcount(cif7), ecount(cif7)))
erdos.cif8 <- replicate(100,simulate.erdos(vcount(cif8), ecount(cif8)))
erdos.cif9 <- replicate(100,simulate.erdos(vcount(cif9), ecount(cif9)))
erdos.cif10 <- replicate(100,simulate.erdos(vcount(cif10), ecount(cif10)))
erdos.cif11 <- replicate(100,simulate.erdos(vcount(cif11), ecount(cif11)))
erdos.cif12 <- replicate(100,simulate.erdos(vcount(cif12), ecount(cif12)))
erdos.cif13 <- replicate(100,simulate.erdos(vcount(cif13), ecount(cif13)))
erdos.cif14 <- replicate(100,simulate.erdos(vcount(cif14), ecount(cif14)))
erdos.cif15 <- replicate(100,simulate.erdos(vcount(cif15), ecount(cif15)))
erdos.cif16 <- replicate(100,simulate.erdos(vcount(cif16), ecount(cif16)))
erdos.cif17 <- replicate(100,simulate.erdos(vcount(cif17), ecount(cif17)))
erdos.cif18 <- replicate(100,simulate.erdos(vcount(cif18), ecount(cif18)))
erdos.cif19 <- replicate(100,simulate.erdos(vcount(cif19), ecount(cif19)))
erdos.cif20 <- replicate(100,simulate.erdos(vcount(cif20), ecount(cif20)))
erdos.cif21 <- replicate(100,simulate.erdos(vcount(cif21), ecount(cif21)))
erdos.cif22 <- replicate(100,simulate.erdos(vcount(cif22), ecount(cif22)))

erdos.cif <- as.data.frame(cbind("constraint"=c(mean(as.numeric(as.data.frame(t(as.data.frame(erdos.cif1)))$constraint)),
                                                mean(as.numeric(as.data.frame(t(as.data.frame(erdos.cif2)))$constraint)),
                                                mean(as.numeric(as.data.frame(t(as.data.frame(erdos.cif3)))$constraint)),
                                                mean(as.numeric(as.data.frame(t(as.data.frame(erdos.cif4)))$constraint)),
                                                mean(as.numeric(as.data.frame(t(as.data.frame(erdos.cif5)))$constraint)),
                                                mean(as.numeric(as.data.frame(t(as.data.frame(erdos.cif6)))$constraint)),
                                                mean(as.numeric(as.data.frame(t(as.data.frame(erdos.cif7)))$constraint)),
                                                mean(as.numeric(as.data.frame(t(as.data.frame(erdos.cif8)))$constraint)),
                                                mean(as.numeric(as.data.frame(t(as.data.frame(erdos.cif9)))$constraint)),
                                                mean(as.numeric(as.data.frame(t(as.data.frame(erdos.cif10)))$constraint)),
                                                mean(as.numeric(as.data.frame(t(as.data.frame(erdos.cif11)))$constraint)),
                                                mean(as.numeric(as.data.frame(t(as.data.frame(erdos.cif12)))$constraint)),
                                                mean(as.numeric(as.data.frame(t(as.data.frame(erdos.cif13)))$constraint)),
                                                mean(as.numeric(as.data.frame(t(as.data.frame(erdos.cif14)))$constraint)),
                                                mean(as.numeric(as.data.frame(t(as.data.frame(erdos.cif15)))$constraint)),
                                                mean(as.numeric(as.data.frame(t(as.data.frame(erdos.cif16)))$constraint)),
                                                mean(as.numeric(as.data.frame(t(as.data.frame(erdos.cif17)))$constraint)),
                                                mean(as.numeric(as.data.frame(t(as.data.frame(erdos.cif18)))$constraint)),
                                                mean(as.numeric(as.data.frame(t(as.data.frame(erdos.cif19)))$constraint)),
                                                mean(as.numeric(as.data.frame(t(as.data.frame(erdos.cif20)))$constraint)),
                                                mean(as.numeric(as.data.frame(t(as.data.frame(erdos.cif21)))$constraint)),
                                                mean(as.numeric(as.data.frame(t(as.data.frame(erdos.cif22)))$constraint))), 				 
                                 "trans"=c(mean(as.numeric(as.data.frame(t(as.data.frame(erdos.cif1)))$trans)),
                                           mean(as.numeric(as.data.frame(t(as.data.frame(erdos.cif2)))$trans)),
                                           mean(as.numeric(as.data.frame(t(as.data.frame(erdos.cif3)))$trans)),
                                           mean(as.numeric(as.data.frame(t(as.data.frame(erdos.cif4)))$trans)),
                                           mean(as.numeric(as.data.frame(t(as.data.frame(erdos.cif5)))$trans)),
                                           mean(as.numeric(as.data.frame(t(as.data.frame(erdos.cif6)))$trans)),
                                           mean(as.numeric(as.data.frame(t(as.data.frame(erdos.cif7)))$trans)),
                                           mean(as.numeric(as.data.frame(t(as.data.frame(erdos.cif8)))$trans)),
                                           mean(as.numeric(as.data.frame(t(as.data.frame(erdos.cif9)))$trans)),
                                           mean(as.numeric(as.data.frame(t(as.data.frame(erdos.cif10)))$trans)),
                                           mean(as.numeric(as.data.frame(t(as.data.frame(erdos.cif11)))$trans)),
                                           mean(as.numeric(as.data.frame(t(as.data.frame(erdos.cif12)))$trans)),
                                           mean(as.numeric(as.data.frame(t(as.data.frame(erdos.cif13)))$trans)),
                                           mean(as.numeric(as.data.frame(t(as.data.frame(erdos.cif14)))$trans)),
                                           mean(as.numeric(as.data.frame(t(as.data.frame(erdos.cif15)))$trans)),
                                           mean(as.numeric(as.data.frame(t(as.data.frame(erdos.cif16)))$trans)),
                                           mean(as.numeric(as.data.frame(t(as.data.frame(erdos.cif17)))$trans)),
                                           mean(as.numeric(as.data.frame(t(as.data.frame(erdos.cif18)))$trans)),
                                           mean(as.numeric(as.data.frame(t(as.data.frame(erdos.cif19)))$trans)),
                                           mean(as.numeric(as.data.frame(t(as.data.frame(erdos.cif20)))$trans)),
                                           mean(as.numeric(as.data.frame(t(as.data.frame(erdos.cif21)))$trans)),
                                           mean(as.numeric(as.data.frame(t(as.data.frame(erdos.cif22)))$trans)))))

erdos.cif$week <- c(1:22)
erdos.cif$type <- "erdos"

erdos.chile1 <- replicate(100,simulate.erdos(vcount(chile1), ecount(chile1)))
erdos.chile2 <- replicate(100,simulate.erdos(vcount(chile2), ecount(chile2)))
erdos.chile3 <- replicate(100,simulate.erdos(vcount(chile3), ecount(chile3)))
erdos.chile4 <- replicate(100,simulate.erdos(vcount(chile4), ecount(chile4)))
erdos.chile5 <- replicate(100,simulate.erdos(vcount(chile5), ecount(chile5)))
erdos.chile6 <- replicate(100,simulate.erdos(vcount(chile6), ecount(chile6)))
erdos.chile7 <- replicate(100,simulate.erdos(vcount(chile7), ecount(chile7)))

erdos.chile <- as.data.frame(cbind("constraint"=c(mean(as.numeric(as.data.frame(t(as.data.frame(erdos.chile1)))$constraint)),
                                                mean(as.numeric(as.data.frame(t(as.data.frame(erdos.chile2)))$constraint)),
                                                mean(as.numeric(as.data.frame(t(as.data.frame(erdos.chile3)))$constraint)),
                                                mean(as.numeric(as.data.frame(t(as.data.frame(erdos.chile4)))$constraint)),
                                                mean(as.numeric(as.data.frame(t(as.data.frame(erdos.chile5)))$constraint)),
                                                mean(as.numeric(as.data.frame(t(as.data.frame(erdos.chile6)))$constraint)),
                                                mean(as.numeric(as.data.frame(t(as.data.frame(erdos.chile7)))$constraint))),   			 
                                 "trans"=c(mean(as.numeric(as.data.frame(t(as.data.frame(erdos.chile1)))$trans)),
                                           mean(as.numeric(as.data.frame(t(as.data.frame(erdos.chile2)))$trans)),
                                           mean(as.numeric(as.data.frame(t(as.data.frame(erdos.chile3)))$trans)),
                                           mean(as.numeric(as.data.frame(t(as.data.frame(erdos.chile4)))$trans)),
                                           mean(as.numeric(as.data.frame(t(as.data.frame(erdos.chile5)))$trans)),
                                           mean(as.numeric(as.data.frame(t(as.data.frame(erdos.chile6)))$trans)),
                                           mean(as.numeric(as.data.frame(t(as.data.frame(erdos.chile7)))$trans)))))

erdos.chile$week <- c(1:7)
erdos.chile$type <- "erdos"


## Watts

watts.ows1 <- replicate(100,simulate.watts(ows1))
watts.ows2 <- replicate(100,simulate.watts(ows2))
watts.ows3 <- replicate(100,simulate.watts(ows3))
watts.ows4 <- replicate(100,simulate.watts(ows4))
watts.ows5 <- replicate(100,simulate.watts(ows5))
watts.ows6 <- replicate(100,simulate.watts(ows6))
watts.ows7 <- replicate(100,simulate.watts(ows7))
watts.ows8 <- replicate(100,simulate.watts(ows8))
watts.ows9 <- replicate(100,simulate.watts(ows9))
watts.ows10 <- replicate(100,simulate.watts(ows10))
watts.ows11 <- replicate(100,simulate.watts(ows11))
watts.ows12 <- replicate(100,simulate.watts(ows12))
watts.ows13 <- replicate(100,simulate.watts(ows13))

watts.ows <- as.data.frame(cbind("constraint"=c(mean(as.numeric(as.data.frame(t(as.data.frame(watts.ows1)))$constraint)),
                                                mean(as.numeric(as.data.frame(t(as.data.frame(watts.ows2)))$constraint)),
                                                mean(as.numeric(as.data.frame(t(as.data.frame(watts.ows3)))$constraint)),
                                                mean(as.numeric(as.data.frame(t(as.data.frame(watts.ows4)))$constraint)),
                                                mean(as.numeric(as.data.frame(t(as.data.frame(watts.ows5)))$constraint)),
                                                mean(as.numeric(as.data.frame(t(as.data.frame(watts.ows6)))$constraint)),
                                                mean(as.numeric(as.data.frame(t(as.data.frame(watts.ows7)))$constraint)),
                                                mean(as.numeric(as.data.frame(t(as.data.frame(watts.ows8)))$constraint)),
                                                mean(as.numeric(as.data.frame(t(as.data.frame(watts.ows9)))$constraint)),
                                                mean(as.numeric(as.data.frame(t(as.data.frame(watts.ows10)))$constraint)),
                                                mean(as.numeric(as.data.frame(t(as.data.frame(watts.ows11)))$constraint)),
                                                mean(as.numeric(as.data.frame(t(as.data.frame(watts.ows12)))$constraint)),
                                                mean(as.numeric(as.data.frame(t(as.data.frame(watts.ows13)))$constraint))),   			 
                                 "trans"=c(mean(as.numeric(as.data.frame(t(as.data.frame(watts.ows1)))$trans)),
                                           mean(as.numeric(as.data.frame(t(as.data.frame(watts.ows2)))$trans)),
                                           mean(as.numeric(as.data.frame(t(as.data.frame(watts.ows3)))$trans)),
                                           mean(as.numeric(as.data.frame(t(as.data.frame(watts.ows4)))$trans)),
                                           mean(as.numeric(as.data.frame(t(as.data.frame(watts.ows5)))$trans)),
                                           mean(as.numeric(as.data.frame(t(as.data.frame(watts.ows6)))$trans)),
                                           mean(as.numeric(as.data.frame(t(as.data.frame(watts.ows7)))$trans)),
                                           mean(as.numeric(as.data.frame(t(as.data.frame(watts.ows8)))$trans)),
                                           mean(as.numeric(as.data.frame(t(as.data.frame(watts.ows9)))$trans)),
                                           mean(as.numeric(as.data.frame(t(as.data.frame(watts.ows10)))$trans)),
                                           mean(as.numeric(as.data.frame(t(as.data.frame(watts.ows11)))$trans)),
                                           mean(as.numeric(as.data.frame(t(as.data.frame(watts.ows12)))$trans)),
                                           mean(as.numeric(as.data.frame(t(as.data.frame(watts.ows13)))$trans)))))
watts.ows$week <- c(1:13)
watts.ows$type <- "watts"

watts.cif1 <- replicate(100,simulate.watts(cif1))
watts.cif2 <- replicate(100,simulate.watts(cif2))
watts.cif3 <- replicate(100,simulate.watts(cif3))
watts.cif4 <- replicate(100,simulate.watts(cif4))
watts.cif5 <- replicate(100,simulate.watts(cif5))
watts.cif6 <- replicate(100,simulate.watts(cif6))
watts.cif7 <- replicate(100,simulate.watts(cif7))
watts.cif8 <- replicate(100,simulate.watts(cif8))
watts.cif9 <- replicate(100,simulate.watts(cif9))
watts.cif10 <- replicate(100,simulate.watts(cif10))
watts.cif11 <- replicate(100,simulate.watts(cif11))
watts.cif12 <- replicate(100,simulate.watts(cif12))
watts.cif13 <- replicate(100,simulate.watts(cif13))
watts.cif14 <- replicate(100,simulate.watts(cif14))
watts.cif15 <- replicate(100,simulate.watts(cif15))
watts.cif16 <- replicate(100,simulate.watts(cif16))
watts.cif17 <- replicate(100,simulate.watts(cif17))
watts.cif18 <- replicate(100,simulate.watts(cif18))
watts.cif19 <- replicate(100,simulate.watts(cif19))
watts.cif20 <- replicate(100,simulate.watts(cif20))
watts.cif21 <- replicate(100,simulate.watts(cif21))
watts.cif22 <- replicate(100,simulate.watts(cif22))

watts.cif <- as.data.frame(cbind("constraint"=c(mean(as.numeric(as.data.frame(t(as.data.frame(watts.cif1)))$constraint)),
                                                mean(as.numeric(as.data.frame(t(as.data.frame(watts.cif2)))$constraint)),
                                                mean(as.numeric(as.data.frame(t(as.data.frame(watts.cif3)))$constraint)),
                                                mean(as.numeric(as.data.frame(t(as.data.frame(watts.cif4)))$constraint)),
                                                mean(as.numeric(as.data.frame(t(as.data.frame(watts.cif5)))$constraint)),
                                                mean(as.numeric(as.data.frame(t(as.data.frame(watts.cif6)))$constraint)),
                                                mean(as.numeric(as.data.frame(t(as.data.frame(watts.cif7)))$constraint)),
                                                mean(as.numeric(as.data.frame(t(as.data.frame(watts.cif8)))$constraint)),
                                                mean(as.numeric(as.data.frame(t(as.data.frame(watts.cif9)))$constraint)),
                                                mean(as.numeric(as.data.frame(t(as.data.frame(watts.cif10)))$constraint)),
                                                mean(as.numeric(as.data.frame(t(as.data.frame(watts.cif11)))$constraint)),
                                                mean(as.numeric(as.data.frame(t(as.data.frame(watts.cif12)))$constraint)),
                                                mean(as.numeric(as.data.frame(t(as.data.frame(watts.cif13)))$constraint)),
                                                mean(as.numeric(as.data.frame(t(as.data.frame(watts.cif14)))$constraint)),
                                                mean(as.numeric(as.data.frame(t(as.data.frame(watts.cif15)))$constraint)),
                                                mean(as.numeric(as.data.frame(t(as.data.frame(watts.cif16)))$constraint)),
                                                mean(as.numeric(as.data.frame(t(as.data.frame(watts.cif17)))$constraint)),
                                                mean(as.numeric(as.data.frame(t(as.data.frame(watts.cif18)))$constraint)),
                                                mean(as.numeric(as.data.frame(t(as.data.frame(watts.cif19)))$constraint)),
                                                mean(as.numeric(as.data.frame(t(as.data.frame(watts.cif20)))$constraint)),
                                                mean(as.numeric(as.data.frame(t(as.data.frame(watts.cif21)))$constraint)),
                                                mean(as.numeric(as.data.frame(t(as.data.frame(watts.cif22)))$constraint))),   			 
                                 "trans"=c(mean(as.numeric(as.data.frame(t(as.data.frame(watts.cif1)))$trans)),
                                           mean(as.numeric(as.data.frame(t(as.data.frame(watts.cif2)))$trans)),
                                           mean(as.numeric(as.data.frame(t(as.data.frame(watts.cif3)))$trans)),
                                           mean(as.numeric(as.data.frame(t(as.data.frame(watts.cif4)))$trans)),
                                           mean(as.numeric(as.data.frame(t(as.data.frame(watts.cif5)))$trans)),
                                           mean(as.numeric(as.data.frame(t(as.data.frame(watts.cif6)))$trans)),
                                           mean(as.numeric(as.data.frame(t(as.data.frame(watts.cif7)))$trans)),
                                           mean(as.numeric(as.data.frame(t(as.data.frame(watts.cif8)))$trans)),
                                           mean(as.numeric(as.data.frame(t(as.data.frame(watts.cif9)))$trans)),
                                           mean(as.numeric(as.data.frame(t(as.data.frame(watts.cif10)))$trans)),
                                           mean(as.numeric(as.data.frame(t(as.data.frame(watts.cif11)))$trans)),
                                           mean(as.numeric(as.data.frame(t(as.data.frame(watts.cif12)))$trans)),
                                           mean(as.numeric(as.data.frame(t(as.data.frame(watts.cif13)))$trans)),
                                           mean(as.numeric(as.data.frame(t(as.data.frame(watts.cif14)))$trans)),
                                           mean(as.numeric(as.data.frame(t(as.data.frame(watts.cif15)))$trans)),
                                           mean(as.numeric(as.data.frame(t(as.data.frame(watts.cif16)))$trans)),
                                           mean(as.numeric(as.data.frame(t(as.data.frame(watts.cif17)))$trans)),
                                           mean(as.numeric(as.data.frame(t(as.data.frame(watts.cif18)))$trans)),
                                           mean(as.numeric(as.data.frame(t(as.data.frame(watts.cif19)))$trans)),
                                           mean(as.numeric(as.data.frame(t(as.data.frame(watts.cif20)))$trans)),
                                           mean(as.numeric(as.data.frame(t(as.data.frame(watts.cif21)))$trans)),
                                           mean(as.numeric(as.data.frame(t(as.data.frame(watts.cif22)))$trans)))))

watts.cif$week <- c(1:22)
watts.cif$type <- "watts"

watts.chile1 <- replicate(100,simulate.watts(chile1))
watts.chile2 <- replicate(100,simulate.watts(chile2))
watts.chile3 <- replicate(100,simulate.watts(chile3))
watts.chile4 <- replicate(100,simulate.watts(chile4))
watts.chile5 <- replicate(100,simulate.watts(chile5))
watts.chile6 <- replicate(100,simulate.watts(chile6))
watts.chile7 <- replicate(100,simulate.watts(chile7))


watts.chile <- as.data.frame(cbind("constraint"=c(mean(as.numeric(as.data.frame(t(as.data.frame(watts.chile1)))$constraint)),
                                                mean(as.numeric(as.data.frame(t(as.data.frame(watts.chile2)))$constraint)),
                                                mean(as.numeric(as.data.frame(t(as.data.frame(watts.chile3)))$constraint)),
                                                mean(as.numeric(as.data.frame(t(as.data.frame(watts.chile4)))$constraint)),
                                                mean(as.numeric(as.data.frame(t(as.data.frame(watts.chile5)))$constraint)),
                                                mean(as.numeric(as.data.frame(t(as.data.frame(watts.chile6)))$constraint)),
                                                mean(as.numeric(as.data.frame(t(as.data.frame(watts.chile7)))$constraint))),     		 
                                 "trans"=c(mean(as.numeric(as.data.frame(t(as.data.frame(watts.chile1)))$trans)),
                                           mean(as.numeric(as.data.frame(t(as.data.frame(watts.chile2)))$trans)),
                                           mean(as.numeric(as.data.frame(t(as.data.frame(watts.chile3)))$trans)),
                                           mean(as.numeric(as.data.frame(t(as.data.frame(watts.chile4)))$trans)),
                                           mean(as.numeric(as.data.frame(t(as.data.frame(watts.chile5)))$trans)),
                                           mean(as.numeric(as.data.frame(t(as.data.frame(watts.chile6)))$trans)),
                                           mean(as.numeric(as.data.frame(t(as.data.frame(watts.chile7)))$trans)))))
watts.chile$week <- c(1:7)
watts.chile$type <- "watts"

#Barabasi

ows.bar1 <- replicate(100, simulate.barabasi(ows1))
ows.bar2 <- replicate(100, simulate.barabasi(ows2))
ows.bar3 <- replicate(100, simulate.barabasi(ows3))
ows.bar4 <- replicate(100, simulate.barabasi(ows4))
ows.bar5 <- replicate(100, simulate.barabasi(ows5))
ows.bar6 <- replicate(100, simulate.barabasi(ows6))
ows.bar7 <- replicate(100, simulate.barabasi(ows7))
ows.bar8 <- replicate(100, simulate.barabasi(ows8))
ows.bar9 <- replicate(100, simulate.barabasi(ows9))
ows.bar10 <- replicate(100, simulate.barabasi(ows10))
ows.bar11 <- replicate(100, simulate.barabasi(ows11))
ows.bar12 <- replicate(100, simulate.barabasi(ows12))
ows.bar13 <- replicate(100, simulate.barabasi(ows13))

bar.ows <- as.data.frame(cbind("constraint"=c(mean(as.numeric(as.data.frame(t(as.data.frame(ows.bar1)))$constraint)),
                                              mean(as.numeric(as.data.frame(t(as.data.frame(ows.bar2)))$constraint)),
                                              mean(as.numeric(as.data.frame(t(as.data.frame(ows.bar3)))$constraint)),
                                              mean(as.numeric(as.data.frame(t(as.data.frame(ows.bar4)))$constraint)),
                                              mean(as.numeric(as.data.frame(t(as.data.frame(ows.bar5)))$constraint)),
                                              mean(as.numeric(as.data.frame(t(as.data.frame(ows.bar6)))$constraint)),
                                              mean(as.numeric(as.data.frame(t(as.data.frame(ows.bar7)))$constraint)),
                                              mean(as.numeric(as.data.frame(t(as.data.frame(ows.bar8)))$constraint)),
                                              mean(as.numeric(as.data.frame(t(as.data.frame(ows.bar9)))$constraint)),
                                              mean(as.numeric(as.data.frame(t(as.data.frame(ows.bar10)))$constraint)),
                                              mean(as.numeric(as.data.frame(t(as.data.frame(ows.bar11)))$constraint)),
                                              mean(as.numeric(as.data.frame(t(as.data.frame(ows.bar12)))$constraint)),
                                              mean(as.numeric(as.data.frame(t(as.data.frame(ows.bar13)))$constraint))),       	 
                               "trans"=c(mean(as.numeric(as.data.frame(t(as.data.frame(ows.bar1)))$trans)),
                                         mean(as.numeric(as.data.frame(t(as.data.frame(ows.bar2)))$trans)),
                                         mean(as.numeric(as.data.frame(t(as.data.frame(ows.bar3)))$trans)),
                                         mean(as.numeric(as.data.frame(t(as.data.frame(ows.bar4)))$trans)),
                                         mean(as.numeric(as.data.frame(t(as.data.frame(ows.bar5)))$trans)),
                                         mean(as.numeric(as.data.frame(t(as.data.frame(ows.bar6)))$trans)),
                                         mean(as.numeric(as.data.frame(t(as.data.frame(ows.bar7)))$trans)),
                                         mean(as.numeric(as.data.frame(t(as.data.frame(ows.bar8)))$trans)),
                                         mean(as.numeric(as.data.frame(t(as.data.frame(ows.bar9)))$trans)),
                                         mean(as.numeric(as.data.frame(t(as.data.frame(ows.bar10)))$trans)),
                                         mean(as.numeric(as.data.frame(t(as.data.frame(ows.bar11)))$trans)),
                                         mean(as.numeric(as.data.frame(t(as.data.frame(ows.bar12)))$trans)),
                                         mean(as.numeric(as.data.frame(t(as.data.frame(ows.bar13)))$trans)))))
bar.ows$week <- c(1:13)
bar.ows$type <- "barabasi"

cif.bar1 <- replicate(100, simulate.barabasi(cif1))
cif.bar2 <- replicate(100, simulate.barabasi(cif2))
cif.bar3 <- replicate(100, simulate.barabasi(cif3))
cif.bar4 <- replicate(100, simulate.barabasi(cif4))
cif.bar5 <- replicate(100, simulate.barabasi(cif5))
cif.bar6 <- replicate(100, simulate.barabasi(cif6))
cif.bar7 <- replicate(100, simulate.barabasi(cif7))
cif.bar8 <- replicate(100, simulate.barabasi(cif8))
cif.bar9 <- replicate(100, simulate.barabasi(cif9))
cif.bar10 <- replicate(100, simulate.barabasi(cif10))
cif.bar11 <- replicate(100, simulate.barabasi(cif11))
cif.bar12 <- replicate(100, simulate.barabasi(cif12))
cif.bar13 <- replicate(100, simulate.barabasi(cif13))
cif.bar14 <- replicate(100, simulate.barabasi(cif14))
cif.bar15 <- replicate(100, simulate.barabasi(cif15))
cif.bar16 <- replicate(100, simulate.barabasi(cif16))
cif.bar17 <- replicate(100, simulate.barabasi(cif17))
cif.bar18 <- replicate(100, simulate.barabasi(cif18))
cif.bar19 <- replicate(100, simulate.barabasi(cif19))
cif.bar20 <- replicate(100, simulate.barabasi(cif20))
cif.bar21 <- replicate(100, simulate.barabasi(cif21))
cif.bar22 <- replicate(100, simulate.barabasi(cif22))

bar.cif <- as.data.frame(cbind("constraint"=c(mean(as.numeric(as.data.frame(t(as.data.frame(cif.bar1)))$constraint)),
                                              mean(as.numeric(as.data.frame(t(as.data.frame(cif.bar2)))$constraint)),
                                              mean(as.numeric(as.data.frame(t(as.data.frame(cif.bar3)))$constraint)),
                                              mean(as.numeric(as.data.frame(t(as.data.frame(cif.bar4)))$constraint)),
                                              mean(as.numeric(as.data.frame(t(as.data.frame(cif.bar5)))$constraint)),
                                              mean(as.numeric(as.data.frame(t(as.data.frame(cif.bar6)))$constraint)),
                                              mean(as.numeric(as.data.frame(t(as.data.frame(cif.bar7)))$constraint)),
                                              mean(as.numeric(as.data.frame(t(as.data.frame(cif.bar8)))$constraint)),
                                              mean(as.numeric(as.data.frame(t(as.data.frame(cif.bar9)))$constraint)),
                                              mean(as.numeric(as.data.frame(t(as.data.frame(cif.bar10)))$constraint)),
                                              mean(as.numeric(as.data.frame(t(as.data.frame(cif.bar11)))$constraint)),
                                              mean(as.numeric(as.data.frame(t(as.data.frame(cif.bar12)))$constraint)),
                                              mean(as.numeric(as.data.frame(t(as.data.frame(cif.bar13)))$constraint)),
                                              mean(as.numeric(as.data.frame(t(as.data.frame(cif.bar14)))$constraint)),
                                              mean(as.numeric(as.data.frame(t(as.data.frame(cif.bar15)))$constraint)),
                                              mean(as.numeric(as.data.frame(t(as.data.frame(cif.bar16)))$constraint)),
                                              mean(as.numeric(as.data.frame(t(as.data.frame(cif.bar17)))$constraint)),
                                              mean(as.numeric(as.data.frame(t(as.data.frame(cif.bar18)))$constraint)),
                                              mean(as.numeric(as.data.frame(t(as.data.frame(cif.bar19)))$constraint)),
                                              mean(as.numeric(as.data.frame(t(as.data.frame(cif.bar20)))$constraint)),
                                              mean(as.numeric(as.data.frame(t(as.data.frame(cif.bar21)))$constraint)),
                                              mean(as.numeric(as.data.frame(t(as.data.frame(cif.bar22)))$constraint))),     		 
                               "trans"=c(mean(as.numeric(as.data.frame(t(as.data.frame(cif.bar1)))$trans)),
                                         mean(as.numeric(as.data.frame(t(as.data.frame(cif.bar2)))$trans)),
                                         mean(as.numeric(as.data.frame(t(as.data.frame(cif.bar3)))$trans)),
                                         mean(as.numeric(as.data.frame(t(as.data.frame(cif.bar4)))$trans)),
                                         mean(as.numeric(as.data.frame(t(as.data.frame(cif.bar5)))$trans)),
                                         mean(as.numeric(as.data.frame(t(as.data.frame(cif.bar6)))$trans)),
                                         mean(as.numeric(as.data.frame(t(as.data.frame(cif.bar7)))$trans)),
                                         mean(as.numeric(as.data.frame(t(as.data.frame(cif.bar8)))$trans)),
                                         mean(as.numeric(as.data.frame(t(as.data.frame(cif.bar9)))$trans)),
                                         mean(as.numeric(as.data.frame(t(as.data.frame(cif.bar10)))$trans)),
                                         mean(as.numeric(as.data.frame(t(as.data.frame(cif.bar11)))$trans)),
                                         mean(as.numeric(as.data.frame(t(as.data.frame(cif.bar12)))$trans)),
                                         mean(as.numeric(as.data.frame(t(as.data.frame(cif.bar13)))$trans)),
                                         mean(as.numeric(as.data.frame(t(as.data.frame(cif.bar14)))$trans)),
                                         mean(as.numeric(as.data.frame(t(as.data.frame(cif.bar15)))$trans)),
                                         mean(as.numeric(as.data.frame(t(as.data.frame(cif.bar16)))$trans)),
                                         mean(as.numeric(as.data.frame(t(as.data.frame(cif.bar17)))$trans)),
                                         mean(as.numeric(as.data.frame(t(as.data.frame(cif.bar18)))$trans)),
                                         mean(as.numeric(as.data.frame(t(as.data.frame(cif.bar19)))$trans)),
                                         mean(as.numeric(as.data.frame(t(as.data.frame(cif.bar20)))$trans)),
                                         mean(as.numeric(as.data.frame(t(as.data.frame(cif.bar21)))$trans)),
                                         mean(as.numeric(as.data.frame(t(as.data.frame(cif.bar22)))$trans)))))
bar.cif$week <- c(1:22)
bar.cif$type <- "barabasi"


chile.bar1 <- replicate(100, simulate.barabasi(chile1))
chile.bar2 <- replicate(100, simulate.barabasi(chile2))
chile.bar3 <- replicate(100, simulate.barabasi(chile3))
chile.bar4 <- replicate(100, simulate.barabasi(chile4))
chile.bar5 <- replicate(100, simulate.barabasi(chile5))
chile.bar6 <- replicate(100, simulate.barabasi(chile6))
chile.bar7 <- replicate(100, simulate.barabasi(chile7))

bar.chile <- as.data.frame(cbind("constraint"=c(mean(as.numeric(as.data.frame(t(as.data.frame(chile.bar1)))$V1)),
                                                mean(as.numeric(as.data.frame(t(as.data.frame(chile.bar2)))$V1)),
                                                mean(as.numeric(as.data.frame(t(as.data.frame(chile.bar3)))$V1)),
                                                mean(as.numeric(as.data.frame(t(as.data.frame(chile.bar4)))$V1)),
                                                mean(as.numeric(as.data.frame(t(as.data.frame(chile.bar5)))$V1)),
                                                mean(as.numeric(as.data.frame(t(as.data.frame(chile.bar6)))$V1)),
                                                mean(as.numeric(as.data.frame(t(as.data.frame(chile.bar7)))$V1))),       	 
                                 "trans"=c(mean(as.numeric(as.data.frame(t(as.data.frame(chile.bar1)))$V2)),
                                           mean(as.numeric(as.data.frame(t(as.data.frame(chile.bar2)))$V2)),
                                           mean(as.numeric(as.data.frame(t(as.data.frame(chile.bar3)))$V2)),
                                           mean(as.numeric(as.data.frame(t(as.data.frame(chile.bar4)))$V2)),
                                           mean(as.numeric(as.data.frame(t(as.data.frame(chile.bar5)))$V2)),
                                           mean(as.numeric(as.data.frame(t(as.data.frame(chile.bar6)))$V2)),
                                           mean(as.numeric(as.data.frame(t(as.data.frame(chile.bar7)))$V2)))))
bar.chile$week <- c(1:7)
bar.chile$type <- "barabasi"

## Standard error of the mean of a matrix
std <- function(x) sd(x, na.rm=TRUE)/sqrt(length(x))


## Plot the graph


plot(ows, type="o", col="blue", ylim=0:1, axes=FALSE, ann=FALSE)
axis(1, at=1:13, lab=c("Week 1","Week 2","Week 3","Week 4","Week 5", "Week 6", "Week 7", "Week 8", "Week 9", "Week 10", "Week 11", "Week 12", "Week 13"))
axis(2, at=c(0, 0.05, 0.1, 0.15, 0.2, 0.25, 0.3, 0.35, 0.4, 0.45, 0.5, 0.55, 0.6, 0.65, 0.7, 0.75, 0.8, 0.85, 0.9, 0.95, 1))
box()
lines(erdos, type="o", pch=15, lty=2, col="red")
lines(barabasi, type="b", pch=15, lty=2, col="green")
lines(powerlaw, type="b", pch=15, lty=2, col="purple")
title(xlab="Weeks", col.lab=rgb(0,0.5,0))
title(ylab="Average Network Constraint", col.lab=rgb(0,0.5,0))
legend(1, 1, c("Observed","Randon graphs simulation", "Preferential Attachment simulation", "Power Law simulatiton"), cex=0.8, col=c("blue","red", "green", "purple"), pch=c(22, 15, 15, 15), lty=1:2);

library(ggplot2)
library(scales)

c_ows <- rbind(ows.df,erdos.ows,watts.ows, bar.ows)
write.csv(c_ows, file="~/Dropbox/UCL/PhD/APR paper/ows_final.csv")


ows.plot1 <- ggplot(c_ows, aes(week,constraint, group=type, colour=type)) + geom_smooth(se=F, span=0.5) +
  geom_point() +
  scale_x_discrete("Weeks", breaks=c(1:13)) + 
  scale_y_continuous("Average Network Constraint") +
  scale_color_hue("Type of Network") +
  ggtitle("Network Constraint - OWS")
  
ows.plot2 <- ggplot(c_ows, aes(week,trans, group=type, colour=type)) + geom_smooth(se=F, span=0.5) +
  geom_point() +
  scale_x_discrete("Weeks", breaks=c(1:13)) + 
  scale_y_continuous("Average Local Clustering Coefficient") +
  scale_color_hue("Type of Network") +
  ggtitle("Local Clustering Coefficient - OWS")

library(gridExtra)



cif.df$type <- "observed"
c_cif <- rbind(cif.df,erdos.cif,watts.cif, bar.cif)
write.csv(c_cif, file="~/Dropbox/UCL/PhD/APR paper/cif_final.csv")

qplot(week,constraint,data=c_cif,color=type, fill=type, geom="line") + 
  scale_x_discrete("Weeks",breaks=c(1:22)) + 
  scale_y_continuous("Network Constraint")
  scale_color_hue("Type of Network", labels=c("Barabasi-Albert","Random Grahps", "Observed Values", "Watts-Strogatz"))

qplot(week,trans,data=c_cif,color=type, fill=type, geom="line") + 
  scale_x_discrete(breaks=c(1:22)) +
  scale_y_continuous("Ag. Local Clustering Coefficient") +
  scale_color_hue("Type of Network", labels=c("Barabasi-Albert","Random Grahps", "Observed Values", "Watts-Strogatz"))


cif.plot1 <- ggplot(c_cif, aes(week,constraint, group=type, colour=type)) + geom_smooth(se=F, span=0.5) +
  geom_point() +
  scale_x_discrete("Weeks", breaks=c(1:22)) + 
  scale_y_continuous("Average Network Constraint") +
  scale_color_hue("Type of Network") +
  ggtitle("Network Constraint - IF")

cif.plot2 <- ggplot(c_cif, aes(week,trans, group=type, colour=type)) + geom_smooth(se=F, span=0.5) +
  geom_point() +
  scale_x_discrete("Weeks", breaks=c(1:22)) + 
  scale_y_continuous("Average Local Clustering Coefficient") +
  scale_color_hue("Type of Network") +
  ggtitle("Local Clustering Coefficient - IF")

cif.plot1
cif.plot2


### Chilean plots

chile.df$type <- "observed"
c_chile <- rbind(chile.df,erdos.chile,watts.chile, bar.chile)
write.csv(c_chile, file="~/Dropbox/UCL/PhD/APR paper/chile_final.csv")

qplot(week,constraint,data=c_chile,color=type, fill=type, geom="line") + 
  scale_x_discrete("Weeks",breaks=c(1:22)) + 
  scale_y_continuous("Network Constraint")
scale_color_hue("Type of Network", labels=c("Barabasi-Albert","Random Grahps", "Observed Values", "Watts-Strogatz"))

qplot(week,trans,data=c_chile,color=type, fill=type, geom="line") + 
  scale_x_discrete(breaks=c(1:22)) +
  scale_y_continuous("Ag. Local Clustering Coefficient") +
  scale_color_hue("Type of Network", labels=c("Barabasi-Albert","Random Grahps", "Observed Values", "Watts-Strogatz"))


chile.plot1 <- ggplot(c_chile, aes(week,constraint, group=type, colour=type)) + geom_smooth(se=F, span=0.5) +
  geom_point() +
  scale_x_discrete("Weeks", breaks=c(1:7)) + 
  scale_y_continuous("Average Network Constraint") +
  scale_color_hue("Type of Network") +
  ggtitle("Network Constraint - 2013 Chilean Elections")

chile.plot2 <- ggplot(c_chile, aes(week,trans, group=type, colour=type)) + geom_smooth(span=0.5) +
  geom_point() +
  scale_x_discrete("Weeks", breaks=c(1:7)) + 
  scale_y_continuous("Average Local Clustering Coefficient") +
  scale_color_hue("Type of Network") +
  ggtitle("Local Clustering Coefficient - 2013 Chilean Elections")

chile.plot1
chile.plot2


a <- as.data.frame(cbind(cif.df$constraint, cif.df$trans))
cor(a)

a <- as.data.frame(cbind(ows.df$constraint, ows.df$trans))
cor(a)
a <- as.data.frame(cbind(chile.df$constraint, chile.df$trans))
cor(a)

chile.df

grid.arrange(ows.plot1,cif.plot1,chile.plot1, nrow=3)

