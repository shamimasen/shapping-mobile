# Shapping

**Nama : Shalya Naura Lionita**
**NPM : 2306245535**
**Kelas : B**

**Tugas Pemrograman Berbasis Platform - PBP B**

>**Shapping :** merupakan proyek Flutter sederhana baru berbasis mobile untuk memenuhi Tugas Individu mata kuliah PBP Gasal 2024/2025

## **Penjelasan Tugas**

<details>
<summary> <b> Tugas 7: Elemen Dasar Flutter </b> </summary>

* ### Jelaskan apa yang dimaksud dengan stateless widget dan stateful widget, dan jelaskan perbedaan dari keduanya.

Stateless Widget adalah widget yang tidak memiliki state yang dapat berubah. Artinya, widget ini tidak bisa diperbarui atau diubah setelah pertama kali dibuat. Stateless widget cocok digunakan untuk elemen UI yang sifatnya statis, seperti teks, ikon, atau gambar yang tidak akan berubah sepanjang waktu. Contohnya termasuk Text, Icon, dan Image.

Stateful Widget adalah widget yang memiliki state yang dapat berubah selama siklus hidupnya. Ini memungkinkan widget untuk menampilkan data yang bisa diperbarui, seperti teks yang berubah atau animasi. Untuk membuat widget yang bersifat dinamis atau interaktif, seperti form input atau tombol yang bisa ditekan, kita biasanya menggunakan stateful widget. Contoh dari stateful widget adalah Checkbox, Slider, atau TextField.

**Tambahan :** Stateless widget tidak dapat diperbarui setelah diinisialisasi, sedangkan stateful widget dapat mengalami perubahan yang menyebabkan tampilan UI-nya diperbarui selama aplikasi berjalan.

* ### Sebutkan widget apa saja yang kamu gunakan pada proyek ini dan jelaskan fungsinya.

Pada proyek ini, terdapat beberapa widget yang telah saya gunakan, yaitu:
1. MaterialApp
Widget utama aplikasi Flutter yang mengatur beberapa konfigurasi penting, seperti tema aplikasi dan halaman utama. Pada kode ini, MaterialApp juga mengatur colorScheme untuk menentukan warna utama (primarySwatch: Colors.yellow) dan warna sekunder (secondary: Colors.orange[900]), serta menetapkan MyHomePage sebagai halaman utama aplikasi.

2. MyHomePage
MyHomePage merupakan StatelessWidget yang berfungsi sebagai halaman utama aplikasi. Pada halaman ini, berbagai komponen UI disusun dengan layout dasar yang diberikan oleh Scaffold, termasuk AppBar, Column, Row, GridView, dan InfoCard.

3. Scaffold
Struktur dasar halaman Flutter yang menyediakan AppBar, body, dan elemen lainnya. Di MyHomePage, Scaffold menampung AppBar di bagian atas dan Column di dalam body, tempat widget lainnya ditempatkan.

4. AppBar
Bagian atas halaman yang menampilkan judul aplikasi "Shapping" dengan warna teks Colors.orange dan latar belakang sesuai dengan primary dari tema aplikasi.

5. Column dan Row
Menyusun widget secara vertikal. Pada MyHomePage, Column digunakan untuk menampilkan beberapa elemen seperti Row (berisi InfoCard), Text, dan GridView. Sedangkan row Menyusun widget secara horizontal. Dalam kode ini, Row berisi tiga InfoCard untuk menampilkan informasi seperti NPM, Nama, dan Kelas.

6. InfoCard
Widget custom yang menggunakan Card untuk menampilkan informasi dengan judul (title) dan konten (content). Card ini digunakan untuk menampilkan data NPM, nama, dan kelas secara rapi dengan tampilan berbayang.

7. Text
Digunakan untuk menampilkan teks "Welcome to Shapping" di halaman utama, dengan gaya teks bold dan ukuran font 18.

8. GridView.count
Membuat layout grid dengan jumlah kolom yang tetap (3 kolom di proyek ini) untuk menampilkan ItemCard yang berisi menu utama, seperti "Lihat Daftar Produk", "Tambah Produk", dan "Logout". GridView.count juga dilengkapi dengan crossAxisSpacing dan mainAxisSpacing untuk mengatur jarak antar-kolom dan antar-baris.

9. ItemCard
Widget custom yang menggunakan Material untuk menyediakan warna latar belakang berdasarkan warna pada ItemHomepage, dan InkWell untuk membuat efek klik pada kartu. ItemCard berisi ikon (Icon) dan teks (Text) yang ditampilkan di tengah kartu, sesuai dengan data dari ItemHomepage.

10. Material
Membuat elemen dengan gaya Material Design. Pada ItemCard, Material digunakan sebagai latar belakang kartu dengan warna sesuai properti item.color.

11. InkWell
Widget untuk mendeteksi interaksi pengguna (seperti klik) dan menampilkan efek seperti ripple. Pada ItemCard, InkWell dipakai untuk membuat kartu interaktif. Ketika kartu diklik, InkWell memicu aksi onTap yang menampilkan pesan SnackBar.

12. SnackBar
Menampilkan pesan sementara di bagian bawah layar untuk memberi umpan balik ketika pengguna menekan ItemCard. Pesan ini menunjukkan bahwa pengguna telah menekan tombol tertentu, seperti "Kamu telah menekan tombol Lihat Daftar Produk!".

13. Icon
Menampilkan ikon sesuai dengan yang didefinisikan dalam ItemHomepage. Ikon ditampilkan di ItemCard dengan warna putih dan ukuran 30, menyesuaikan tema dan warna latar ItemCard.

* ### Apa fungsi dari setState()? Jelaskan variabel apa saja yang dapat terdampak dengan fungsi tersebut.

setState() adalah metode yang digunakan dalam Stateful widget untuk memberi tahu Flutter bahwa ada perubahan state yang harus diterapkan pada widget tersebut. Ketika setState() dipanggil, Flutter akan menjalankan ulang metode build() dan memperbarui UI berdasarkan perubahan state tersebut. Fungsi ini umumnya digunakan untuk memperbarui data yang akan memengaruhi tampilan.

Variabel yang dapat terdampak oleh setState() adalah variabel-variabel yang berada dalam State class dan berfungsi untuk menyimpan data dinamis dalam widget tersebut. Sebagai contoh, jika ada variabel counter yang bertambah setiap kali tombol ditekan, memanggil setState() pada saat menambah counter akan memperbarui UI untuk menampilkan nilai counter yang baru.

* ### Jelaskan perbedaan antara const dengan final.

const: Menandakan bahwa nilai variabel bersifat konstan atau tidak berubah dan nilainya ditentukan pada saat kompilasi. Variabel const harus diinisialisasi dengan nilai konstan atau literal yang sudah diketahui saat kompilasi.

final: Menandakan bahwa variabel hanya dapat diinisialisasi sekali saja, tetapi nilainya bisa ditentukan saat runtime, bukan hanya saat kompilasi. Jadi, final lebih fleksibel karena bisa digunakan untuk nilai yang tidak diketahui pada saat kompilasi, tetapi tidak bisa diubah setelah diberi nilai.

## **Implementasi Checklist**

* ### Membuat Program Flutter Baru

Menyiapkan direktori baru kemudian menjalankan perintah berikut pada terminal sehingga dapat membuat proyek Flutter baru.
```
flutter create shapping
```

Masuk ke dalam folder 'shapping' dari terminal
```
cd shapping
```

Membuat file menu.dart baru di dalam proyek Flutter dan di dalam direktori lib, kemudian import : 
```
import 'package:flutter/material.dart';
```

Memindahkan `class MyHomePage ...` dari main.dart ke menu.dart lalu menghapus  `class _MyHomePage State ...` di main.dart.

Menambahkan import kode menu.dart ke main.dart
```
`import 'package:shapping/menu.dart';`
```

* ### Membuat Tombol Sederhana
Menambahkan dan mengganti kode dalam menu.dart menjadi seperti ini:
```
import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  MyHomePage({super.key});
  final String npm = '2306245535'; // NPM
  final String name = 'Shalya Naura Lionita'; // Nama
  final String className = 'PBP B'; // Kelas
  final List<ItemHomepage> items = [
    ItemHomepage("Lihat Daftar Produk", Icons.shopping_bag,
        Colors.orange[900]!), // Dark orange
    ItemHomepage(
        "Tambah Produk", Icons.add, Colors.orange[600]!), // Medium orange
    ItemHomepage("Logout", Icons.logout, Colors.orange[300]!), // Light orange
  ];

  @override
  Widget build(BuildContext context) {
    // Scaffold menyediakan struktur dasar halaman dengan AppBar dan body.
    return Scaffold(
      // AppBar adalah bagian atas halaman yang menampilkan judul.
      appBar: AppBar(
        title: const Text(
          'Shapping',
          style: TextStyle(
            color: Colors.orange,
            fontWeight: FontWeight.bold,
          ),
        ),
        // Warna latar belakang AppBar diambil dari skema warna tema aplikasi.
        backgroundColor: Theme.of(context).colorScheme.primary,
      ),
      // Body halaman dengan padding di sekelilingnya.
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        // Menyusun widget secara vertikal dalam sebuah kolom.
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Row untuk menampilkan 3 InfoCard secara horizontal.
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                InfoCard(title: 'NPM', content: npm),
                InfoCard(title: 'Name', content: name),
                InfoCard(title: 'Class', content: className),
              ],
            ),

            // Memberikan jarak vertikal 16 unit.
            const SizedBox(height: 16.0),

            // Menempatkan widget berikutnya di tengah halaman.
            Center(
              child: Column(
                // Menyusun teks dan grid item secara vertikal.

                children: [
                  // Menampilkan teks sambutan dengan gaya tebal dan ukuran 18.
                  const Padding(
                    padding: EdgeInsets.only(top: 16.0),
                    child: Text(
                      'Welcome to Shapping',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18.0,
                      ),
                    ),
                  ),

                  // Grid untuk menampilkan ItemCard dalam bentuk grid 3 kolom.
                  GridView.count(
                    primary: true,
                    padding: const EdgeInsets.all(20),
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                    crossAxisCount: 3,
                    // Agar grid menyesuaikan tinggi kontennya.
                    shrinkWrap: true,

                    // Menampilkan ItemCard untuk setiap item dalam list items.
                    children: items.map((ItemHomepage item) {
                      return ItemCard(item);
                    }).toList(),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class InfoCard extends StatelessWidget {
  // Kartu informasi yang menampilkan title dan content.

  final String title; // Judul kartu.
  final String content; // Isi kartu.

  const InfoCard({super.key, required this.title, required this.content});

  @override
  Widget build(BuildContext context) {
    return Card(
      // Membuat kotak kartu dengan bayangan dibawahnya.
      elevation: 2.0,
      child: Container(
        // Mengatur ukuran dan jarak di dalam kartu.
        width: MediaQuery.of(context).size.width /
            3.5, // menyesuaikan dengan lebar device yang digunakan.
        padding: const EdgeInsets.all(16.0),
        // Menyusun title dan content secara vertikal.
        child: Column(
          children: [
            Text(
              title,
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8.0),
            Text(content),
          ],
        ),
      ),
    );
  }
}

class ItemHomepage {
  final String name;
  final IconData icon;
  final Color color;

  ItemHomepage(this.name, this.icon, this.color);
}

class ItemCard extends StatelessWidget {
  // Menampilkan kartu dengan ikon dan nama.

  final ItemHomepage item;

  const ItemCard(this.item, {super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      // Menentukan warna latar belakang dari tema aplikasi.
      color: item.color,
      // Membuat sudut kartu melengkung.
      borderRadius: BorderRadius.circular(12),

      child: InkWell(
        // Aksi ketika kartu ditekan.
        onTap: () {
          // Menampilkan pesan SnackBar saat kartu ditekan.
          ScaffoldMessenger.of(context)
            ..hideCurrentSnackBar()
            ..showSnackBar(SnackBar(
                content: Text("Kamu telah menekan tombol ${item.name}!")));
        },
        // Container untuk menyimpan Icon dan Text
        child: Container(
          padding: const EdgeInsets.all(8),
          child: Center(
            child: Column(
              // Menyusun ikon dan teks di tengah kartu.
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  item.icon,
                  color: Colors.white,
                  size: 30.0,
                ),
                const Padding(padding: EdgeInsets.all(3)),
                Text(
                  item.name,
                  textAlign: TextAlign.center,
                  style: const TextStyle(color: Colors.white),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
```

* ### Menjalankan program dan push ke github
Setelah kode selesai dibuat, jalankan perintah 
```
flutter run
```
di terminal pada root folder untuk memeriksa apakah kode yang dibuat sudah benar.

Setelah kode sudah berjalan dengan benar, melakukan push ke github dengan menjalankan perintah 'git init', 'git add .', 'git commit', dan 'git push' ke dalam repositori baru yang telah dibuat (disini namanya adalah shapping-mobile).

</details>