library(pcalg)
data("gmG")
suffStat <- list(C = cor(gmG8$x), n = nrow(gmG$x))

pc.gmG <- pc(suffStat, indepTest = gaussCItest, p = ncol(gmG8$x), alpha = 0.01)

stopifnot(require(Rgraphviz))
par(mfrow = c(1,2))
plot(gmG8$g, main = "")
plot(pc.gmG, main = "")

