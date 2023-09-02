import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SearchPage(),
    );
  }
}

class SearchPage extends StatefulWidget {
  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  TextEditingController _searchController = TextEditingController();
  List<Product> products = [
    Product(
      name: 'Product 1',
      price: 19.99,
      imageUrl: 'data:image/png;base64,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',
    ),
    Product(
      name: 'Product 2',
      price: 29.99,
      imageUrl: 'data:image/png;base64,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',
    ),
    // Add more Product objects as needed
  ];

  List<Product> searchResults = [];

  void _onSearchTextChanged(String text) {
    searchResults.clear();
    if (text.isEmpty) {
      setState(() {});
      return;
    }

    products.forEach((product) {
      if (product.name.toLowerCase().contains(text.toLowerCase())) {
        searchResults.add(product);
      }
    });

    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Search Page'),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: _searchController,
              onChanged: _onSearchTextChanged,
              decoration: InputDecoration(
                labelText: 'Search',
                hintText: 'Search for products',
                prefixIcon: Icon(Icons.search),
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: searchResults.length,
              itemBuilder: (context, index) {
                return ProductCard(product: searchResults[index]);
              },
            ),
          ),
        ],
      ),
    );
  }
}

class Product {
  final String name;
  final double price;
  final String imageUrl;

  Product({
    required this.name,
    required this.price,
    required this.imageUrl,
  });
}

class ProductCard extends StatelessWidget {
  final Product product;

  ProductCard({required this.product});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(8.0),
      child: Column(
        children: [
          Container(
            width: double.infinity,
            height: 200.0,
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage(product.imageUrl),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              product.name,
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              '\$${product.price.toStringAsFixed(2)}',
              style: TextStyle(
                fontSize: 16.0,
                color: Colors.green,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
