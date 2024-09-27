import 'package:flutter/material.dart';

void main() {
  runApp(MyStoreApp());
}

class MyStoreApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Online Store',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: StorePage(),
    );
  }
}

class StorePage extends StatefulWidget {
  @override
  _StorePageState createState() => _StorePageState();
}

class _StorePageState extends State<StorePage> {
  int _cartItemCount = 0;
  
  final List<Map<String, dynamic>> _products = [
  {
	  'name': 'Product 1',
		  'price': 19.99,
		  'imageUrl': 'https://picsum.photos/200/300',
  },
  {
	  'name': 'Product 2',
	  'price': 25.49,
	  'imageUrl': 'https://picsum.photos/200/300?2',
  },
  {
	  'name': 'Product 3',
	  'price': 14.99,
	  'imageUrl': 'https://picsum.photos/200/300?3',
  },
  {
	  'name': 'Product 4',
	  'price': 30.00,
	  'imageUrl': 'https://picsum.photos/200/300?4',
  },
  ];

  void _addToCart() {
    setState(() {
      _cartItemCount++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Online Store'),
        actions: <Widget>[
          IconButton(
            icon: Stack(
              children: <Widget>[
                Icon(Icons.shopping_cart),
                if (_cartItemCount > 0)
                  Positioned(
                    right: 0,
                    child: Container(
                      padding: EdgeInsets.all(2),
                      decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      constraints: BoxConstraints(
                        minWidth: 16,
                        minHeight: 16,
                      ),
                      child: Text(
                        '$_cartItemCount',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
              ],
            ),
            onPressed: () {
              // You can implement cart page here
              print('Cart icon pressed.');
            },
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            childAspectRatio: 2 / 3,
          ),
          itemCount: _products.length,
          itemBuilder: (context, index) {
            final product = _products[index];
            return Card(
              elevation: 4,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Expanded(
                    child: Image.network(
                      product['imageUrl'],
                      fit: BoxFit.cover,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          product['name'],
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                        SizedBox(height: 4),
                        Text('\$${product['price']}',
                            style: TextStyle(color: Colors.green)),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ElevatedButton(
                      onPressed: _addToCart,
                      child: Text('Add to Cart'),
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
