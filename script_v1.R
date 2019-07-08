require(pROC)
dat<-read.csv("data.csv",header=T)
plot(dat$Bnet1,dat$RA_deltaEMw_100max)
cor.test(dat$Bnet1,dat$RA_deltaEMw_100max,method="spearman")
# strong correlation
plot(dat$Bnet1,dat$RA_deltaEMw_100max)
cor.test(dat$Bnet1,dat$RA_deltaEMw_100max,method="spearman")
# rho = 0.82
sum(dat$Risk=="1"|dat$Risk=="2"|dat$Risk=="3")
dat$Risk2<-0
dat$Risk2[dat$Risk=="1"|dat$Risk=="2"|dat$Risk=="3"]<-1
auc(roc(dat$Risk2~dat$RA_deltaEMw_100max))#0.89
ci.auc(roc(dat$Risk2~dat$RA_deltaEMw_100max))# 0.77-1.00
auc(roc(dat$Risk2~dat$Bnet1))#0.90
ci.auc(roc(dat$Risk2~dat$Bnet1))# 0.80-1.00
