import 'package:flutter/material.dart';
import '../Screens/screens.dart';

class ProductListNewAds extends StatelessWidget {
  ProductListNewAds({super.key});

  final List<Product> products = [
    Product(
      image: 'assets/images/macbook.jpeg',
      name: 'لابتوب ماك بوك',
      description: 'لابتوب احترافي...',
      price: 120.0,
      rating: 4.8,
      discount: 15,
    ),
    Product(
      image: 'assets/images/iphone2.png',
      name: 'ايفون 14 برو ماكس',
      description: 'هاتف ذكي متطور ب...',
      price: 41.1,
      rating: 4.4,
      discount: 25,
    ),
    Product(
      image: 'assets/images/iphone1.png',
      name: 'ايفون X',
      description: 'هاتف ذكي متطور ب...',
      price: 41.1,
      rating: 4.4,
      discount: 25,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: products.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 4.0),
            child: ProductCard(product: products[index]),
          );
        },
      ),
    );
  }
}

class ProductList extends StatelessWidget {
  ProductList({super.key});

  final List<Product> products = [
    Product(
      image: 'assets/images/apple_watch.jpg',
      name: 'ساعة ذكية',
      description: 'ساعة مميزة...',
      price: 25.0,
      rating: 4.2,
      discount: 30,
    ),
    Product(
      image: 'assets/images/macbook.jpeg',
      name: 'لابتوب ماك بوك',
      description: 'لابتوب احترافي...',
      price: 120.0,
      rating: 4.8,
      discount: 15,
    ),
    Product(
      image: 'assets/images/Rectangle.png',
      name: 'ايفون 14 برو ماكس',
      description: 'هاتف ذكي متطور ب...',
      price: 41.1,
      rating: 4.4,
      discount: 25,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: products.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 4.0),

            child: ProductCard(product: products[index]),
          );
        },
      ),
    );
  }
}

class ProductListRecommendedAds extends StatelessWidget {
  ProductListRecommendedAds({super.key});

  final List<Product> products = [
    Product(
      image: 'assets/images/macbook.jpeg',
      name: 'لابتوب ماك بوك',
      description: 'لابتوب احترافي...',
      price: 120.0,
      rating: 4.8,
      discount: 15,
    ),
    Product(
      image: 'assets/images/iphone3.png',
      name: 'ايفون x',
      description: 'هاتف ذكي متطور ب...',
      price: 41.1,
      rating: 4.4,
      discount: 25,
    ),
    Product(
      image: 'assets/images/iphone4.png',
      name: 'ايفون 14 برو ماكس',
      description: 'هاتف ذكي متطور ب...',
      price: 41.1,
      rating: 4.4,
      discount: 25,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: products.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 4.0),
            child: ProductCard(product: products[index]),
          );
        },
      ),
    );
  }
}

class AdsProductList extends StatelessWidget {
  AdsProductList({super.key});

  final List<Product> products = [
    Product(
      image: 'assets/images/greenIphone.png',
      name: 'ايفون 14 برو ماكس',
      description:
          'هاتف آيفون 14 برو ماكس هو هاتف ذكي متطور بشاشة 6.7 بوصة، وكاميرا ثلاثية احترافية تتيح تصويرًا عالي الجودة. يتميز بتقنية Super Retina XDR، مما يوفر ألوانًا زاهية وتفاصيل دقيقة في جميع ظروف الإضاءة',
      price: 41.1,
      rating: 4.4,
      discount: 25,
    ),
    Product(
      image: 'assets/images/iphone1.png',
      name: 'ايفون X',
      description:
          'هاتف آيفون هو هاتف ذكي متطور بشاشة 6.7 بوصة، وكاميرا ثلاثية احترافية تتيح تصويرًا عالي الجودة. يتميز بتقنية Super Retina XDR، مما يوفر ألوانًا زاهية وتفاصيل دقيقة في جميع ظروف الإضاءة',
      price: 41.1,
      rating: 4.4,
      discount: 25,
    ),
    Product(
      image: 'assets/images/macbook.jpeg',
      name: 'لابتوب ماك بوك',
      description: 'لابتوب احترافي...',
      price: 120.0,
      rating: 4.8,
      discount: 15,
    ),
    Product(
      image: 'assets/images/iphone3.png',
      name: 'ايفون x',
      description: 'هاتف ذكي متطور ب...',
      price: 41.1,
      rating: 4.4,
      discount: 25,
    ),
    Product(
      image: 'assets/images/iphone4.png',
      name: 'ايفون 14 برو ماكس',
      description: 'هاتف ذكي متطور ب...',
      price: 41.1,
      rating: 4.4,
      discount: 25,
    ),
    Product(
      image: 'assets/images/apple_watch.jpg',
      name: 'ساعة ذكية',
      description: 'ساعة مميزة...',
      price: 25.0,
      rating: 4.2,
      discount: 30,
    ),
    Product(
      image: 'assets/images/macbook.jpeg',
      name: 'لابتوب ماك بوك',
      description: 'لابتوب احترافي...',
      price: 120.0,
      rating: 4.8,
      discount: 15,
    ),
    Product(
      image: 'assets/images/iphone4.png',
      name: 'ايفون 14 برو ماكس',
      description: 'هاتف ذكي متطور ب...',
      price: 41.1,
      rating: 4.4,
      discount: 25,
    ),
    Product(
      image: 'assets/images/apple_watch.jpg',
      name: 'ساعة ذكية',
      description: 'ساعة مميزة...',
      price: 25.0,
      rating: 4.2,
      discount: 30,
    ),
    Product(
      image: 'assets/images/macbook.jpeg',
      name: 'لابتوب ماك بوك',
      description: 'لابتوب احترافي...',
      price: 120.0,
      rating: 4.8,
      discount: 15,
    ),
    Product(
      image: 'assets/images/Rectangle.png',
      name: 'ايفون 14 برو ماكس',
      description: 'هاتف ذكي متطور ب...',
      price: 41.1,
      rating: 4.4,
      discount: 25,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: GridView.builder(
        padding: const EdgeInsets.all(8),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, // عدد العناصر في الصف
          mainAxisSpacing: 8,
          crossAxisSpacing: 8,
          childAspectRatio: 0.7, // اضبط حسب أبعاد الكارت
        ),
        itemCount: products.length,
        itemBuilder: (context, index) {
          return Expanded(
            child: GestureDetector(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) {
                      return AdDetailScreen(product: products[index]);
                    },
                  ),
                );
              },
              child: ProductCard(product: products[index]),
            ),
          );
        },
      ),
    );
  }
}
