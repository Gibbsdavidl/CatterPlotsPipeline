# make some catter plots

library(CatterPlots)

dat <- read.table("catter_input.txt", header=T)

print(dat$x)
print(dat$y)

png("catter_out.png")

# random cats
x <- dat$x
y <- dat$y
meow <- multicat(xs=x, ys=y,
                 cat=c(1,2,3,4,5,6,7,8,9,10),
                 catcolor=list(c(0,0,0,1)),
                 canvas=c(-0.1,1.1, -0.1, 1.1),
                 xlab="some cats", ylab="other cats", main="Random Cats")

dev.off()
