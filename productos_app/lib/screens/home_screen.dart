import 'package:flutter/material.dart';
import 'package:productos_app/models/models.dart';
import 'package:productos_app/screens/screens.dart';
import 'package:productos_app/services/services.dart';
import 'package:productos_app/widgets/widgets.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    final productsService = Provider.of<ProductsService>(context);

    if (productsService.isLoading) return LoadingScreen();

    return Scaffold(
      appBar: AppBar(
        title: Text('Productos'),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: productsService.products.length,
        itemBuilder: ( BuildContext context, int index ){
          return GestureDetector(
            child: ProductCard( product: productsService.products[index] ),
            onTap: (){
              productsService.selectedProduct = productsService.products[index].copy();
              Navigator.pushNamed(context, 'product');
            },
          );
        }
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: (){
          productsService.selectedProduct = new Product(
            available: false, 
            name: '', 
            price: 0
          );
          Navigator.pushNamed(context, 'product');
        },
      ),
    );
  }
}