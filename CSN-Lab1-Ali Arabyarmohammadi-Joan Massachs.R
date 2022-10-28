#=======================================================================
# CSN - Lab Assignment 1
# September 2022
#=======================================================================
# Ali Arabyarmohammadi
#=======================================================================
# Note: The "Average" function is needed for the two 
# Problems(part1 and part2), So please run all the code blocks at once.

library(igraph)

#=======================================================================
# Problem1
# Plot the clustering coefficient and the average
# shortest-path as a function of the parameter p of the WS model.
#=======================================================================

dim  <- 1
size <- 500
nei  <- 4

len <- function(p) {
  ws <- watts.strogatz.game(dim, size, nei, p)
  average.path.length(ws)
}

clu <- function(p) {
  ws <- watts.strogatz.game(dim, size, nei, p)
  transitivity(ws)
}

average <- function(f, p, n) {
  list <- sapply(1:n, function(x) f(p))
  mean(list[!is.na(list)])
}

p <- 2^-(13:0)
l <- sapply(p, function(p) average(len, p, 10))
c <- sapply(p, function(p) average(clu, p, 10))

plot(p,   l/l[1], pch=16, log='x', ylim=c(0, 1), ylab='')
points(p, c/c[1], pch=0)
text(x=0.001, y=0.25, labels=c('L(p) / L(0)'))
text(x=0.01,  y=0.8,  labels=c('C(p) / C(0)'))



#=======================================================================
# Problem2
# Plot the average shortest-path length as a function 
# of the network size of the ER model.
#=======================================================================  

len <- function(n) {
  e  <- 1e-7
  p  <-  (1/n) + ((1+e)*log(n,10))/n    
    er <- erdos.renyi.game(n, p )
  average.path.length(er)
}

n <- 2^(1:14)
l <- sapply(n, function(n) average(len, n, 10))

plot(n, type='b' ,l, xlab = 'Num nodes', ylab = 'average shortest path')


