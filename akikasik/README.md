# TUGAS 7

## Jelaskan apa yang dimaksud dengan stateless widget dan stateful widget, dan jelaskan perbedaan dari keduanya.
1. **Stateless Widget** : widget yang tidak memiliki state atau keadaan yang bisa berubah. Artinya, setelah widget ini tampil di layar, tampilan dan isinya tidak akan berubah selama widget tersebut aktif. Contoh dari Stateless Widget ini adalah widget Text, Icon, dan Container.

2. **Stateful Widget** : widget yang memiliki state atau keadaan yang bisa berubah selama aplikasi berjalan. Berbeda dengan Stateless Widget, Stateful Widget dapat memperbarui tampilannya ketika terjadi perubahan pada state di dalamnya. Contoh dari Stateful Widget antara lain Checkbox, TextField, dan AnimatedContainer.

## Sebutkan widget apa saja yang kamu gunakan pada proyek ini dan jelaskan fungsinya.

### Widget yang Digunakan dan Fungsinya

1. **Scaffold**  
   Scaffold adalah widget utama yang memberikan struktur dasar halaman aplikasi. Ini memungkinkan penggunaan `AppBar`, `Drawer`, dan `body` untuk menyusun tampilan halaman.

2. **AppBar**  
   AppBar adalah bagian atas halaman yang menampilkan judul aplikasi "Akikasik". Judul ini memiliki gaya teks khusus, dan warna latar belakang yang mengikuti tema aplikasi.

3. **Padding**  
   Widget ini memberikan ruang di sekitar widget tertentu, memastikan konten tidak menempel pada tepi layar. Dalam kode ini, `Padding` diterapkan di `body` agar seluruh konten halaman memiliki jarak dari tepi.

4. **Column**  
   Column menyusun widget secara vertikal. Dalam aplikasi ini, `Column` digunakan untuk menyusun elemen-elemen seperti `Row` dan `GridView` secara berurutan dari atas ke bawah.

5. **Row**  
   Row digunakan untuk menyusun widget secara horizontal. Di sini, `Row` menampilkan tiga `InfoCard` yang memuat informasi NPM, Nama, dan Kelas pengguna.

6. **SizedBox**  
   Digunakan untuk memberikan ruang kosong atau jarak antara widget. Dalam kode ini, `SizedBox` memberikan jarak vertikal 16 unit antara `Row` dan elemen lainnya.

7. **Center**  
   Center adalah widget yang memusatkan konten di tengah halaman. Dalam kode ini, `Center` digunakan untuk memastikan `Column` yang berisi teks sambutan dan `GridView` tampil di tengah halaman.

8. **Text**  
   Text digunakan untuk menampilkan teks statis. Dalam proyek ini, `Text` menampilkan judul halaman, informasi pengguna, dan teks lainnya dengan gaya yang bisa diubah.

9. **GridView.count**  
   GridView digunakan untuk menata widget dalam format grid. `GridView.count` memungkinkan penataan dalam bentuk grid dengan jumlah kolom yang tetap (dalam kode ini, tiga kolom).

10. **Card**  
    Card memberikan tampilan kotak dengan bayangan. Ini digunakan di dalam `InfoCard` untuk menampilkan informasi NPM, Nama, dan Kelas pengguna dengan tampilan yang rapi.

11. **Container**  
    Container menyediakan ruang dan pengaturan ukuran serta padding untuk widget di dalamnya. Di dalam `InfoCard` dan `ItemCard`, `Container` digunakan untuk mengatur ukuran kartu serta menampilkan konten dengan jarak yang sesuai.

12. **Material**  
    Material menambahkan efek material (misalnya, warna latar belakang) pada widget di dalamnya. Dalam kode ini, `Material` digunakan di `ItemCard` untuk memberikan warna latar belakang berdasarkan tema aplikasi.

13. **InkWell**  
    InkWell menambahkan efek interaksi seperti respons sentuhan dan splash saat widget ditekan. Di dalam `ItemCard`, ini digunakan untuk menampilkan `SnackBar` yang berisi pesan saat pengguna menekan salah satu kartu.

14. **SnackBar**  
    SnackBar digunakan untuk menampilkan notifikasi sementara di bagian bawah layar. Dalam kode ini, `SnackBar` muncul saat pengguna menekan `ItemCard`, memberikan umpan balik bahwa tombol ditekan.

15. **Icon**  
    Icon digunakan untuk menampilkan ikon yang diambil dari library `Icons`. Di dalam `ItemCard`, ikon ini sesuai dengan fitur tombol seperti "Lihat Daftar Produk", "Tambah Produk", dan "Logout".



## Apa fungsi dari `setState()`? Jelaskan variabel apa saja yang dapat terdampak dengan fungsi tersebut.
Fungsi `setState()` digunakan dalam `StatefulWidget` untuk memperbarui state (keadaan) dari widget tersebut. Ketika `setState()` dipanggil, Flutter akan merender ulang tampilan atau widget yang terkait, sehingga perubahan state bisa terlihat di layar.
 
`setState()` hanya mempengaruhi variabel-variabel atau nilai yang termasuk dalam kelas State dari `StatefulWidget`. Semua variabel yang diubah atau diperbarui dalam `setState()` akan berdampak pada tampilan widget tersebut, tapi tidak akan mempengaruhi widget lainnya di luar StatefulWidget yang sedang diperbarui.

## Jelaskan perbedaan antara const dengan final.
1. **const**
    const digunakan untuk membuat variabel yang bersifat konstan dan diinisialisasi secara langsung pada saat compile time (waktu kompilasi), yang berarti nilai dari variabel const harus sudah diketahui dan tetap saat kode dikompilasi.

2. **final**
    final digunakan untuk variabel yang hanya bisa diinisialisasi satu kali, tetapi nilainya bisa ditentukan pada saat runtime (waktu aplikasi berjalan). Jadi, variabel final tidak harus diketahui nilainya pada saat kompilasi.


## Jelaskan bagaimana cara kamu mengimplementasikan checklist-checklist di atas.

1. **Menginstall flutter SDK dan Android Studio.**

    Ikuti langkah-langkah yang ada pada website

2. **Membuat proyek flutter (akikasik_mob)**

    Membuat folder baru bernama akikasik_mob. Buka folder pada VSCode lalu jalankan `flutter create Akikasik` dan pindahkan direktori ke dalam folder baru yang muncul. Mencoba menjalankan flutter dengan `flutter run`

3. **Modifikasi file**

    Membuat file baru bernama `menu.dart` pada folder `lib` tambahkan import `package:flutter/material.dart`.

    Di `main.dart`, potong (cut) kode class`MyHomePage`hingga akhir file, lalu paste di `menu.dart`. Hapus seluruh isi kelas _MyHomePageState, ubah class`MyHomePage`extends StatefulWidget menjadi class`MyHomePage`extends StatelessWidget, dan sesuaikan constructor-nya agar menjadi `MyHomePage({super.key});`.

    Kemudian, ubah tema warna aplikasi di main.dart dengan mengatur properti colorScheme di dalam MaterialApp, warna yang saya pakai adalah teal. Pada bagian konfigurasi widget home, ubah baris home: const MyHomePage(title: 'Flutter Demo Home Page'), menjadi home: MyHomePage(), dengan menghapus const dan parameter title.

    Berikutnya, tambahkan variabel npm, name, dan className di dalam`MyHomePage`di menu.dart untuk menyimpan informasi pengguna. Buat juga `InfoCard`, sebuah class yang bertanggung jawab menampilkan informasi pengguna dalam format kartu. `InfoCard` ini dirancang untuk menerima parameter title dan content yang dapat menampilkan informasi NPM, nama, dan kelas pengguna.

    Selain itu, tambahkan ItemHomepage, class yang berisi atribut name, color dan icon untuk setiap tombol fitur di halaman. Buat daftar items dalam`MyHomePage`untuk menyimpan tombol-tombol fitur seperti "Lihat Produk", "Logout", dan "Tambah Produk". Selanjutnya, buat class `ItemCard` yang bertanggung jawab menampilkan tombol-tombol ini. Atur agar ketika ditekan, tombol akan memunculkan notifikasi SnackBar dengan pesan tertentu.

    Akhirnya, di dalam metode build() pada MyHomePage, susun `InfoCard` dan `ItemCard` dalam layout grid atau row agar tampil rapi di halaman utama. Jalankan aplikasi untuk memastikan semuanya berjalan baik, lalu periksa kode dengan flutter analyze untuk mendeteksi kesalahan. Jika langkah-langkah ini dilakukan dengan benar, proyek akan tertata rapi dan siap untuk dikembangkan lebih lanjut sesuai dengan prinsip clean architecture.
