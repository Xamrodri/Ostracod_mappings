#To open the EPMA.R file use the command load() 
#Use the correct directory where you saved the file EPMA.R. 
#For example the user may use: load(C:/Desktop/MyFolder/EPMA.R)

#If you are working in a new project, you can open the file using the name of the file
#load("EPMA.R")
#This file contains the list EPMA with three objects: 
# 1) Polycope
# 2) Krithe adults
# 3) Krithe juveniles
#These three objects are also lists that contain sublists with the name of the shells
#These sublists have the matrices with the intensity (counts) per element. 
#For example, to open the matrix with of Ca of core P31, shell PN02 the user should 
#type the following command:
#EPMA$Polycope$P31_PN02.RData$Ca
#In order to plot the intensity the user may use image2D from the package plot3D.

load("Summary/EPMA.R")
mat_Ca <- EPMA$Polycope$P31_PN02.RData$Ca
require(plot3D)
image2D(mat_Ca)
