// lib/screens/product_list_screen.dart
import 'package:flutter/material.dart';
import 'data_models.dart';
import 'product_detail_screen.dart';

class ProductListScreen extends StatelessWidget {
  final Category category;
  const ProductListScreen({super.key, required this.category});

  @override
  Widget build(BuildContext context) {
    final filteredProducts = dummyProducts
        .where((p) => p.categorySlug == category.slug)
        .toList();

    return Scaffold(
      appBar: AppBar(
        title: Text(category.name), // TITLE
        backgroundColor: const Color.fromARGB(255, 145, 192, 215),
        foregroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column( 
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "Daftar Produk ${category.name}", 
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
            ),
            const SizedBox(height: 10),
            Expanded(
              child: GridView.builder( 
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, 
                  crossAxisSpacing: 10.0,
                  mainAxisSpacing: 10.0,
                  childAspectRatio: 0.85, 
                ),
                itemCount: filteredProducts.length,
                itemBuilder: (context, index) {
                  final product = filteredProducts[index];
                  return Card(
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ProductDetailScreen(product: product),
                          ),
                        );
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Expanded( 
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Image.asset(
                                  product.imageUrl,
                                  fit: BoxFit.cover, 
                                ),
                              ),
                            ),
                            const SizedBox(height: 8),
                            Text(
                              product.name,
                              textAlign: TextAlign.center,
                              style: const TextStyle(fontWeight: FontWeight.bold),
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis, // 
                            ),
                            const SizedBox(height: 4),
                            Text(
                              'Rp ${product.price.toStringAsFixed(0)}', //\
                              style: const TextStyle(color: Colors.red, fontSize: 16),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}