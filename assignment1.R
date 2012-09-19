require(quantmod)
getSymbols('sbux',from='1993-01-01')
nasa<-Cl(to.monthly(Ad(SBUX)))['1993-03::2008-03']

#1
plot(nasa)

#2
(as.double(last(nasa))-as.double(first(nasa)))/as.double(first(nasa))*1000+1000


#3
(as.double(last(nasa))/as.double(first(nasa)))^(1/15)-1

#4
plot(log(nasa))

#5
plot(Delt(nasa))

#q6
plot(rollapply(Delt(nasa)+1,12,function(x){last(cumprod(as.double(x)))-1},align='right'))

#7
plot(log(Delt(nasa)+1))

#8
plot(rollapply(log(Delt(nasa)+1),12,sum))
