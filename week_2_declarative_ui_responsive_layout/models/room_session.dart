class RoomSession {
  final String id;
  final String roomName;
  final String activityName;
  final String description;
  final String status;
  final String time;
  final String category;

  const RoomSession({
    required this.id,
    required this.roomName,
    required this.activityName,
    required this.description,
    required this.status,
    required this.time,
    required this.category,
  });
}

// Data dummy diletakkan DI LUAR class RoomSession
final List<RoomSession> dummySessions = [
  RoomSession(
    id: '1',
    roomName: 'Lab Jaringan 1',
    activityName: 'Praktikum Konfigurasi Routing Dinamis OSPF dan BGP',
    description:
        'Mahasiswa akan melakukan konfigurasi routing dinamis menggunakan protokol OSPF dan BGP pada topologi jaringan campus. Fokus pada area border router dan redistribution route.',
    status: 'Berlangsung',
    time: '08.00 - 10.00',
    category: 'Jaringan',
  ),

  RoomSession(
    id: '2',
    roomName: 'Lab Mobile',
    activityName: 'Workshop Flutter Responsive Layout',
    description:
        'Membangun dashboard ketersediaan ruang dengan LayoutBuilder, Stack, dan Material 3.',
    status: 'Akan Datang',
    time: '10.00 - 12.00',
    category: 'Mobile',
  ),

  RoomSession(
    id: '3',
    roomName: 'Lab Basis Data',
    activityName: 'Praktikum Perancangan Database',
    description:
        'Mahasiswa melakukan perancangan database, pembuatan tabel, relasi, dan normalisasi data.',
    status: 'Tersedia',
    time: '13.00 - 15.00',
    category: 'Basis Data',
  ),

  RoomSession(
    id: '4',
    roomName: 'Lab Pemrograman',
    activityName: 'Praktikum Pemrograman Berorientasi Objek',
    description:
        'Praktikum membahas konsep class, object, inheritance, encapsulation, dan polymorphism.',
    status: 'Selesai',
    time: '08.00 - 10.00',
    category: 'Pemrograman',
  ),

  RoomSession(
    id: '5',
    roomName: 'Lab Mobile',
    activityName: 'Pengembangan Aplikasi Mobile dengan Flutter',
    description:
        'Membuat antarmuka aplikasi mobile menggunakan Flutter dengan pendekatan responsive layout.',
    status: 'Akan Datang',
    time: '10.00 - 12.00',
    category: 'Mobile',
  ),

  RoomSession(
    id: '6',
    roomName: 'Lab Jaringan 2',
    activityName: 'Simulasi Routing dan Administrasi Jaringan',
    description:
        'Mahasiswa melakukan simulasi routing serta konfigurasi perangkat jaringan pada topologi yang telah disediakan.',
    status: 'Selesai',
    time: '13.00 - 15.00',
    category: 'Jaringan',
  ),

  RoomSession(
    id: '7',
    roomName: 'Lab Basis Data',
    activityName: 'Pengujian dan Optimasi Query Database',
    description:
        'Melakukan pengujian query dan optimasi database untuk meningkatkan efisiensi pengolahan data.',
    status: 'Berlangsung',
    time: '15.00 - 17.00',
    category: 'Basis Data',
  ),

  RoomSession(
    id: '8',
    roomName: 'Lab Pemrograman',
    activityName: 'Praktikum Algoritma dan Struktur Data',
    description:
        'Mempelajari implementasi algoritma dan struktur data seperti array, linked list, stack, dan queue.',
    status: 'Tersedia',
    time: '15.00 - 17.00',
    category: 'Pemrograman',
  ),
];