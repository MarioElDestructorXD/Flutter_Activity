import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:learning_b/modules/auth/screens/restaurant_detail.dart';
import 'package:learning_b/modules/restaurant/entities/restaurant.dart';
<<<<<<< Updated upstream
import 'package:learning_b/modules/restaurant/entities/widgets/custom_list_restaurant.dart';
=======
>>>>>>> Stashed changes

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final db = FirebaseFirestore.instance;
<<<<<<< Updated upstream
=======
  List<Restaurant> restaurants = [];

  @override
  void initState() {
    super.initState();
    fetchRestaurants();
  }

  Future<void> fetchRestaurants() async {
    try {
      final event = await db.collection("restaurants").get();
      for (var doc in event.docs) {
        final restaurant = Restaurant(
          id: doc.id,
          count: doc.data()['count'] ?? 0,
          description: doc.data()['description'] ?? 'No description available',
          images: List<String>.from(doc.data()['images'] ?? []),
          name: doc.data()['name'] ?? 'Unknown',
          rating: (doc.data()['rating'] as num?)?.toDouble() ?? 0.0,
        );

        // Solo añadir restaurantes que tengan imágenes válidas
        if (restaurant.images.isNotEmpty && restaurant.images[0].isNotEmpty) {
          restaurants.add(restaurant);
        }
      }

      if (mounted) {
        setState(() {
          _isLoading = false;
        });
      }
    } catch (e) {
      print("Error fetching restaurants: $e");
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Error fetching restaurants: $e')),
      );
    }
  }
>>>>>>> Stashed changes

  Future<void> _logout(BuildContext context) async {
    try {
      await FirebaseAuth.instance.signOut();
      Navigator.pushReplacementNamed(context, '/login');
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Error al cerrar sesión: $e')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Restaurantes'),
        actions: [
          IconButton(
            icon: const Icon(Icons.logout),
            onPressed: () => _logout(context),
          ),
        ],
      ),
<<<<<<< Updated upstream
      body: StreamBuilder<QuerySnapshot>(
        stream: db.collection("restaurants").snapshots(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          }

          if (snapshot.hasError) {
            return Center(child: Text('Error: ${snapshot.error}'));
          }

          if (!snapshot.hasData || snapshot.data!.docs.isEmpty) {
            return const Center(child: Text('No restaurants available'));
          }

          List<Restaurant> restaurants = snapshot.data!.docs.map((doc) {
            final data = doc.data()
                as Map<String, dynamic>?; // Asegúrate de que es un Map
            return Restaurant(
              data?['count'] ?? 0,
              data?['description'] ?? 'No description available',
              List<String>.from(data?['images'] ?? []),
              data?['name'] ?? 'Unknown',
              (data?['rating'] as num?)?.toDouble() ?? 0.0,
            );
          }).toList();

          return ListView.separated(
            padding: const EdgeInsets.all(16),
            itemCount: restaurants.length,
            itemBuilder: (BuildContext context, int index) {
              return CustomListRestaurant(restaurants: restaurants[index]);
            },
            separatorBuilder: (BuildContext context, int index) =>
                const Divider(),
=======
      body: ListView.builder(
        itemCount: restaurants.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => RestaurantDetail(
                    restaurantId: restaurants[index].id,
                  ),
                ),
              );
            },
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                elevation: 4,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(8.0),
                        child: Image.network(
                          restaurants[index].images[0], // Solo se carga la primera imagen
                          width: 80,
                          height: 80,
                          fit: BoxFit.cover,
                          errorBuilder: (context, error, stackTrace) {
                            return const SizedBox(
                              width: 80,
                              height: 80,
                              child: Icon(Icons.error), // Icono de error
                            );
                          },
                        ),
                      ),
                      const SizedBox(width: 16),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              restaurants[index].name,
                              style: const TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(height: 8),
                            Text(
                              restaurants[index].description,
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              style: const TextStyle(
                                fontSize: 14,
                                color: Colors.grey,
                              ),
                            ),
                            const SizedBox(height: 12),
                            Row(
                              children: [
                                RatingBarIndicator(
                                  rating: restaurants[index].rating,
                                  itemBuilder: (context, index) => Icon(
                                    Icons.star,
                                    color: Colors.orange[300],
                                  ),
                                  itemCount: 5,
                                  itemSize: 16,
                                  direction: Axis.horizontal,
                                ),
                                const SizedBox(width: 8),
                                Text(
                                  '${restaurants[index].rating}',
                                  style: const TextStyle(fontSize: 14),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
>>>>>>> Stashed changes
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => Navigator.pushNamed(context, '/top'),
        backgroundColor: Colors.amber,
        foregroundColor: Colors.white,
        child: const Icon(Icons.home),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
