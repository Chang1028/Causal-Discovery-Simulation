


library(pcalg)
data("gmG")

suffStat <- list(C = cor(gmG8$x), n = nrow(gmG$x))
pc.gmG <- pc(suffStat, indepTest = gaussCItest, p = ncol(gmG8$x), alpha = 0.005)
stopifnot(require(Rgraphviz))
par(mfrow = c(1,2))
plot(gmG8$g, main = "")
plot(pc.gmG, main = "")








ida(1, 6, cov(gmG8$x), pc.gmG@graph)
idaFast(1, c(4,5,6), cov(gmG8$x), pc.gmG@graph)
