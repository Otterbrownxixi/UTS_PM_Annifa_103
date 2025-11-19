import 'package:flutter/material.dart';

class Category {
  final String name;
  final IconData icon;
  final String slug;

  Category({required this.name, required this.icon, required this.slug});
}

// Model untuk Produk
class Product {
  final String name;
  final String imageUrl;
  final double price;
  final String description;
  final String categorySlug;

  Product({
    required this.name,
    required this.imageUrl,
    required this.price,
    required this.description,
    required this.categorySlug,
  });
}

// Data Dummy Sederhana
final List<Category> dummyCategories = [
  Category(name: 'Makanan', icon: Icons.fastfood, slug: 'makanan'), 
  Category(name: 'Minuman', icon: Icons.local_drink, slug: 'minuman'), 
  Category(name: 'Elektronik', icon: Icons.lightbulb, slug: 'elektronik'), 
];


final List<Product> dummyProducts = [
  // --- MAKANAN ---
  Product( 
    name: 'Nasi Goreng', 
    imageUrl: 'assets/images/nasgor.png', 
    price: 18000, 
    description: 'Nasi yang digoreng dengan bumbu spesial, telur, dan irisan ayam. Tersedia pilihan pedas level 1-3.', 
    categorySlug: 'makanan'
  ),
  Product( 
    name: 'Bakso', 
    imageUrl: 'assets/images/bakso.png', 
    price: 22000, 
    description: 'Semangkuk bakso urat sapi asli dengan kuah kaldu yang gurih, lengkap dengan mie dan sayuran.', 
    categorySlug: 'makanan'
  ),
  Product( 
    name: 'Burger', 
    imageUrl: 'assets/images/burger.png', 
    price: 35000, 
    description: 'Roti bun lembut dengan patty daging sapi premium, keju, dan saus spesial. Disajikan dengan kentang goreng.', 
    categorySlug: 'makanan'
  ),
  Product( 
    name: 'Bibimbap', 
    imageUrl: 'assets/images/bibimbab.png', 
    price: 45000, 
    description: 'Nasi campur ala Korea dengan berbagai sayuran, daging, dan telur mata sapi, disajikan dengan saus gochujang.', 
    categorySlug: 'makanan'
  ),
  Product( 
    name: 'Mie Ayam', 
    imageUrl: 'assets/images/mieayam.png', 
    price: 17000, 
    description: 'Mie kenyal dengan topping ayam bumbu manis, sawi, dan pangsit renyah. Pilihan menu klasik yang tak pernah salah.', 
    categorySlug: 'makanan'
  ),
  Product( 
    name: 'Tteokbokki',
    imageUrl: 'assets/images/toppoki.png', 
    price: 38000, 
    description: 'Kue beras pedas khas Korea yang dimasak dengan saus gochujang manis pedas, fish cake, dan taburan wijen.', 
    categorySlug: 'makanan'
  ),
  
  // --- MINUMAN ---
  Product( 
    name: 'Es Coklat', 
    imageUrl: 'assets/images/coklat.png', 
    price: 14000, 
    description: 'Coklat murni premium yang dingin dan menyegarkan, manisnya pas tanpa pemanis buatan.', 
    categorySlug: 'minuman'
  ),
  Product( 
    name: 'Es Thai Tea', 
    imageUrl: 'assets/images/thaitea.png', 
    price: 16000, 
    description: 'Teh Thailand otentik dengan campuran susu kental yang creamy dan disajikan dingin.', 
    categorySlug: 'minuman'
  ),
  Product( 
    name: 'Es Matcha', 
    imageUrl: 'assets/images/matcha.png', 
    price: 18000, 
    description: 'Matcha powder murni dari Jepang, dipadukan dengan susu segar. Pilihan sempurna bagi pecinta rasa teh hijau.', 
    categorySlug: 'minuman'
  ),
  Product( 
    name: 'Es Kopi', 
    imageUrl: 'assets/images/kopi.png', 
    price: 12000, 
    description: 'Kopi hitam robusta pilihan yang diseduh dingin. Cocok untuk meningkatkan energi.', 
    categorySlug: 'minuman'
  ),
  Product( 
    name: 'Es Jeruk', 
    imageUrl: 'assets/images/jeruk.png', 
    price: 11000, 
    description: 'Air perasan jeruk segar yang kaya vitamin C, disajikan dengan es batu.', 
    categorySlug: 'minuman'
  ),
  Product( 
    name: 'Es Teh', 
    imageUrl: 'assets/images/esteh.png', 
    price: 8000, 
    description: 'Teh tawar atau manis dingin yang klasik dan pelepas dahaga.', 
    categorySlug: 'minuman'
  ),

  // --- ELEKTRONIK ---
  Product( 
    name: 'iPhone 11 Pro Max Ibox Resmi', 
    imageUrl: 'assets/images/hp.png', 
    price: 8500000, 
    description: 'Unit bekas Ibox resmi, kondisi mulus 95%. Baterai Health di atas 80%. Garansi toko 3 bulan.', 
    categorySlug: 'elektronik'
  ),
  Product( 
    name: 'TV Android LG 45 Inch', 
    imageUrl: 'assets/images/tv.png', 
    price: 4200000, 
    description: 'Smart TV dengan sistem operasi Android, resolusi 4K UHD. Bingkai tipis dan suara jernih.', 
    categorySlug: 'elektronik'
  ),
  Product( 
    name: 'Setrika Cosmos', 
    imageUrl: 'assets/images/setrika.png', 
    price: 250000, 
    description: 'Setrika kering daya rendah dengan lapisan anti lengket. Cepat panas dan hemat listrik.', 
    categorySlug: 'elektronik'
  ),
  Product( 
    name: 'Laptop MacBook Air 15', 
    imageUrl: 'assets/images/lp.png', 
    price: 18000000, 
    description: 'Laptop tipis dan ringan dengan chip M2 terbaru. Layar Liquid Retina 15-inci yang memukau.', 
    categorySlug: 'elektronik'
  ),
  Product( 
    name: 'Kipas Sekai', 
    imageUrl: 'assets/images/kipas.png', 
    price: 150000, 
    description: 'Kipas angin meja 3 kecepatan dengan motor hemat energi. Aman dan tidak berisik.', 
    categorySlug: 'elektronik'
  ),
  Product( 
    name: 'Mesin Cuci Front Loading LG', 
    imageUrl: 'assets/images/mesincuci.png', 
    price: 5500000, 
    description: 'Kapasitas 10kg dengan teknologi AI DD™ yang melindungi kain 18% lebih baik. Hemat air dan listrik.', 
    categorySlug: 'elektronik'
  ),
];