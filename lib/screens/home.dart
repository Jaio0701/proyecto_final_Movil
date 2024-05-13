// ignore: file_names
import 'package:flutter/material.dart';
import '../partials/CategoryItem.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Categorias y productos',
          style: TextStyle(
            color: Colors.green, // Cambia el color del texto a verde
            fontWeight: FontWeight.bold, // Hace que el texto sea negrita
          ),
        ),
      ),
      body: const CategoryList(),
    );
  }
}

class CategoryList extends StatelessWidget {
  const CategoryList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        CategoryItem(
            name: 'General',
            image: 'assets/images/6.jpg',
            products: genearlProducts),
        CategoryItem(
            name: 'Accesorios',
            image: 'assets/images/1.jpg',
            products: perifericosProducts),
        CategoryItem(
            name: 'Televisiones',
            image: 'assets/images/2.jpg',
            products: tvProducts),
        CategoryItem(
            name: 'Celulares',
            image: 'assets/images/3.jpg',
            products: phoneProducts),
        CategoryItem(
            name: 'Consolas',
            image: 'assets/images/4.jpg',
            products: consoleProducts),
        CategoryItem(
            name: 'Computadoras',
            image: 'assets/images/5.jpg',
            products: compuProducts),

        // Agrega más categorías si es necesario
      ],
    );
  }
}
