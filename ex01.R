### Data Frame

# 벡터 : 동일한 자료가 일차원으로 나열되는것
vec1 = c(10,20,30,40,50)
vec1
vec2 = c("사과",100,TRUE) # 문자열이 우선순위 젤 높음-> 하나라도 문자가 포함되면 다 문자로 변환
vec2
vec3 = c(100.3,33,TRUE,FALSE)                 
vec3

v_no=seq(1:7)
v_no

v_name=c("Apple","Peach","Banana","Grape","Kiwi","Orange","Mango")
v_name

v_price=c(500,200,100,300,150,250,450)
v_price

v_stock=c(5,2,4,7,5,3,8)
v_stock

# 데이터 프레임 만드는 방법  -> data.frame()
sales=data.frame(v_no,v_name,v_price,v_stock)
sales

# 자료구조를 좀 더 괜찮게 보는 방법 ->View(내가 보고싶은 뷰)
View(sales)

# [1] ->벡터(대괄호 있는경우)
# 1-> 데이터프레임(대괄호 없는경우)

# DataFrame에서 원하는 데이터만 조회하기 -> $
# Sales 데이터프레임에서 v_name 값만 뽑아서 보기
sales$v_name
sales[3,2]
sales[3,]
sales[,2]


# DataFrame에서 컬럼의 개수를 알 수 있는 방법->ncol()
ncol(sales)

# DataFrame에서 행의 개수를 알 수 있는 방법->nrow()
nrow(sales)

# DataFrama에서 컬럼의 이름들만 추출하는 방법
names(sales)

# 다양한 함수를 데이터프레임에 적용하기
sum(sales$v_price)
mean(sales$v_price)
round(mean(sales$v_price), digits = 2)  #digits = 소수점 자르기
min(sales$v_price)
max(sales$v_price)
#범위 -> range
range(sales$v_price)

v_no=c(1,2,3,4,5,6,7,8,9,10)
v_name=c("이은비","김서아","장하윤","유이서","나서윤","이지안","박나은","황유나","김하율","윤시아")
v_kor=c(80,76,26,61,44,19,53,81,26,64)
v_eng=c(8,76,69,18,82,56,48,14,73,83)
v_math=c(65,27,100,76,37,77,73,19,74,60)
# 1)
score=data.frame(v_no,v_name,v_kor,v_eng,v_math)
score
View(score)
# 2)
v_kor
# 3)
v_eng
# 4)
nrow(score)
# 5)
ncol(score)
# 6)
names(score)
# 7)
round(mean(score$v_kor), digits = 1) #round : 소수점까지 출력
# 8)
max(score$v_eng)
# 9)
min(score$v_math)

###데이터 분석/시각화
# 외부에서 있는 파일을 쓰는법


# 내가 작업하는 공간에 파일들의 목록 보기
list.files()

# 엑셀 데이터파일을 읽을 수 잇는 함수들이 모여있는 패키지 다운받기
install.packages("readxl")
  
# 패키지를 로딩하여 사용하기 = import
library(readxl)
    
# 함수를 사용하여 파일 불러오기
score=read_excel("score.xlsx")
score

# csv파일을 읽어와서 데이터프레임 형태로 저장
titanic = read.csv("titanic.csv")
titanic
View(titanic_2)

list.files()

# 문자열 데이터를 범주형으로 읽어들이는 옵션 = stringsAsFactors
titanic_2 = read.csv("titanic_2.csv", stringsAsFactors =  T)
titanic_2

list.files()
heart = read.csv("heart_failure_clinical_records_dataset.csv", stringsAsFactors = T)































