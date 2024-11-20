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


# Tugas 8
## Apa kegunaan const di Flutter? Jelaskan apa keuntungan ketika menggunakan const pada kode Flutter. Kapan sebaiknya kita menggunakan const, dan kapan sebaiknya tidak digunakan?
 const digunakan untuk mendefinisikan constant value atau nilai konstan, yang artinya nilai tersebut tidak akan berubah selama runtime aplikasi.

 Keuntungan `const`:
 1.  **Memori Lebih Efisien**: Objek const hanya dibuat sekali dan disimpan dalam memori. Semua penggunaan lain dari objek const akan mengacu ke objek yang sama, menghemat memori.
 2. **Performa Lebih Baik**: Karena objek const diinisialisasi saat kompilasi, tidak ada proses pembuatan ulang saat aplikasi berjalan. 
 3. **Penulisan Kode yang Lebih Bersih**: Dengan const, kode menjadi lebih konsisten dan menunjukkan niat bahwa objek tersebut tidak akan berubah.

**Gunakan** const pada widget atau objek yang statis dan tidak berubah, seperti teks atau ikon tetap, agar Flutter dapat mengoptimalkan performa dengan menghemat memori dan menghindari pembuatan ulang. Namun,    **hindari** const untuk widget yang perlu diperbarui berdasarkan variabel dinamis atau interaksi pengguna, seperti dalam StatefulWidget yang membutuhkan pembaruan tampilan.
 


## Jelaskan dan bandingkan penggunaan Column dan Row pada Flutter. Berikan contoh implementasi dari masing-masing layout widget ini!
1. **Column** 
   
   Column digunakan untuk menyusun widget secara vertikal, dari atas ke bawah. Setiap widget yang berada di dalam Column akan ditumpuk secara vertikal satu per satu. Parameter dari column ada 
   
    * `mainAxisAlignment`: Mengatur posisi widget di sepanjang sumbu utama (vertikal) dalam Column.
    * `crossAxisAlignment`: Mengatur posisi widget di sepanjang sumbu silang (horizontal) dalam Column.

    implementasi:
    ```
    Column(
        mainAxisAlignment: MainAxisAlignment.center,  
        crossAxisAlignment: CrossAxisAlignment.start,  
        children: <Widget>[
            Text("Flutter"),
            Icon(Icons.flutter_dash),
            ElevatedButton(
            onPressed: () {},
            child: Text("Click Me"),
            ),
        ],
    )
2. **Row**

   Row digunakan untuk menyusun widget secara horizontal, dari kiri ke kanan. Setiap widget yang berada di dalam Row akan disusun secara horizontal satu per satu. Parameter dari row ada :
    * `mainAxisAlignment`: Mengatur posisi widget di sepanjang sumbu utama (horizontal) dalam Row.
    * `crossAxisAlignment`: Mengatur posisi widget di sepanjang sumbu silang (vertikal) dalam Row.

    Implementasi:
    ```
    Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,   
        crossAxisAlignment: CrossAxisAlignment.center,     
        children: <Widget>[
            Icon(Icons.home),
            Text("Home"),
            Icon(Icons.settings),
        ],
    )
## Sebutkan apa saja elemen input yang kamu gunakan pada halaman form yang kamu buat pada tugas kali ini. Apakah terdapat elemen input Flutter lain yang tidak kamu gunakan pada tugas ini? Jelaskan!

Elemen input yang sudah dipakai:
1. **TextFormField**: Digunakan untuk mengisi Name, Deskripsi, dan amount dari item yang ingin diinput
2. **ElevatedButton**: Tombol untuk menyimpan input

Elemen input yang belum digunakan:

1.  **Checkbox**: Kotak centang untuk pilihan ya/tidak atau on/off. Cocok untuk menyetujui persyaratan atau pilihan biner.
  
2. **Radio Button**: Tombol untuk memilih satu opsi dari beberapa pilihan. Cocok untuk pilihan tunggal dalam sebuah grup, seperti jenis kelamin.

3. **Switch**: Sakelar on/off yang lebih visual, sering digunakan untuk pengaturan atau preferensi.

5. **Slider**: Penanda yang digeser untuk memilih nilai dalam rentang tertentu, seperti mengatur volume atau kecerahan.

6. **DatePicker**: Dialog pemilih tanggal. Cocok untuk input tanggal, seperti tanggal lahir atau pemesanan.

7. **DropdownButton**: Daftar turun bawah untuk memilih satu opsi dari banyak pilihan. Cocok untuk daftar seperti negara atau kategori.

8. **Autocomplete**: Input teks dengan fitur saran otomatis berdasarkan teks yang diketik. Cocok untuk pencarian produk atau lokasi.

## Bagaimana cara kamu mengatur tema (theme) dalam aplikasi Flutter agar aplikasi yang dibuat konsisten? Apakah kamu mengimplementasikan tema pada aplikasi yang kamu buat?
dengan membuat scheme di dalam theme pada `main.dart`
``` 
 theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch(
          primarySwatch: Colors.teal,
        ).copyWith(secondary: Colors.teal[600]),
        useMaterial3: true,
      ),
```
dan untuk setiap widget yang ingin seragam dengan theme aplikasi dapat menambah kode ini `color: Theme.of(context).colorScheme.primary`

## Bagaimana cara kamu menangani navigasi dalam aplikasi dengan banyak halaman pada Flutter?
Pada aplikasi ini saya menggunakan `push`. `Push` ini akan menjadi action ketika suatu tombol atau tulisan ditekan `onTap: (){}`. Contoh dari kode push adalah seperti ini 
```
Navigator.push(
    context,
    MaterialPageRoute(
    builder: (context) => PageLain(),
    ));
```
# Tugas 9
## Jelaskan mengapa kita perlu membuat model untuk melakukan pengambilan ataupun pengiriman data JSON? Apakah akan terjadi error jika kita tidak membuat model terlebih dahulu?
Model diperlukan untuk mengonversi data JSON menjadi objek Dart yang dapat digunakan dalam aplikasi Flutter
Tanpa model, kita hanya akan mendapatkan Map<String, dynamic> yang:

* Rawan error karena tidak ada type safety
* Sulit untuk maintenance karena tidak ada struktur yang jelas
* Tidak ada autocomplete dari IDE

Meskipun tidak akan selalu error tanpa model, tapi berisiko:

* Runtime errors jika struktur JSON berubah
* Typo dalam pengaksesan property
* Kesulitan dalam debugging

## Jelaskan fungsi dari library http yang sudah kamu implementasikan pada tugas ini
* Library http digunakan untuk melakukan HTTP requests ke server
* Mendukung berbagai metode HTTP (GET, POST, PUT, DELETE)
* Dapat menangani headers dan body requests
* Memberikan response yang bisa diproses lebih lanjut  

## Jelaskan fungsi dari CookieRequest dan jelaskan mengapa instance CookieRequest perlu untuk dibagikan ke semua komponen di aplikasi Flutter.
CookieRequest berfungsi untuk:

* Menyimpan dan mengelola cookies session
* Menjaga state autentikasi
* Melakukan HTTP requests dengan cookies yang konsisten


Instance perlu dibagikan karena:

* Menjaga konsistensi session di seluruh aplikasi
* Menghindari multiple login
* Memungkinkan akses state autentikasi dari berbagai widget
* Efisiensi resource (tidak perlu membuat instance baru berkali-kali)

## Jelaskan mekanisme pengiriman data mulai dari input hingga dapat ditampilkan pada Flutter.
1. User memasukkan data melalui form
2. Data divalidasi di Flutter
3. Data dikonversi ke format JSON
4. Dikirim ke Django menggunakan http.post
5. Django memproses data
6. Mengirim response
7. Flutter menerima dan memparse response
8. UI diupdate sesuai response

## Jelaskan mekanisme autentikasi dari login, register, hingga logout. Mulai dari input data akun pada Flutter ke Django hingga selesainya proses autentikasi oleh Django dan tampilnya menu pada Flutter.

**login**
1. User input credentials di Flutter
2. Data dikirim ke Django endpoint /login
3. Django memvalidasi credentials
4. Jika valid:
   - Django membuat session
   - Mengirim cookies
5. Flutter menyimpan cookies via CookieRequest
6. Redirect ke homepage

**register**
1. User input data registrasi
2. Data dikirim ke Django endpoint /register
3. Django validasi data
4. Jika valid:
   - Create user baru
   - Return success response
5. Flutter redirect ke login page
 
**logout**
1. User tap logout
2. Request ke Django endpoint /logout
3. Django hapus session
4. CookieRequest clear cookies
5. Flutter redirect ke login page