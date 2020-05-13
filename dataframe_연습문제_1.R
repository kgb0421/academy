state.x77

st <- data.frame(state.x77) # 1)
class(st)

st # 2)

rownames(st) # 3)

colnames(st) # 4)

dim(st) # 5)

str(st) # 6)

colSums(st) # 7)
colMeans(st) # 7)

rowSums(st) # 8)
rowMeans(st) # 8)

subset(st, rownames(st) == "Florida") # 9)

st["Income"] # 10)

subset(st, rownames(st) == "Texas", "Area") # 11)

subset(st, rownames(st) == "Ohio", c("Population", "Income")) # 12)

subset(st, Population > 5000) # 13)

subset(st, Income > 4500, c("Population", "Income", "Area")) # 14)

nrow(subset(st, Income > 4500)) # 15)

subset(st, Area >= 100000 & Frost >= 120) # 16)

subset(st, Population < 2000 & Murder < 12) # 17)

colMeans(subset(st, Illiteracy >= 2.0, Income)) # 18)

colMeans(subset(st, Illiteracy < 2.0, Income)) - colMeans(subset(st, Illiteracy >= 2.0, Income)) # 19)

subset(st, Life.Exp == max(st["Life.Exp"])) # 20)

subset(st, Income > st["Pennsylvania","Income"]) # 21)



