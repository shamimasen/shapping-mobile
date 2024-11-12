# Shapping

**Nama : Shalya Naura Lionita**
**NPM : 2306245535**
**Kelas : B**

**Tugas Pemrograman Berbasis Platform - PBP B**

>**Shapping :** merupakan proyek Flutter sederhana baru berbasis mobile untuk memenuhi Tugas Individu mata kuliah PBP Gasal 2024/2025

## **Penjelasan Tugas**

<details>
<summary> <b> Tugas 7: Elemen Dasar Flutter </b> </summary>

## **Jawaban Tugas 7**

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

<details>
<summary> <b> Tugas 8: Flutter Navigation, Layouts, Forms, and Input Elements </b> </summary>

## **Jawaban Tugas 8**

* ### Apa kegunaan const di Flutter? Jelaskan apa keuntungan ketika menggunakan const pada kode Flutter. Kapan sebaiknya kita menggunakan const, dan kapan sebaiknya tidak digunakan?

Di Flutter, keyword const digunakan untuk menandai nilai atau widget yang bersifat immutable (tidak dapat diubah) dan tetap selama runtime aplikasi. Dengan const, Flutter dapat mengidentifikasi elemen-elemen yang tidak perlu di-render ulang karena tidak akan berubah, sehingga menghemat penggunaan memori dan meningkatkan performa aplikasi.

**Keuntungan menggunakan const:**

Mengurangi Render Ulang: Saat menggunakan const, Flutter tahu bahwa widget tersebut tidak akan berubah, sehingga dapat menghindari proses rebuild dan mempercepat waktu render.
Optimisasi Memori: const memungkinkan Flutter untuk menyimpan nilai yang sama hanya sekali di memori, mengurangi penggunaan memori secara keseluruhan.
Membantu dengan Debugging: Penggunaan const mempermudah untuk mengidentifikasi bagian-bagian dari UI yang bersifat statis atau dinamis, memudahkan proses debugging.

**Kapan menggunakan const:**

Gunakan const pada widget atau nilai yang benar-benar tidak berubah sepanjang lifecycle aplikasi, seperti ikon statis, teks statis, atau warna.
Pada widget yang diinisialisasi dengan nilai tetap, seperti Text("Hello World"), penggunaan const akan meningkatkan efisiensi render.

**Kapan tidak menggunakan const:**

Jangan gunakan const pada widget yang nilai atau tampilannya dapat berubah, seperti elemen yang tergantung pada input pengguna atau data yang dinamis.
Jika sebuah widget menerima parameter yang berubah-ubah atau berasal dari variabel, maka const sebaiknya tidak digunakan karena widget tersebut perlu di-render ulang saat data berubah.
Dengan menggunakan const secara tepat, kita bisa mendapatkan aplikasi yang lebih efisien dan performa yang lebih baik, terutama untuk aplikasi yang kompleks atau dengan banyak elemen UI.

* ### Jelaskan dan bandingkan penggunaan Column dan Row pada Flutter. Berikan contoh implementasi dari masing-masing layout widget ini!

Di Flutter, Column dan Row adalah widget untuk menyusun elemen secara vertikal dan horizontal.

**Column:** Menyusun elemen dari atas ke bawah. Mengisi lebar penuh, sementara tinggi disesuaikan dengan jumlah elemen. Gunakan mainAxisAlignment dan crossAxisAlignment untuk mengatur posisi elemen secara vertikal dan horizontal. Cocok untuk layout vertikal seperti formulir. Contoh (left_drawer.dart) :
```
Column(
  children: [
    Text(
      'Shapping',
      textAlign: TextAlign.center,
      style: TextStyle(
        fontSize: 24,
        fontWeight: FontWeight.bold,
        color: Colors.orange,
      ),
    ),
    Padding(padding: EdgeInsets.all(8)),
    Text(
      "Ayo tambahkan product kesukaanmu!",
      textAlign: TextAlign.center,
      style: TextStyle(
        fontSize: 15,
        fontWeight: FontWeight.normal,
        color: Colors.orange,
      ),
    ),
  ],
),
```

**Row:** Menyusun elemen dari kiri ke kanan. Mengisi tinggi penuh, sementara lebar disesuaikan dengan jumlah elemen. mainAxisAlignment dan crossAxisAlignment mengatur posisi elemen secara horizontal dan vertikal. Cocok untuk layout horizontal seperti bilah navigasi. Contoh :
```
Row(
  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
  children: [
    InfoCard(title: 'NPM', content: npm),
    InfoCard(title: 'Name', content: name),
    InfoCard(title: 'Class', content: className),
  ],
),
```

* ### Sebutkan apa saja elemen input yang kamu gunakan pada halaman form yang kamu buat pada tugas kali ini. Apakah terdapat elemen input Flutter lain yang tidak kamu gunakan pada tugas ini? Jelaskan!

Pada halaman form ProductEntryFormPage, terdapat beberapa elemen input utama yang digunakan, yaitu:

1. TextFormField untuk "Product" - Input teks untuk nama produk, dilengkapi dengan validator untuk memastikan input tidak kosong.
2. TextFormField untuk "Amount" - Input numerik untuk jumlah produk, dengan validator yang memastikan input tidak kosong dan berupa angka.
3. TextFormField untuk "Description" - Input teks untuk deskripsi produk, dengan validator untuk memastikan input tidak kosong.
4. ElevatedButton untuk "Save" - Tombol untuk menyimpan data input yang menampilkan dialog konfirmasi saat data tersimpan.

Elemen input lain di Flutter yang tidak digunakan ada beberapa, seperti Checkbox untuk memilih opsi boolean, Radio Button untuk memilih satu opsi dari beberapa pilihan, Switch untuk toggle antara dua status, Slider untuk memilih nilai dalam rentang tertentu, serta DropdownButton untuk memilih dari daftar opsi.

Elemen-elemen ini tidak digunakan karena form yang dibuat hanya memerlukan input teks dan angka sederhana, tanpa opsi boolean atau pilihan dari daftar.

* ### Bagaimana cara kamu mengatur tema (theme) dalam aplikasi Flutter agar aplikasi yang dibuat konsisten? Apakah kamu mengimplementasikan tema pada aplikasi yang kamu buat?

Dalam aplikasi Flutter, tema diatur melalui ThemeData, yang diterapkan pada widget MaterialApp. Ini memungkinkan kita untuk menetapkan gaya warna, font, bentuk, dan elemen UI lainnya secara konsisten di seluruh aplikasi. Dengan menggunakan tema, kita bisa memastikan aplikasi memiliki tampilan yang seragam, serta memudahkan perubahan desain hanya dengan mengupdate nilai tema.

Dalam kode yang saya buat, saya telah mengimplementasikan tema dengan menggunakan colorScheme.primary dan colorScheme.secondary untuk menentukan warna elemen UI seperti AppBar, Drawer, dan tombol. Hal ini memastikan bahwa warna utama dan sekunder tetap konsisten di seluruh aplikasi, memberikan tampilan yang lebih seragam.

* ### Bagaimana cara kamu menangani navigasi dalam aplikasi dengan banyak halaman pada Flutter?

Dalam aplikasi Flutter dengan banyak halaman, navigasi diatur menggunakan Navigator dan MaterialPageRoute. Flutter menyediakan berbagai metode navigasi yang memungkinkan perpindahan antar halaman dengan mulus, baik untuk mendorong (push) halaman baru ke dalam stack atau untuk menggantikan (replace) halaman yang ada.

Pada proyek saya, navigasi dilakukan dengan Navigator.push dan Navigator.pushReplacement untuk berpindah ke halaman formulir atau halaman utama. Ini membuat navigasi tetap efisien, serta memastikan pengguna tidak menumpuk terlalu banyak halaman dalam stack. Berikut contoh dalam kode saya :

**Navigator.push :**
```
if (item.name == "Tambah Produk") {
  Navigator.push(
    context,
    MaterialPageRoute(
        builder: (context) => const ProductEntryFormPage()),
  );
}
```

**Navigator.pushReplacement :**
```
onTap: () {
  Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (context) => MyHomePage(),
      ));
},
```

## **Implementasi Checklist**

* ### Membuat halaman tambah Form
Membuat berkas baru pada direktori lib dengan nama 'productentry_form.dart' kemudian diisi dengan kode :
```
import 'package:flutter/material.dart';
import 'package:shapping/widgets/left_drawer.dart';

class ProductEntryFormPage extends StatefulWidget {
  const ProductEntryFormPage({super.key});

  @override
  State<ProductEntryFormPage> createState() => _ProductEntryFormPageState();
}

class _ProductEntryFormPageState extends State<ProductEntryFormPage> {
  final _formKey = GlobalKey<FormState>();
  String _productname = "";
  String _description = "";
  int _amount = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text(
            'Form Tambah Product',
          ),
        ),
        backgroundColor: Theme.of(context).colorScheme.primary,
        foregroundColor: Colors.orange[900],
      ),
      drawer:
          const LeftDrawer(), // Menggunakan drawer yang diimport dari left_drawer.dart
      body: Form(
        key: _formKey,
        child: SingleChildScrollView(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                decoration: InputDecoration(
                  hintText: "Product",
                  labelText: "Product",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                ),
                onChanged: (String? value) {
                  setState(() {
                    _productname = value!;
                  });
                },
                validator: (String? value) {
                  if (value == null || value.isEmpty) {
                    return "Product tidak boleh kosong!";
                  }
                  return null;
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                decoration: InputDecoration(
                  hintText: "Amount",
                  labelText: "Amount",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                ),
                onChanged: (String? value) {
                  setState(() {
                    _amount = int.tryParse(value!) ?? 0;
                  });
                },
                validator: (String? value) {
                  if (value == null || value.isEmpty) {
                    return "Amount tidak boleh kosong!";
                  }
                  if (int.tryParse(value) == null) {
                    return "Amount harus berupa angka!";
                  }
                  return null;
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                decoration: InputDecoration(
                  hintText: "Description",
                  labelText: "Description",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                ),
                onChanged: (String? value) {
                  setState(() {
                    _description = value!;
                  });
                },
                validator: (String? value) {
                  if (value == null || value.isEmpty) {
                    return "Description tidak boleh kosong!";
                  }
                  return null;
                },
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(
                        Theme.of(context).colorScheme.primary),
                  ),
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            title: const Text('Product berhasil tersimpan'),
                            content: SingleChildScrollView(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('Product : $_productname'),
                                  Text('Amount : $_amount'),
                                  Text('Description : $_description'),
                                ],
                              ),
                            ),
                            actions: [
                              TextButton(
                                child: const Text('OK'),
                                onPressed: () {
                                  Navigator.pop(context);
                                  _formKey.currentState!.reset();
                                },
                              ),
                            ],
                          );
                        },
                      );
                    }
                  },
                  child: const Text(
                    "Save",
                    style: TextStyle(color: Colors.orange),
                  ),
                ),
              ),
            ),
          ],
        )),
      ),
    );
  }
}
```

* ### Navigasi ke form
Mmeindahkan fungsi ItemHomePage dan ItemCard ke dalam berkas baru bernama product_card di dalam direktori widgets, kemudian menambahkan kode berikut pada fungsi onTap() sebagai berikut :
```
onTap: () {
  ScaffoldMessenger.of(context)
    ..hideCurrentSnackBar()
    ..showSnackBar(SnackBar(
        content: Text("Kamu telah menekan tombol ${item.name}!")));

  if (item.name == "Tambah Produk") {
    Navigator.push(
      context,
      MaterialPageRoute(
          builder: (context) => const ProductEntryFormPage()),
    );
  }
},
```

* ### Membuat sebuah drawer
Membuat berkas baru pada direktori baru di dalam direktori lib sehingga path menjadi lib/widgets/left_drawer.dart, kemudian mengisi left_drawer.dart dengan kode :
```
import 'package:flutter/material.dart';
import 'package:shapping/screens/menu.dart';
import 'package:shapping/screens/productentry_form.dart';

class LeftDrawer extends StatelessWidget {
  const LeftDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.primary,
            ),
            child: const Column(
              children: [
                Text(
                  'Shapping',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.orange,
                  ),
                ),
                Padding(padding: EdgeInsets.all(8)),
                Text(
                  "Ayo tambahkan product kesukaanmu!",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.normal,
                    color: Colors.orange,
                  ),
                ),
              ],
            ),
          ),
          ListTile(
            leading: const Icon(Icons.home_outlined),
            title: const Text('Halaman Utama'),
            // Bagian redirection ke MyHomePage
            onTap: () {
              Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => MyHomePage(),
                  ));
            },
          ),
          ListTile(
            leading: const Icon(Icons.mood),
            title: const Text('Tambah Product'),
            // Bagian redirection ke MoodEntryFormPage
            onTap: () {
              // Navigasi ke halaman MoodEntryFormPage
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ProductEntryFormPage()),
              );
            },
          ),
        ],
      ),
    );
  }
}
```

</details>