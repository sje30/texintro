## Script to make a simple Postscript and PDF figure.


postscript(width=5, height=5, file='sigmoid.ps',
           onefile=FALSE, horizontal=FALSE)
par(mar=c(4,4,1,.1), las=1, bty='n')
curve(tanh(x), xlim=c(-3,3), main='postscript version')
dev.off()

pdf(width=4, height=4, file='sigmoid.pdf')
par(mar=c(4,4,1,.1), las=1, bty='n')
curve(1-tanh(x), xlim=c(-3,3), main='pdf version')
dev.off()
