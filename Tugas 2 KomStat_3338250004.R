#1.Tampilkan data Sepal.Length saja
data (iris)
iris$Sepal.Length

#2.Sebutkan tipe data tiap kolom
str(iris)
sapply(iris, class)

#3.Buat variabel baru dengan nama turunan yang berasal/turunan dari variabel Sepal.Width. 
#Nilai variabel turunan hanya memiliki dua nilai yaitu “Besar” dan “Kecil”. 
#Besar jika Sepal.Width lebih besar dari 3, begitu pula sebaliknya.
library(dplyr)
iris <- iris %>%
  mutate(
    Turunan = ifelse(Sepal.Width >3, "Besar", "Kecil")
  )
head(iris)

#4.Ubah variabel turunan menjadi sepal
names(iris)[names(iris) == "Turunan"] <- "Sepal"
head(iris)

#5.Ambil data dengan sepal bernilai besar dari species virginica
data_virginica <- filter(iris, Sepal == "Besar", Species == "virginica")
print(data_virginica)

#6.Cek jumlah species dalam data
table(iris$Species)

#7.Pecah data iris menjadi 3 data frame dengan tiap data frame 
#khusus untuk species tertentu
iris_setosa <- iris[iris$Species == "Setosa", ]
iris_versicolor <- iris[iris$Species == "versicolor", ]
iris_virginica <- iris[iris$Species == "virginica", ]

head(iris_setosa)
head(iris_versicolor)
head(iris_virginica)

#8.Dari setiap data frame species, urutkan data berdasarkan Sepal.Width
iris_setosa_urut <- iris_setosa[order(iris_setosa$Sepal.Width), ]
iris_versicolor_urut <- iris_versicolor[order(iris_versicolor$Sepal.Width), ]
iris_virginica_urut <- iris_virginica[order(iris_virginica$Sepal.Width), ]

print(iris_setosa_urut)
print(iris_versicolor_urut)
print(iris_virginica_urut)