# Curves for all bottles (for supplement)

dat <- dat[order(dat$substrate, dat$bottle.id, dat$time.d), ]

bi <- unique(dat$bottle.id)
bi <- bi[!is.na(bi)]

cc <- 0
rows <- 5
cols <- 3
pdf('../plots/SMP_all.pdf', height = 11, width = 8.5)
  par(mfrow = c(rows, cols), mar = c(3, 3, 2, 0), oma = c(1, 1, 1, 1), mgp = c(2, 1, 0))
  for (i in bi) {
    dd <- subset(dat, bottle.id == i)
    if (cc %% cols == 0) {
      ylab <- expression('SMP'~(mL~g^'-1'))
    } else {
      ylab <- ''
    }
    if (cc > 3 & (cc + 3) %% (rows * cols) %in% 0:2) {
      xlab <- 'Time (d)'
    } else {
      xlab <- ''
    }
    plot(cvCH4 ~ time.d, data = dd, type = 'o', 
         main = paste(dd[1, 'substrate'], i), xlab = xlab, ylab = ylab,
    ylim = c(0, max(na.omit(c(dd$cvCH4, dd$cvCH4.pred)))))
    lines(cvCH4.pred ~ time.d, data = dd, col = 'red')
    cc <- cc + 1
  }
dev.off()

cc <- 0
pdf('../plots/rate_all.pdf', height = 11, width = 8.5)
  par(mfrow = c(rows, cols), mar = c(3, 3, 2, 0), oma = c(1, 1, 1, 1), mgp = c(2, 1, 0))
  for (i in bi) {
    dd <- subset(dat, bottle.id == i)
    if (cc %% cols == 0) {
      ylab <- expression(CH[4]~'prod. rate'~(mL~g^'-1'~d^'-1'))
    } else {
      ylab <- ''
    }
    if (cc > 3 & (cc + 3) %% (rows * cols) %in% 0:2) {
      xlab <- 'Time (d)'
    } else {
      xlab <- ''
    }
    plot(rateCH4 ~ time.d, data = dd, type = 'o', 
         main = paste(dd[1, 'substrate'], i), xlab = xlab, ylab = ylab)
    lines(rateCH4.pred ~ time.d, data = dd, col = 'red')
    cc <- cc + 1
  }
dev.off()


