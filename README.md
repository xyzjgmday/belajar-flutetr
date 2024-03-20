# Profil Teman Nurhidayat

## Pendahuluan

Kode yang diberikan merupakan aplikasi sederhana berbasis Flutter untuk menampilkan daftar profil teman. Setiap profil teman ditampilkan dalam bentuk kartu dengan informasi dasar seperti nama, NIM, dan foto. Pengguna dapat mengetuk kartu untuk melihat detail profil teman tersebut.

## Struktur Kode

- Kode terdiri dari beberapa kelas utama yang mewakili aplikasi dan widgetnya.
- Kelas `MyApp` digunakan sebagai entry point aplikasi Flutter.
- Kelas `ProfilePage` bertanggung jawab untuk menampilkan daftar profil teman dalam bentuk ListView.
- Kelas `ProfileCard` digunakan untuk menampilkan setiap profil teman dalam bentuk kartu.
- Kelas `DetailPage` digunakan untuk menampilkan detail profil teman setelah kartu ditekan.

## Implementasi Profil Teman

- Setiap teman direpresentasikan oleh sebuah `ProfileCard` yang menampilkan nama, NIM, foto profil, dan informasi tambahan.
- Ketika pengguna mengetuk salah satu `ProfileCard`, aplikasi akan menavigasikan mereka ke halaman `DetailPage` untuk melihat informasi detail.

## Navigasi

- Navigasi antara halaman dilakukan menggunakan `Navigator.push` dengan `MaterialPageRoute` untuk mengatur transisi antar halaman.
- Ini memungkinkan pengguna untuk melihat detail profil teman dengan lancar.

## Tampilan Detail Profil

- Halaman `DetailPage` menampilkan foto profil teman, nama, NIM, dan informasi tambahan.
- Ini memberikan pengguna informasi lebih rinci tentang teman yang dipilih.

## Penyesuaian Tambahan

- Widget `CircleAvatar` digunakan untuk menampilkan foto profil teman dalam bentuk lingkaran.
- Penggunaan `ListView` memungkinkan daftar profil teman untuk di-scroll jika jumlahnya banyak.

## Kesimpulan

Kode tersebut merupakan contoh penggunaan dasar Flutter untuk membuat aplikasi sederhana dengan navigasi antar halaman dan tata letak yang responsif. Ini dapat dijadikan dasar untuk pengembangan lebih lanjut seperti pengambilan data dinamis, peningkatan tampilan, dan fungsionalitas tambahan lainnya.
