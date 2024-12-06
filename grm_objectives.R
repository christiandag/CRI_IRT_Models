### Innovation Objectives construct analysis using PCM model ###

# Load the mirt package
library(mirt)

# Load the data of the national multisectoral sample
ddd <- read.csv2("cri_data_46items_without_tech_filtered.csv")

# Select the columns corresponding to Innovation Objectives items
ddd<-ddd[,23:31]

# Check the data dimensions
dim(ddd)

# Set the model specification
spec <- 'F = 1-9
CONSTRAIN = (1-9, a1)'

# Model specification and estimation based on National Multisectoral Sample
mod.pcm<-mirt(ddd, model=spec, itemtype="graded", SE=T)

# Check the model fit
M2(mod.pcm, type="C2")

# Set limits for histogram
max_all <- max(latent_trait_all[,1])
min_all <- min(latent_trait_all[,1])

# Load the data of the ICT organizations sample
tech = read.csv2("cri_data_46items_tech.csv")

# Check the data dimensions
dim(tech)

# Estimate the latent trait of the ICT organizations sample
latent_trait_tech <- fscores(mod.pcm, method="EAP", full.scores=T, full.scores.SE = T, response.pattern=tech[,23:31])

# Normalize the latent trait of the ICT organizations sample
latent_trait_tech <- (latent_trait_tech - min_all)*(100/(max_all - min_all))

# Select the latent trait of the ICT organizations sample
latent_trait_tech <- latent_trait_tech[,"F1"]

# Plot the histogram of the latent trait of the ICT organizations sample
hist(latent_trait_tech, main = "Innovation objectives", ylab = "Frequency", xlab="Latent trait", 
col = "#00989d", breaks = 4, xlim = c(0,100), ylim = c(0,20))