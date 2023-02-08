#define time intervals for time varying effects
data$period <- ifelse(data$stp < 1906, 1 , ifelse(data$stp < 1931,2,ifelse(data$stp < 1956,3, ifelse(data$stp < 1981,4, ifelse(data$stp < 2006,5,6)))))
data$period <- as.factor(data$period)

data_birds <- data[data$taxonomy == "Birds"]
data_plants <- data[data$taxonomy == "Plants"]
data_mammals <- data[data$taxonomy == "Mammals"]
data_insects <- data[data$taxonomy == "Insects"]

library(coxme)

#model for birds
fit_birds <-  coxme(Surv(stp-strt,event)~dist:period + temp_dist+trade:period+
                       (1|species)+ (1|country) + crop_past:period   
                     ,data = data_birds)
summary(fit_birds)

#model for mammals
fit_mammals <-  coxme(Surv(stp-strt,event)~dist:period + temp_dist+trade:period+
                         (1|species)+ (1|country) + crop_past:period  
                       ,data = data_mammals)
summary(fit_mammals)

#model for plants
fit_plants <-  coxme(Surv(stp-strt,event)~dist:period + temp_dist+trade:period+urban+
                        (1|species)+ (1|country) + crop_past:period  +num_inv
                      ,data = data_plants)
summary(fit_plants)

#model for insects
fit_insects <-  coxme(Surv(stp-strt,event)~dist:period + temp_dist+trade:period+
                         (1|species)+ (1|country) + num_inv  +scale(s_e)
                       ,data = data_insects)
summary(fit_insects)
