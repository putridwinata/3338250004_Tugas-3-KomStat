# Vector numeric
v_num <- c(13.4, 8.7, 4.3, 6.3, 8.12)
v_num

# Vector integer
v_int <- c(1L, 2L, 3L, 4L, 5L)
v_int

# Vector logical
v_log <- c(TRUE, FALSE, TRUE, TRUE, FALSE)
v_log

# Vector character
v_char <- c("Tingky", "Winky", "Dipsy", "Lala", "Po")
v_char

# Matrix 3x3
m <- matrix(1:12, nrow = 3, ncol = 4)
m

# Array 3 dimensi
a <- array(1:24, dim = c(2, 4, 3))
a

# Membuat data frame
df = data.frame(
  Nama = c("Tingky", "Winky", "Dipsy", "Lala", "Po"),
  Nilai = c(80, 75, 90, 50, 65),
  Lulus = c(TRUE, FALSE, TRUE, TRUE, FALSE)
)

df

#List Pertama

L1 <- list(
  num = c(13.4, 8.7, 4.3),
  int = c(1L, 2L, 3L),
  log = c(TRUE, FALSE, TRUE),
  m = matrix(1:12, nrow = 3, ncol = 4),
  df = data.frame(
    Nama = c("Tingky", "Winky", "Dipsy", "Lala", "Po"),
    Nilai = c(80, 75, 90, 50, 65),
    Lulus = c(TRUE, FALSE, TRUE, TRUE, FALSE)
  ))

L1

#List Gabungan

L2 <- list(
  numeric = v_num,
  integer = v_int,
  logical = v_log,
  matriks= m,
  DF = df,
  list1 = L1
)

L2