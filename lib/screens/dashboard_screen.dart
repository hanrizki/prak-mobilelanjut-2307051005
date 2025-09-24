
import 'package:flutter/material.dart';

class DashboardScreen extends StatelessWidget {
  static const String route = '/dashboard';
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100], // Latar belakang abu-abu muda
      appBar: AppBar(
        title: const Text('Dashboard'),
        backgroundColor: Colors.white,
        elevation: 1,
        automaticallyImplyLeading: false,
      ), // AppBar
      body: Padding(
        padding: const EdgeInsets.all(16.0), // Beri jarak dari tepi layar
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start, // Ratakan konten ke kiri
          children: [
            // --- Teks Sapaan ---
            const Text(
              'Selamat Datang,',
              style: TextStyle(fontSize: 18, color: Colors.grey),
            ), // Text
            const Text(
              'Muhammad Farhan Rizki',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ), // Text
            const SizedBox(height: 24), // Spasi antar elemen

            // --- Kartu Informasi Utama ---
            // CONTAINER: Berfungsi sebagai kartu dengan sudut tumpul dan bayangan
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(20.0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(16.0),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withAlpha(13),
                    spreadRadius: 2,
                    blurRadius: 10,
                    offset: const Offset(0, 5),
                  ), // BoxShadow
                ],
              ), // BoxDecoration
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Ikon dan teks "Saldo Saat Ini"
                  Row(
                    children: [
                      Icon(Icons.account_balance_wallet_outlined, color: Colors.grey[500]),
                      const SizedBox(width: 8),
                      Text(
                        'Saldo Saat Ini',
                        style: TextStyle(fontSize: 14, color: Colors.grey[600]),
                      ), // Text
                    ],
                  ), // Row
                  const SizedBox(height: 8),
                  const Text(
                    'Rp 9.999.999.999',
                    style: TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                    ),
                  ), // Text
                  const SizedBox(height: 24),

                  // Tombol aksi di dalam kartu
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFF1E88FF),
                        foregroundColor: Colors.white,
                        padding: const EdgeInsets.symmetric(vertical: 14),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ), // RoundedRectangleBorder
                      ),
                      child: const Text('Lihat Detail Transaksi'),
                    ), // ElevatedButton
                  ), // SizedBox
                ],
              ), // Column
            ), // Container
          ],
        ), // Column
      ), // Padding
    ); // Scaffold
  }
}
