### Information sources construct analysis using GRM model ###

# Load the mirt package
library(mirt)

# Load the data of the national multisectoral sample
ddd <- read.csv2("cri_data_46items_without_tech_filtered.csv") #2.1_4

# Select the columns corresponding to Information Sources items
ddd<-ddd[,1:8]

# Check the data dimensions
dim(ddd)

# Check the data summary
summary(ddd)

# Check the data distribution
apply(ddd, 2, table)

# Model specification and estimation based on National Multisectoral Sample
mod.pcm<-mirt(ddd, model=1, itemtype="graded", SE=T)

# Check the model fit
M2(mod.pcm, type="M2*")

# Load the data of the ICT organizations sample
tech = read.csv2("cri_data_46items_tech.csv")

# Check the data dimensions
dim(tech)

# Set limits for histogram
max_all <- max(latent_trait_all[,1])
min_all <- min(latent_trait_all[,1])

# Estimate the latent trait of the ICT organizations sample
latent_trait_tech <- fscores(mod.pcm, method="EAP", full.scores=T, full.scores.SE = T, response.pattern=tech[,1:8])

# Normalize the latent trait of the ICT organizations sample
latent_trait_tech <- (latent_trait_tech - min_all)*(100/(max_all - min_all))

# Select the latent trait of the ICT organizations sample
latent_trait_tech <- latent_trait_tech[,"F1"]

# Plot the histogram of the latent trait of the ICT organizations sample
hist(latent_trait_tech, main = "Information sources", ylab = "Frequency", xlab="Latent trait", 
col = "#00989d", breaks = 4, xlim = c(0,100), ylim = c(0,20))




