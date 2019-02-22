# SoalShift_modul1_C12
crontab unutk no 1 dan 4

![crontab](https://user-images.githubusercontent.com/34019306/53236266-72dcac80-36c6-11e9-981c-23b2322d4522.png)

1.Anda diminta tolong oleh teman anda untuk mengembalikan filenya yang telah
dienkripsi oleh seseorang menggunakan bash script, file yang dimaksud adalah
nature.zip. Karena terlalu mudah kalian memberikan syarat akan membuka seluruh
file tersebut jika pukul 14:14 pada tanggal 14 Februari atau hari tersebut adalah hari
jumat pada bulan Februari.
Hint: Base64, Hexdump

![soal1](https://user-images.githubusercontent.com/34019306/53231992-b92d0e00-36bc-11e9-8d8a-9811b613a913.png)
-Saya menggunakan looping for karena saat saya lihat foldernya, isi filenya tidak lebih dari 97 image maka dari itu saya menggunakan parameter itu.

-awk -v berguna agar saya bisa memasukan suatu variable di dalam sintaks awk, didalam kasus saya variable i yaitu sebagai counter urutan image yang mau didecrypt.

2. Anda merupakan pegawai magang pada sebuah perusahaan retail, dan anda diminta
untuk memberikan laporan berdasarkan file WA_Sales_Products_2012-14.csv.
Laporan yang diminta berupa:

a. Tentukan negara dengan penjualan(quantity) terbanyak pada tahun
2012.

Syntax:
awk -F ',' '{if($7=='2012') i[$1]+=$10} END{for (j in i)print j}' WA_Sales_Products_2012-14.csv | sort -nr | head -1 

Penjelasan:
- {if($7=='2012') i[$1]+=$10} berarti ketika tahun bernilai 2012, maka quantity setiap negara akan berada pada kolom ke-10.
- {for (j in i)print j} berarti untuk variabel j disimpan di i lalu akan mencetak hasil dari variabel j.
- sort -nr berarti akan mengurutkan dari yang terbesar ke terkecil.
- head -1 berarti mengambil data pada baris pertama, yaitu yang memiliki penjualan terbanyak.

b. Tentukan tiga product line yang memberikan penjualan(quantity)
terbanyak pada soal poin a.

Syntax:
awk -F ',' '{if($7 == "2012" && $1=="United States") i[$4]+=$10} END {for(j in i)print j}' WA_Sales_Products_2012-14.csv | sort -nr | head -3

Penjelasan:
- {if($7 == "2012" && $1=="United States") i[$4]+=$10} berarti ketika tahun bernilai 2012 dan negara adalah United States, yang akan diletakkan pada kolom ke-10 dan disimpan dalam array.
- for(j in i)print j} berarti variabel j disimpan di i lalu akan mencetak variabel j.
- sort -nr berarti mengurutkan dari yang terbesar ke terkecil.
- head -3 berarti mengambil data dari 3 baris pertama, yaitu 3 product line yang memberikan penjualan terbanyak.

c. Tentukan tiga product yang memberikan penjualan(quantity)
terbanyak berdasarkan tiga product line yang didapatkan pada soal
poin b.

Syntax:
awk -F ',' '{if($7=="2012" && $1 == "United States" && ($4=="Personal Accessories" || $4=="Camping Equipment" || $4=="Outdoor Protection")) i[$6]+=$10;} END {for(j in i)print i[j] ","  j}' WA_Sales_Products_2012-14.csv | sort -nr | head -n3 | awk -F, '{print $2}'

Penjelasan:
- i[$6]+=$10 berarti data akan diletakkan pada kolom ke-10 dan disimpan pada array. 
- {for(j in i)print i[j] ","  j} berarti variabel j disimpan di i lalu mencetak untuk variabel i dan j.
- sort -nr berarti mengurutkan data dari yang terbesar hingga terkecil.
- head -n3 berarti mengambil data dari 3 baris pertama.
- awk -F, '{print $2} berarti karena yang diminta tampilkan adalah produknya, maka yang dicetak hanya variabel j.

Hasil dari no 2 adalah:


3.Buatlah sebuah script bash yang dapat menghasilkan password secara acak
sebanyak 12 karakter yang terdapat huruf besar, huruf kecil, dan angka. Password
acak tersebut disimpan pada file berekstensi .txt dengan ketentuan pemberian nama
sebagai berikut:

a. Jika tidak ditemukan file password1.txt maka password acak tersebut
disimpan pada file bernama password1.txt

b. Jika file password1.txt sudah ada maka password acak baru akan
disimpan pada file bernama password2.txt dan begitu seterusnya.

c. Urutan nama file tidak boleh ada yang terlewatkan meski filenya
dihapus.

d. Password yang dihasilkan tidak boleh sama.

![soal3](https://user-images.githubusercontent.com/34019306/53234202-981aec00-36c1-11e9-9202-ab9fb9f19277.png)

- variable randompas berisi sintaks dengan pipe yang berguna untuk menggenerate nama password yang random dengan "tr -dc" dan "head -c" yang membatasi agar password hanya berisi alphabet dan int serta jumlah karakternya hanya 12

- karena parameter penyelesaian script tidak menentu maka menggunakan looping while dan memberhentikan proses jika kondisi penyelesaian telah terpenuhi.

- pertama kita menggunakan fungsi find untuk mencari apakah nama password sudah ada atau belom, jika belom maka nama file langsung mengikuti urutan n dan jika uda maka n di increment untuk nama file urutan selanjutnya.

4.Lakukan backup file syslog setiap jam dengan format nama file “jam:menit tanggal-
bulan-tahun”. Isi dari file backup terenkripsi dengan konversi huruf (string
manipulation) yang disesuaikan dengan jam dilakukannya backup misalkan sebagai
berikut:

a. Huruf b adalah alfabet kedua, sedangkan saat ini waktu menunjukkan
pukul 12, sehingga huruf b diganti dengan huruf alfabet yang memiliki
urutan ke 12+2 = 14.

b. Hasilnya huruf b menjadi huruf n karena huruf n adalah huruf ke
empat belas, dan seterusnya.

c. setelah huruf z akan kembali ke huruf a

d. Backup file syslog setiap jam.

e. dan buatkan juga bash script untuk dekripsinya.

![soal4](https://user-images.githubusercontent.com/34019306/53232391-98b18380-36bd-11e9-83f4-d5a733ee1a3b.png)

-Pertama kita memasukan 2 array , yaitu array1 untuk isi alphabet huruf besar dan array2 untuk alphabet huruf kecil

-lalu menambahkan variable jam yaitu untuk mengakses int jam brp pada linux kita dan menambahkan variable putar yang berguna untuk criteria pada soal a dan b.

-array3 adalah hasil gabungan 2xarray1 agar array berisi A-Z lalu blakangnya A-Z lagi sama seperti array4

-array 5 adalah saat array 1 kita ubah bentuknya dengan sintaks putar tadi, jadinya alphabet mulai dari urutan n jam.

-tujuan kita adalah mencapai sintaks tr yang membandingkan range 2 array yang nantinya bash men translate sendiri perubahan alphabet dari tiap line file (bentuk sintaks : tr "arr1[@]" "arr2[@]") -> mksd dari sintaks adalah semua yang ada di array 1 posisinya di translate menjadi seperti array 2.

-lalu memasukan semua bakup syslog menuju direktori sekarang menggunakan sintaks tadi.

![soal4](https://user-images.githubusercontent.com/34019306/53232530-db735b80-36bd-11e9-985a-5a6700d21521.png)

ini adalah bash script untuk decrypt nya, perbedaan dari script encryptnya adalah pertukaraan posisi indexing pada sintaks tr agar bentuknya kembali seperti semula.


5. Buatlah sebuah script bash untuk menyimpan record dalam syslog yang memenuhi
kriteria berikut:

a. Tidak mengandung string “sudo”, tetapi mengandung string “cron”,
serta buatlah pencarian stringnya tidak bersifat case sensitive,
sehingga huruf kapital atau tidak, tidak menjadi masalah.

![5a - shift 1](https://user-images.githubusercontent.com/47876805/53219667-7571de80-3693-11e9-852f-599b239beb2d.png) 

Untuk menampilkan string yang mengandung "cron" dan tidak mengandung string "sudo" maka dilakukan bash dengan cara 
bash soal5.sh | grep cron, hasilnya akan seperti ini:
![5a bash - shift 1 bener](https://user-images.githubusercontent.com/47876805/53220337-94be3b00-3696-11e9-8c00-ea067012ebd6.png) 

b. Jumlah field (number of field) pada baris tersebut berjumlah kurang
dari 13.

![5b - shift 1](https://user-images.githubusercontent.com/47876805/53219669-760a7500-3693-11e9-94bd-353ac84723af.png) 

Ketika di bash maka hasilnya akan seperti ini:
![5b bash - shift 1](https://user-images.githubusercontent.com/47876805/53219668-760a7500-3693-11e9-9713-79b7a6531c87.png) 

c. Masukkan record tadi ke dalam file logs yang berada pada direktori

![5c - shift 1](https://user-images.githubusercontent.com/47876805/53220338-9556d180-3696-11e9-920b-ba48a94b350c.png)

Maka hasilnya akan terlihat terbentuk file bernama soal5.log yang berisi:
![5d log - shift 1](https://user-images.githubusercontent.com/47876805/53220093-51170180-3695-11e9-98b5-fd9faf935059.png)

d. Jalankan script tadi setiap 6 menit dari menit ke 2 hingga 30, contoh
13:02, 13:08, 13:14, dst.

Maka kita merubah settingan crontab dengan cara crontab -e, lalu kita ubah menjadi seperti ini:
![5d - shift 1](https://user-images.githubusercontent.com/47876805/53219673-76a30b80-3693-11e9-9a99-4403c384e01d.png)

Setelah itu, kita tunggu sampai terdapat file bernama soal5.log. Kalau file tersebut sudah ada berarti crontab kita sudah berhasil.
