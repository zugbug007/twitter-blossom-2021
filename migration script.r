
# Step 1: Save a list of packages installed in your old computing device (from your old device).

installed <- as.data.frame(installed.packages())
write.csv(installed, 'installed_previously.csv')

# Step 2: Create a list of libraries from your old list that were not already installed when you freshly download R (from your new device).

installedPreviously <- read.csv('installed_previously.csv')

baseR <- as.data.frame(installed.packages())

toInstall <- setdiff(installedPreviously, baseR)

# Step 3: Download this list of libraries.

install.packages(toInstall)