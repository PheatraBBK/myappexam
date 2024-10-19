import 'package:flutter/material.dart';
//import 'package:myappexam/screens/fashion.dart';
import 'package:myappexam/screens/fashion2.dart';

class Screen1 extends StatefulWidget {
  const Screen1({super.key});

  @override
  State<Screen1> createState() => _Screen1State();
}

class _Screen1State extends State<Screen1> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Scaffold(
        appBar: AppBar(
          title: const Text("eMart"),
          actions: <Widget>[
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.qr_code),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.search),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.shopping_cart),
            ),
          ],
        ),
        drawer: const Drawer(),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                // Banner Section
                Container(
                  width: double.infinity,
                  height: 150.0,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Image.asset(
                    'assets/images/banner.jpg',
                    width: double.infinity,
                    height: 150,
                    fit: BoxFit.cover,
                    errorBuilder: (context, error, stackTrace) => Container(
                      color: Colors.grey[200],
                      child: const Center(child: Text("Image not found")),
                    ),
                  ),
                ),
                const SizedBox(height: 20),

                // Categories Section
                SizedBox(
                  // height: 400, // Adjust height if necessary
                  child: GridView.count(
                    crossAxisCount: 2,
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                    children: const [
                      CategoryCard(
                        image: AssetImage('assets/images/cosmetics.png'),
                        title: 'Cosmetic',
                      ),
                      CategoryCard(
                        image: AssetImage('assets/images/fashion.png'),
                        title: 'Fashion',
                      ),
                      CategoryCard(
                        image: AssetImage('assets/images/motorbike.png'),
                        title: 'Restaurants',
                      ),
                      CategoryCard(
                        image: AssetImage('assets/images/cabservice.png'),
                        title: 'Cab Service',
                      ),
                      CategoryCard(
                        image: AssetImage('assets/images/foodgrocery.png'),
                        title: 'Food Grocery',
                      ),
                      CategoryCard(
                        image: AssetImage('assets/images/parcel.png'),
                        title: 'Parcel',
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

// Custom widget with an image parameter
class CategoryCard extends StatelessWidget {
  final ImageProvider image;
  final String title;

  // ignore: use_super_parameters
  const CategoryCard({Key? key, required this.image, required this.title})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Card(
        child: InkWell(
          onTap: () {
            if (title.toLowerCase() == 'fashion') {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const Fashion2(),
                ),
              );
            }
          },
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Image from the provided image source
              Image(
                image: image,
                height: 50,
                width: 50,
                fit: BoxFit.contain,
                errorBuilder: (context, error, stackTrace) => Container(
                  height: 50,
                  width: 50,
                  color: Colors.grey[200],
                  child: const Center(child: Text("Image not found")),
                ),
              ),
              const SizedBox(height: 10),
              // Text for the category title
              Text(title, style: const TextStyle(fontSize: 16)),
            ],
          ),
        ),
      ),
    );
  }
}
