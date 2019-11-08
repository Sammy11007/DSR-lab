library(visualize)

rural <- c(3.1, 2.9, 2.8, 3.0, 2.7, 3.1, 2.6, 2.8, 2.9, 3.0)
urban <- c(3.5, 3.0, 3.1, 3.2, 2.9, 3.4, 3.0, 3.4, 2.8, 3.4)
df = data.frame(rural, urban)
df
means = apply(df, MARGIN=2, FUN = mean)
variance = apply(df, MARGIN=2, FUN = var)
std_dev = apply(df, MARGIN=2, FUN = sd)
stats = matrix(c(means, variance, std_dev), byrow = TRUE, ncol = 2, dimnames = list(c("mean", "variance", "std_dev"), names(df)))
stats

#Obtaining t-calculated value
ttest = t.test(x = rural, y = urban, var.equal = TRUE, conf.level = 0.95)
ttest
t = abs(ttest$statistic)
t

q = qt(p = 0.05/2, df = 18, lower.tail = FALSE)
q
visualize.t(stat = c(-t, t), df=18, section="tails")
visualize.t(stat = c(-q, q), df=18, section="tails")
