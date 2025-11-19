import 'package:flutter/material.dart';
import 'data_models.dart';

class ProductDetailScreen extends StatelessWidget {
  final Product product;
  const ProductDetailScreen({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(product.name),
        backgroundColor: const Color.fromARGB(255, 145, 192, 215),
        foregroundColor: Colors.white,
      ),
      body: SingleChildScrollView( 
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column( 
            crossAxisAlignment: CrossAxisAlignment.stretch, 
            children: [
              // 1. Gambar Produk 
             ClipRRect( 
                borderRadius: BorderRadius.circular(12.0),
                child: Image.asset(
                  product.imageUrl,
                  fit: BoxFit.contain, 
                ),
              ),
              const SizedBox(height: 20),

              // 2. Nama Produk
              Text(
                product.name,
                style: const TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ), 
              const SizedBox(height: 10),

              // 3. Harga Produk
              Text(
                'Harga: Rp ${product.price.toStringAsFixed(0)}',
                style: const TextStyle(fontSize: 24, color: Colors.green, fontWeight: FontWeight.w600),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 20),
              
              // 4. JUDUL DESKRIPSI
              const Text(
                'Deskripsi Produk:',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              const Divider(), 

              // 5. DESKRIPSI PRODUK
              Text(
                product.description, // <-- Tambahkan deskripsi
                style: const TextStyle(fontSize: 16, height: 1.5),
                textAlign: TextAlign.justify,
              ),
              const SizedBox(height: 40),
            ],
          ),
        ),
      ),
    );
  }
}