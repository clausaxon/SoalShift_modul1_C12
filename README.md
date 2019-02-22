# SoalShift_modul1_C12
1.Anda diminta tolong oleh teman anda untuk mengembalikan filenya yang telah
dienkripsi oleh seseorang menggunakan bash script, file yang dimaksud adalah
nature.zip. Karena terlalu mudah kalian memberikan syarat akan membuka seluruh
file tersebut jika pukul 14:14 pada tanggal 14 Februari atau hari tersebut adalah hari
jumat pada bulan Februari.
Hint: Base64, Hexdump

![soal1](https://github.com/clausaxon/SoalShift_modul1_C12/Images/Screenshot from 2019-02-22 22-24-20.png)
-Saya menggunakan looping for karena saat saya lihat foldernya, isi filenya tidak lebih dari 97 image maka dari itu saya menggunakan parameter itu.
-awk -v berguna agar saya bisa memasukan suatu variable di dalam sintaks awk, didalam kasus saya variable i yaitu sebagai counter urutan image yang mau didecrypt.



3.Buatlah sebuah script bash yang dapat menghasilkan password secara acak
sebanyak 12 karakter yang terdapat huruf besar, huruf kecil, dan angka. Password
acak tersebut disimpan pada file berekstensi .txt dengan ketentuan pemberian nama
sebagai berikut:

a. Jika tidak ditemukan file password1.txt maka password acak tersebut
disimpan pada file bernama password1.txt
-Menggunakan  

b. Jika file password1.txt sudah ada maka password acak baru akan
disimpan pada file bernama password2.txt dan begitu seterusnya.
c. Urutan nama file tidak boleh ada yang terlewatkan meski filenya
dihapus.
d. Password yang dihasilkan tidak boleh sama.

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
