###
#install.packages("foreign")  # foreign 패키지 설치
#install.packages('readxl')
library(foreign)             # SPSS 파일 로드
library(dplyr)               # 전처리
library(ggplot2)             # 시각화
library(readxl)              # 엑셀 파일 불러오기
r
# 데이터 불러오기
raw_welfare <- read.spss(file = "Koweps_hpc10_2015_beta1.sav",
                         to.data.frame = T)
#install.packages("plotly")
library(plotly)
mpg=as.data.frame(ggplot2::mpg)

tt=ggplot(mpg,aes(x=drv,y=hwy))+geom_bar(stat='identity',fill="red")
ggplotly(tt)
geom_text(aes(label=max(mpg$hwy),vjust=-0.2),na.rm=T,col=2)