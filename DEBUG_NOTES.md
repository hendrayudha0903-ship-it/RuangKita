# Debug Notes - RuangKita

## 1. Masalah `_buildRoomCard`

### Masalah
Aplikasi mengalami error karena fungsi `_buildRoomCard` belum tersedia saat digunakan untuk menampilkan kartu ruangan.

### Penyelesaian
Menambahkan fungsi `_buildRoomCard` untuk membangun tampilan kartu setiap ruangan.

---

## 2. Masalah Widget Test

### Masalah
File `widget_test.dart` masih menggunakan nama class aplikasi yang tidak sesuai dengan project.

### Penyelesaian
File test bawaan yang tidak diperlukan dihapus karena aplikasi tidak membutuhkan widget test tersebut untuk menjalankan project.

---

## 3. Peringatan pada `header_banner.dart`

### Masalah
Terdapat variabel `isDark` yang dibuat tetapi tidak digunakan.

### Penyelesaian
Variabel yang tidak digunakan dihapus.

---

## 4. Pemeriksaan Project

Project kemudian diperiksa menggunakan:

```bash
flutter analyze