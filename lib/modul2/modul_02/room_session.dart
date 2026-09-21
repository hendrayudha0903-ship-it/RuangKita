class RoomSession {
  final String roomName;
  final String activity;
  final String time;
  final String status;
  final String description;

  RoomSession({
    required this.roomName,
    required this.activity,
    required this.time,
    required this.status,
    required this.description,
  });
}

final List<RoomSession> roomSessions = [
  RoomSession(
    roomName: 'Lab Jaringan',
    activity: 'Praktikum Jaringan Komputer',
    time: '08.00 - 10.00',
    status: 'Berlangsung',
    description:
        'Praktikum jaringan komputer membahas konfigurasi perangkat jaringan, pengalamatan IP, serta simulasi koneksi antarperangkat.',
  ),
  RoomSession(
    roomName: 'Lab Mobile',
    activity: 'Praktikum Flutter Responsive Layout',
    time: '10.00 - 12.00',
    status: 'Akan Datang',
    description:
        'Mahasiswa melakukan praktik membangun antarmuka aplikasi Flutter menggunakan layout responsif dan Material 3.',
  ),
  RoomSession(
    roomName: 'Lab Basis Data',
    activity: 'Praktikum Database MySQL',
    time: '13.00 - 15.00',
    status: 'Tersedia',
    description:
        'Laboratorium tersedia untuk kegiatan praktikum database dan pengembangan sistem informasi menggunakan MySQL.',
  ),
  RoomSession(
    roomName: 'Lab Pemrograman',
    activity: 'Praktikum Pemrograman Web Lanjut',
    time: '15.00 - 17.00',
    status: 'Selesai',
    description:
        'Kegiatan praktikum pemrograman web telah selesai dan laboratorium dapat digunakan kembali.',
  ),
  RoomSession(
    roomName: 'Lab Jaringan',
    activity: 'Simulasi Administrasi Server dan Keamanan Jaringan',
    time: '08.00 - 11.00',
    status: 'Akan Datang',
    description:
        'Kegiatan membahas administrasi server, konfigurasi keamanan jaringan, pengelolaan akses pengguna, dan simulasi pengamanan sistem.',
  ),
  RoomSession(
    roomName: 'Lab Mobile',
    activity: 'Pengembangan Aplikasi Mobile',
    time: '11.00 - 13.00',
    status: 'Berlangsung',
    description:
        'Mahasiswa mengembangkan aplikasi mobile dan melakukan pengujian antarmuka pada beberapa ukuran layar.',
  ),
  RoomSession(
    roomName: 'Lab Basis Data',
    activity: 'Pengolahan Data dan SQL',
    time: '13.00 - 15.00',
    status: 'Selesai',
    description:
        'Mahasiswa melakukan latihan query, manipulasi data, pembuatan tabel, serta pengujian relasi antar tabel.',
  ),
  RoomSession(
    roomName: 'Lab Pemrograman',
    activity:
        'Workshop Pengembangan Sistem Informasi Berbasis Web untuk Proyek Mahasiswa',
    time: '15.00 - 17.00',
    status: 'Tersedia',
    description:
        'Laboratorium dapat digunakan untuk pengembangan proyek mahasiswa, coding, pengujian aplikasi, dokumentasi, dan pengembangan sistem.',
  ),
];