#* R에서 제공하는 mtcars 데이터섹에 대해 다음 문제를 해결하기 위한 R코드를 작성하시오.
mtcars
#1) 중량(wt)의 평균값, 중앙값, 절사평균값(절사범위: 15%), 표준편차를 각각 구하시오.
mean(mtcars$wt)
median(mtcars$wt)
mean(mtcars$wt, trim = 0.15)
sd(mtcars$wt)
#2) 중량(wt)에 대해 summary() 함수의 적용 결과를 출력하시오.
summary(mtcars$wt)
#3) 실린더수(cyl)에 대해 summary()함수의 적용 결과를 출력하시오.
summary(mtcars$cyl)
#4) 앞에서 구한 도수분포표를 막대그래프로 출력하시오.
par(mfrow = c(1,2))
barplot(mtcars$wt, main = "Barplot of Weight")
barplot(mtcars$cyl, main = "Barplot of Cylender")
par(mfrow = c(1,1))
#5) 중량(wt)의 히스토그램을 출력하시오.
hist(mtcars$wt)
#6) 중량(wt)에 대한 상자그림을 출력하시오.(단, 상자그림으로부터 관찰할 수 있는 정보를 함께 출력하시오.)
boxplot(mtcars$wt, main = "중량")
boxplot.stats(mtcars$wt)
#7) 배기량(disp)에 대한 상자그림을 출력하시오.(단, 상자그림으로부터 관찰할 수 있는 정보를 함께 출력하시오.)
boxplot(mtcars$disp, main = "배기량")
boxplot.stats(mtcars$disp)
#8) 기어수(gear)를 그룹 정보로 하여 연비(mpg)자료에 대해 상자그림을 작성하고, 각 그룹의 상자그림을 비교하여 관찰할 수 있는 것이 무엇인지 나타내시오.
boxplot(mtcars$mpg~mtcars$gear, xlab = "기어 수", ylab = "연비", las = 1)
