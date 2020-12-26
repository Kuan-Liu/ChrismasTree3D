library(plot3D)
library(plot3Drgl)
library(rgl)


#tree x-y plane;
rect3D(x0 = c(2,2,1,1.5,1,1.5, 2.25), 
       y0 = c(2,2,1,1.5,1,1.5,2.25),
       z0 = c(0,1.5,1.5,3,5,7, 9),
       x1 = c(3,3,4,3.5,4,3.5, 2.75),
       y1 = c(3,3,4,3.5,4,3.5, 2.75),
       col = c("brown","brown",rep("darkgreen",6)), border = "black",
       bty = "g", lwd = 2, phi =-10,theta=20, 
	 xlab = "", ylab="", zlab="",
	main = "Kuan's 3D Christmas Tree", zlim=c(0,13),xlim=c(0,5),ylim=c(0,5))

#tree trunk;
rect3D(x0 = c(2,3), 
       y0 = c(2,2),
       z0 = c(0,0),
       z1 = c(1.5,1.5),
       y1 = c(3,3),
       col = c("brown"), add=TRUE, border = "black",
       bty = "g", lwd = 2, phi=-10)

#tree polygon level 1;
polygon3D(x = c(4,3.5,3.5,4), 
	    y = c(1,1.5,3.5,4), 
	    z  = c(1.5,3,3,1.5), 
	    add=TRUE, col = c(rep("darkgreen",4)),border = "black", lwd = 2, bty="g",phi=-10)

polygon3D(x = c(1,1.5,1.5,1), 
	    y = c(4,3.5,1.5,1), 
	    z  = c(1.5,3,3,1.5), 
	    add=TRUE, col = c(rep("darkgreen",4)),border = "black", lwd = 2, bty="g",phi=-10)

#tree polygon level 2;
polygon3D(x = c(3.5,4,4,3.5), 
	    y = c(1.5,1,4,3.5), 
	    z  = c(3,5,5,3), 
	    add=TRUE, col = c(rep("darkgreen",4)),border = "black", lwd = 2, bty="g",phi=-10)

polygon3D(x = c(1.5,1,1,1.5), 
	    y = c(3.5,4,1,1.5), 
	    z  = c(3,5,5,3), 
	    add=TRUE, col = c(rep("darkgreen",4)),border = "black", lwd = 2, bty="g",phi=-10)

#tree polygon level 3;
polygon3D(x = c(4,3.5,3.5,4), 
	    y = c(1,1.5,3.5,4), 
	    z  = c(5,7,7,5), 
	    add=TRUE, col = c(rep("darkgreen",4)),border = "black", lwd = 2, bty="g",phi=-10)

polygon3D(x = c(1,1.5,1.5,1), 
	    y = c(4,3.5,1.5,1), 
	    z  = c(5,7,7,5), 
	    add=TRUE, col = c(rep("darkgreen",4)),border = "black", lwd = 2, bty="g",phi=-10)

#tree polygon level 4;
polygon3D(x = c(3.5,2.75,2.75,3.5), 
	    y = c(1.5,2.25,2.75,3.5), 
	    z  = c(7,9,9,7), 
	    add=TRUE, col = c(rep("darkgreen",4)),border = "black", lwd = 2, bty="g",phi=-10)

polygon3D(x = c(1.5,2.25,2.25,1.5), 
	    y = c(3.5,2.75,2.25,1.5), 
	    z  = c(7,9,9,7), 
	    add=TRUE, col = c(rep("darkgreen",4)),border = "black", lwd = 2, bty="g",phi=-10)

#tree top;
points3D(2.5, 2.5, 10, add = TRUE, col="orange",
         colkey = T, pch = 18, cex = 5)

#rainbow decorations;
x1<- runif(25, min=0.8, max=4.2)
y1<- runif(25, min=0.8, max=4.2)
z1<- runif(25, min=1.5, max=3)
x2<- runif(25, min=0.8, max=4.2)
y2<- runif(25, min=0.8, max=4.2)
z2<- runif(25, min=3, max=5)
x3<- runif(25, min=0.8, max=4.2)
y3<- runif(25, min=0.8, max=4.2)
z3<- runif(25, min=5, max=7)
x4<- runif(20, min=1.5, max=3.2)
y4<- runif(20, min=1.5, max=3.2)
z4<- runif(20, min=7, max=9)

scatter3D(x1, y1, z1, add=TRUE, bty = "g", colkey = FALSE, pch=16,cex=2)
scatter3D(x2, y2, z2, add=TRUE, bty = "g", colkey = FALSE, pch=16,cex=2)
scatter3D(x3, y3, z3, add=TRUE, bty = "g", colkey = FALSE, pch=16,cex=2)
scatter3D(x4, y4, z4, add=TRUE, bty = "g", colkey = FALSE, pch=16,cex=2)

plotrgl(windowRect = c(20, 30, 400, 400),phi=0,theta=0)

movie3d(
  movie="3dAnimatedplot_xmastree", 
  spin3d( axis = c(1, 1, 1), rpm = 4),
  duration = 15, 
  dir = "C:/Users/kuan9/Documents",
  type = "gif", 
  clean = TRUE
)




