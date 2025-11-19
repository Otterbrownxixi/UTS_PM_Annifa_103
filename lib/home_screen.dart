import 'package:flutter/material.dart';
import 'data_models.dart';
import 'product_detail_screen.dart'; 
import 'product_list_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  Widget _buildCategoryCard(BuildContext context, Category category) {
    return Expanded(
      child: SizedBox( 
        height: 120,
          child: Card(
            child: InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ProductListScreen(category: category),
                  ),
                );
              },
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(category.icon, size: 40,color:  const Color.fromARGB(255, 145, 192, 215)),
                    const SizedBox(height: 8),
                    Text(
                      category.name,
                      textAlign: TextAlign.center,
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            ),
          ),
      ),
    );
  }

  Widget _buildProductListItem(BuildContext context, Product product) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ProductDetailScreen(product: product),
          ),
        );
      },
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 8.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(8.0),
              child: Image.asset(
                product.imageUrl,
                width: 80,
                height: 80,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(width: 12),
            // Detail Produk
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    product.name,
                    style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    'Rp ${product.price.toStringAsFixed(0)}',
                    style: const TextStyle(color: Colors.red, fontSize: 14),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    product.description,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(color: Colors.grey),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final randomProducts = List.of(dummyProducts)..shuffle(); 
    final featuredProducts = randomProducts.take(4).toList();

    return Scaffold(
      appBar: AppBar(
        title: const Text("Tokoku"),
        backgroundColor: const Color.fromARGB(255, 145, 192, 215),
        foregroundColor: Colors.white,
      ),
      body: SingleChildScrollView( 
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // 1. Judul Kategori
              const Text(
                "Kategori",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 16),
              
              // 2. Barisan Kategori
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: dummyCategories
                    .map((category) => _buildCategoryCard(context, category))
                    .toList(),
              ),
              const SizedBox(height: 30),

              // 3. Judul Daftar Produk
              const Text(
                "Produk Unggulan", // Judul baru
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 16),

              // 4. Daftar Produk
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: featuredProducts
                    .map((product) => _buildProductListItem(context, product))
                    .toList(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}