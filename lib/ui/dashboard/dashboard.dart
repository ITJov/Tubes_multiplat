import 'package:flutter/material.dart';

class DashboardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dashboard'),
        backgroundColor: Colors.orange,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.all(16.0),
              padding: EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                color: Colors.orange.shade100,
                borderRadius: BorderRadius.circular(12),
              ),
              child:const Row(
                children: [
                  Icon(Icons.local_dining, size: 50, color: Colors.orange),
                  SizedBox(width: 16),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Welcome to Foody!",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 8),
                        Text(
                          "Explore delicious meals and manage your orders effortlessly.",
                          style: TextStyle(fontSize: 14, color: Colors.grey),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                "Menu Categories",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              height: 100,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  _buildCategoryCard(Icons.fastfood, "Food"),
                  _buildCategoryCard(Icons.coffee, "Drinks"),
                  _buildCategoryCard(Icons.icecream, "Desserts"),
                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                "Popular Items",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
            Column(
              children: [
                _buildPopularItem(
                  context,
                  "Nasi Goreng",
                  "Rp 15,000",
                  Icons.rice_bowl,
                ),
                _buildPopularItem(
                  context,
                  "Mie Goreng",
                  "Rp 12,000",
                  Icons.restaurant_menu,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildCategoryCard(IconData icon, String title) {
    return Container(
      width: 100,
      margin: EdgeInsets.symmetric(horizontal: 8),
      padding: EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.orange.shade50,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, size: 36, color: Colors.orange),
          SizedBox(height: 8),
          Text(
            title,
            style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }

  Widget _buildPopularItem(BuildContext context, String name, String price, IconData icon) {
    return ListTile(
      leading: CircleAvatar(
        backgroundColor: Colors.orange.shade100,
        child: Icon(icon, color: Colors.orange),
      ),
      title: Text(name),
      subtitle: Text(price),
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => Scaffold(
              appBar: AppBar(
                title: Text(name),
              ),
              body: Center(
                child: Text("Detail page for $name"),
              ),
            ),
          ),
        );
      },
    );
  }
}
