outcomes<-c("var1","var2","var3")
outcome_list<-as.list(strsplit(outcomes,","))

##ANOVA and TukeyHSD Test
lapply(outcome_list, function(x)
  TukeyHSD(aov(
    as.formula(paste0(x, "~ grp")),
    data = data)
  ))
  

##T test
lapply(outcome_list, function(x)
  t.test(
    as.formula(paste0(x, "~ grp")),
    data = data)
