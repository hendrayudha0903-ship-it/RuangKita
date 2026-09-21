import 'package:flutter/material.dart';
import '../../models/room_session.dart';

const List<RoomSession> roomSessions = [
  RoomSession(
    namaRuang: 'Lab Mobile',
    namaKegiatan: 'Praktikum Flutter Dasar',
    waktu: '08.00 - 10.00',
    status: 'Berlangsung',
    deskripsi:
        'Kegiatan praktikum pengenalan Flutter dan pembuatan antarmuka aplikasi mobile sederhana.',
  ),
  RoomSession(
    namaRuang: 'Lab Jaringan',
    namaKegiatan: 'Konfigurasi Jaringan Komputer',
    waktu: '10.00 - 12.00',
    status: 'Akan Datang',
    deskripsi:
        'Mahasiswa melakukan konfigurasi perangkat jaringan dan mempelajari komunikasi antarperangkat.',
  ),
  RoomSession(
    namaRuang: 'Lab Basis Data',
    namaKegiatan: 'Praktikum Perancangan Database',
    waktu: '13.00 - 15.00',
    status: 'Tersedia',
    deskripsi:
        'Ruangan tersedia untuk kegiatan praktikum perancangan database dan pengelolaan data.',
  ),
  RoomSession(
    namaRuang: 'Lab Pemrograman',
    namaKegiatan: 'Praktikum Pemrograman Berorientasi Objek',
    waktu: '08.00 - 10.00',
    status: 'Selesai',
    deskripsi:
        'Kegiatan praktikum mengenai konsep class, object, inheritance, dan encapsulation.',
  ),
  RoomSession(
    namaRuang: 'Lab Mobile',
    namaKegiatan:
        'Pengembangan Aplikasi Mobile dengan Flutter untuk Sistem Informasi Kampus',
    waktu: '10.00 - 12.00',
    status: 'Akan Datang',
    deskripsi:
        'Mahasiswa mengembangkan aplikasi mobile menggunakan Flutter dengan menerapkan struktur antarmuka yang responsif dan mudah digunakan pada berbagai ukuran layar.',
  ),
  RoomSession(
    namaRuang: 'Lab Jaringan',
    namaKegiatan: 'Simulasi Routing dan Administrasi Jaringan',
    waktu: '13.00 - 15.00',
    status: 'Selesai',
    deskripsi:
        'Kegiatan simulasi routing serta administrasi jaringan menggunakan perangkat yang tersedia di laboratorium.',
  ),
  RoomSession(
    namaRuang: 'Lab Basis Data',
    namaKegiatan: 'Pengujian dan Optimasi Query Database',
    waktu: '15.00 - 17.00',
    status: 'Berlangsung',
    deskripsi:
        'Mahasiswa melakukan pengujian query dan mempelajari cara meningkatkan efisiensi pengambilan data.',
  ),
  RoomSession(
    namaRuang: 'Lab Pemrograman',
    namaKegiatan: 'Praktikum Algoritma dan Struktur Data',
    waktu: '15.00 - 17.00',
    status: 'Tersedia',
    deskripsi:
        'Laboratorium dapat digunakan untuk kegiatan praktikum algoritma dan struktur data.',
  ),
];

class RuangPraktikumPage extends StatefulWidget {
  final VoidCallback? onToggleTheme;
  final bool isDarkMode;

  const RuangPraktikumPage({
    super.key,
    this.onToggleTheme,
    this.isDarkMode = false,
  });

  @override
  State<RuangPraktikumPage> createState() => _RuangPraktikumPageState();
}

class _RuangPraktikumPageState extends State<RuangPraktikumPage> {
  String selectedStatus = 'Semua';

  final List<String> statusFilter = [
    'Semua',
    'Berlangsung',
    'Akan Datang',
    'Selesai',
    'Tersedia',
  ];

  @override
  Widget build(BuildContext context) {
    final filteredSessions = selectedStatus == 'Semua'
        ? roomSessions
        : roomSessions
            .where((session) => session.status == selectedStatus)
            .toList();

    return Scaffold(
      appBar: AppBar(
        title: const Text('RuangKita'),
        actions: [
          IconButton(
            tooltip: widget.isDarkMode
                ? 'Aktifkan Light Mode'
                : 'Aktifkan Dark Mode',
            icon: Icon(
              widget.isDarkMode
                  ? Icons.light_mode
                  : Icons.dark_mode,
            ),
            onPressed: widget.onToggleTheme,
          ),
        ],
      ),

      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Dashboard Ketersediaan Lab',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 8),

            // NIM TETAP SESUAI KETENTUAN TUGAS
            const Text(
              'M02-2101',
              style: TextStyle(
                fontSize: 16,
              ),
            ),

            const SizedBox(height: 20),

            // FILTER STATUS
            Wrap(
              spacing: 8,
              runSpacing: 8,
              children: statusFilter.map((status) {
                return ChoiceChip(
                  label: Text(status),
                  selected: selectedStatus == status,
                  onSelected: (selected) {
                    setState(() {
                      selectedStatus = status;
                    });
                  },
                );
              }).toList(),
            ),

            const SizedBox(height: 20),

            // DAFTAR RUANGAN
            Expanded(
              child: LayoutBuilder(
                builder: (context, constraints) {
                  int crossAxisCount;

                  if (constraints.maxWidth < 600) {
                    crossAxisCount = 1;
                  } else if (constraints.maxWidth < 840) {
                    crossAxisCount = 2;
                  } else {
                    crossAxisCount = 3;
                  }

                  return GridView.builder(
                    itemCount: filteredSessions.length,
                    gridDelegate:
                        SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: crossAxisCount,
                      crossAxisSpacing: 12,
                      mainAxisSpacing: 12,
                      childAspectRatio: 1.55,
                    ),
                    itemBuilder: (context, index) {
                      final session = filteredSessions[index];

                      return _buildRoomCard(session);
                    },
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  // ============================================================
  // CARD RUANGAN
  // ============================================================

  Widget _buildRoomCard(RoomSession session) {
    return Card(
      clipBehavior: Clip.antiAlias,
      child: InkWell(
        onTap: () {
          _showRoomDetail(session);
        },
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.all(16),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 48,
                    height: 48,
                    decoration: BoxDecoration(
                      color:
                          Theme.of(context).colorScheme.primaryContainer,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Icon(
                      Icons.meeting_room_outlined,
                      color: Theme.of(context)
                          .colorScheme
                          .onPrimaryContainer,
                    ),
                  ),

                  const SizedBox(width: 12),

                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(height: 4),

                        Text(
                          session.namaRuang,
                          style: const TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),

                        const SizedBox(height: 8),

                        Text(
                          session.namaKegiatan,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),

                        const SizedBox(height: 8),

                        Row(
                          children: [
                            const Icon(
                              Icons.access_time,
                              size: 18,
                            ),
                            const SizedBox(width: 6),
                            Expanded(
                              child: Text(
                                session.waktu,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                          ],
                        ),

                        const SizedBox(height: 8),

                        Text(
                          session.deskripsi,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            Positioned(
              top: 12,
              right: 12,
              child: _buildStatusBadge(session.status),
            ),
          ],
        ),
      ),
    );
  }

  // ============================================================
  // STATUS BADGE
  // ============================================================

  Widget _buildStatusBadge(String status) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 10,
        vertical: 6,
      ),
      decoration: BoxDecoration(
        color: Theme.of(context)
            .colorScheme
            .secondaryContainer,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Text(
        status,
        style: TextStyle(
          fontSize: 12,
          fontWeight: FontWeight.bold,
          color: Theme.of(context)
              .colorScheme
              .onSecondaryContainer,
        ),
      ),
    );
  }

  // ============================================================
  // DETAIL RUANGAN
  // ============================================================

  void _showRoomDetail(RoomSession session) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      showDragHandle: true,
      builder: (context) {
        return Padding(
          padding: const EdgeInsets.all(24),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  session.namaRuang,
                  style: const TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                const SizedBox(height: 16),

                Text(
                  session.namaKegiatan,
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  ),
                ),

                const SizedBox(height: 16),

                Row(
                  children: [
                    const Icon(Icons.access_time),
                    const SizedBox(width: 8),
                    Text(session.waktu),
                  ],
                ),

                const SizedBox(height: 12),

                Row(
                  children: [
                    const Icon(Icons.info_outline),
                    const SizedBox(width: 8),
                    Text('Status: ${session.status}'),
                  ],
                ),

                const SizedBox(height: 20),

                const Text(
                  'Deskripsi Kegiatan',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                const SizedBox(height: 8),

                Text(
                  session.deskripsi,
                  style: const TextStyle(
                    fontSize: 15,
                  ),
                ),

                const SizedBox(height: 24),

                SizedBox(
                  width: double.infinity,
                  child: FilledButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: const Text('Tutup'),
                  ),
                ),

                const SizedBox(height: 10),
              ],
            ),
          ),
        );
      },
    );
  }
}