#1
1-pnorm(.1,mean=.05,sd=.1)

#2
pnorm(-.1,mean=.05,sd=.1)

#3
pnorm(.15,mean=.05,sd=.1)-pnorm(-.05,mean=.05,sd=.1)

#4
qnorm(.01,mean=.05,sd=.1)

#5
qnorm(.05,mean=.05,sd=.1)

#6
qnorm(.95,mean=.05,sd=.1)

#7
qnorm(.99,mean=.05,sd=.1)


#8
x=rnorm(1000,.05,.1)
y=rnorm(1000,.025,.05)

require(reshape2)
tmp=melt(data.frame(x,y))
ggplot(tmp,aes(value,fill=variable))+geom_density(aes(alpha=.3))


#9
qnorm(.01,.04,.09)*100000
qnorm(.05,.04,.09)*100000

#10
(exp(qnorm(.01,.04,.09))-1)*100000
(exp(qnorm(.05,.04,.09))-1)*100000

#11
(41.29-38.23)/38.23
(41.74-41.11)/41.11

#12
log((41.29/38.23))
log((41.74/41.11))

#13
((41.29+.1)-38.23)/38.23
(.1/38.23)

#14
log((41.29/38.23))*12
(1+(41.29-38.23)/38.23)^12-1

#15
8000/10000
2000/10000

#16
exp(log((41.29/38.23))*.8+log((41.74/411.1))*.2)-1
