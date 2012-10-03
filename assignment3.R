matX=matrix(c(.1,.1,0,.2,0,.1,0,.2,.3),nrow=3,ncol=3)

#1
sum(rowSums(matX)*seq(1:3))

#2
sum(colSums(matX)*seq(1:3))

#3
sum(((seq(1:3)-sum(rowSums(matX)*seq(1:3)))^2)*rowSums(matX))

#4
sum(((seq(1:3)-sum(colSums(matX)*seq(1:3)))^2)*colSums(matX))

#5
sqrt(sum(((seq(1:3)-sum(rowSums(matX)*seq(1:3)))^2)*rowSums(matX)))

#6
sqrt(sum(((seq(1:3)-sum(colSums(matX)*seq(1:3)))^2)*colSums(matX)))

#7
tmp=((1-sum(rowSums(matX)*seq(1:3)))*(1-sum(colSums(matX)*seq(1:3)))*.1)+
((1-sum(rowSums(matX)*seq(1:3)))*(2-sum(colSums(matX)*seq(1:3)))*.2)+
((1-sum(rowSums(matX)*seq(1:3)))*(3-sum(colSums(matX)*seq(1:3)))*0)+

((2-sum(rowSums(matX)*seq(1:3)))*(1-sum(colSums(matX)*seq(1:3)))*.1)+
((2-sum(rowSums(matX)*seq(1:3)))*(2-sum(colSums(matX)*seq(1:3)))*.0)+
((2-sum(rowSums(matX)*seq(1:3)))*(3-sum(colSums(matX)*seq(1:3)))*.2)+

((3-sum(rowSums(matX)*seq(1:3)))*(1-sum(colSums(matX)*seq(1:3)))*.0)+
((3-sum(rowSums(matX)*seq(1:3)))*(2-sum(colSums(matX)*seq(1:3)))*.1)+
((3-sum(rowSums(matX)*seq(1:3)))*(3-sum(colSums(matX)*seq(1:3)))*.3)

#8
tmp/
(sqrt(sum(((seq(1:3)-sum(rowSums(matX)*seq(1:3)))^2)*rowSums(matX)))*
  sqrt(sum(((seq(1:3)-sum(colSums(matX)*seq(1:3)))^2)*colSums(matX))))

#9
(exp(qnorm(.01,.04*12,sqrt(12)*.09))-1)*100000
(exp(qnorm(.05,.04*12,sqrt(12)*.09))-1)*100000