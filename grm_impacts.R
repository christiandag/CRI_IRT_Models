### Innovation Impacts construct analysis using GRM model ###

# Load the mirt package
library(mirt) #3.1_30

# Load the data of the national multisectoral sample
ddd <- read.csv2("cri_data_46items_without_tech_filtered.csv")

# Select the columns corresponding to Innovation Impacts items
ddd<-ddd[,38:46]

# Check the data dimensions
dim(ddd)

# Check the data summary
mod.pcm<-mirt(ddd, model=1, itemtype="graded", SE=T)

# Check the model fit
M2(mod.pcm, type="M2*")

# Load the data of the TECH organizations sample
max_all <- max(latent_trait_all[,1])
min_all <- min(latent_trait_all[,1])

# Load the data of the TECH organizations sample
tech = read.csv2("cri_data_46items_tech.csv")

# Check the data dimensions
dim(tech)

# Estimate the latent trait of the TECH organizations sample
latent_trait_tech <- fscores(mod.pcm, method="EAP", full.scores=T, full.scores.SE = T, response.pattern=tech[,38:46])

# Normalize the latent trait of the TECH organizations sample
latent_trait_tech <- (latent_trait_tech - min_all)*(100/(max_all - min_all))

# Select the latent trait of the TECH organizations sample
latent_trait_tech <- latent_trait_tech[,"F1"]

# Plot the histogram of the latent trait of the TECH organizations sample
hist(latent_trait_tech, main = "Innovation impacts", ylab = "Frequency", xlab="Latent trait", 
col = "#00989d", breaks = 4, xlim = c(0,100), ylim = c(0,20))