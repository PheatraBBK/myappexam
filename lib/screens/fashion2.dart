import 'package:flutter/material.dart';

class Fashion2 extends StatefulWidget {
  const Fashion2({super.key});

  @override
  State<Fashion2> createState() => _Fashion2State();
}

class _Fashion2State extends State<Fashion2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: TextField(
          decoration: InputDecoration(
            hintText: 'Search',
            prefixIcon: const Icon(Icons.search, color: Colors.black),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
              borderSide: BorderSide.none,
            ),
            filled: true,
            fillColor: Colors.grey[200],
          ),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.shopping_cart, color: Colors.black),
            onPressed: () {},
          ),
        ],
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          // Mega Sale Banner
          Container(
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.circular(10),
            ),
            child: const Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "MEGA SALE",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "Special Offer",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                      ),
                    ),
                    Text(
                      "This weekend only",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
                Spacer(),
                Icon(Icons.local_offer, color: Colors.white, size: 40),
              ],
            ),
          ),
          const SizedBox(height: 20),

          // Top Categories with Images
          _buildCategorySection(),
          const SizedBox(height: 20),

          // New Arrivals Section with Images
          _buildSectionHeader('New Arrivals', onSeeAllPressed: () {}),
          const SizedBox(height: 10),
          _buildHorizontalImageList([
            'assets/images/t-shirt.jpg',
            'assets/images/t-shirt.jpg',
            'assets/images/t-shirt.jpg',
            'assets/images/t-shirt.jpg',
          ]),

          const SizedBox(height: 20),

          // Popular Fashion Stores Section with Images
          _buildSectionHeader('Popular Fashion Stores', onSeeAllPressed: () {}),
          const SizedBox(height: 10),
          _buildHorizontalImageList([
            'assets/images/jordanAri.jpg',
            'assets/images/jordanAri.jpg',
            'assets/images/jordanAri.jpg',
            'assets/images/jordanAri.jpg',
          ]),
        ],
      ),
    );
  }

  Widget _buildCategorySection() {
    List<String> categories = [
      'Man',
      'Woman',
      'Kids',
      'Shoes',
      'Jewelry',
      'Beauty Care',
      'Sports',
      'Toys'
    ];

    List<String> categoryImages = [
      'assets/images/man.png',
      'assets/images/woman.png',
      'assets/images/kids.png',
      'assets/images/shoes.png',
      'assets/images/jewelry.png',
      'assets/images/beautycare.png',
      'assets/images/sports.png',
      'assets/images/toys.png',
    ];

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildSectionHeader('Top Categories', onSeeAllPressed: () {}),
        const SizedBox(height: 10),
        GridView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 4,
            childAspectRatio: 0.8,
          ),
          itemCount: categories.length,
          itemBuilder: (context, index) {
            return Column(
              children: [
                Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Image.asset(categoryImages[index], fit: BoxFit.cover),
                ),
                const SizedBox(height: 5),
                Text(
                  categories[index],
                  style: const TextStyle(fontSize: 12),
                ),
              ],
            );
          },
        ),
      ],
    );
  }

  Widget _buildSectionHeader(String title, {VoidCallback? onSeeAllPressed}) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        TextButton(
          onPressed: onSeeAllPressed,
          style: TextButton.styleFrom(
            padding: EdgeInsets.zero,
            minimumSize: const Size(30, 30),
            tapTargetSize: MaterialTapTargetSize.shrinkWrap,
            alignment: Alignment.centerRight,
          ),
          child: const Text("See All"),
        ),
      ],
    );
  }

  Widget _buildHorizontalImageList(List<String> imagePaths) {
    return SizedBox(
      height: 100,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: imagePaths.length,
        itemBuilder: (context, index) {
          return Container(
            margin: const EdgeInsets.only(right: 10),
            width: 150,
            decoration: BoxDecoration(
              color: Colors.grey[200],
              borderRadius: BorderRadius.circular(10),
            ),
            child: Image.asset(imagePaths[index], fit: BoxFit.cover),
          );
        },
      ),
    );
  }
}
