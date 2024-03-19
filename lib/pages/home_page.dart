import 'package:flutter/material.dart';
import 'package:project_iseng/components/image_header.dart';
import 'package:project_iseng/components/category_section.dart';
import 'package:project_iseng/components/input_field.dart';
import 'package:project_iseng/components/navbar.dart';
import 'package:project_iseng/components/product_section.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'PLANTSCAPE',
          style: TextStyle(color: Colors.white),
        ),
        leading: IconButton(
          onPressed: (){},
          icon: const Icon(
            Icons.menu_book,
            size: 30,
          ),
        ),
      ),
      body: const Column(
        children: [
          ImageHeader(image: 'assets/gambar_header.png'),
          SizedBox(height: 10),  
          InputField(),
          SizedBox(height: 10),  
          CategorySection(),
          SizedBox(height: 10),
          ProductSection(),
          SizedBox(height: 10),          
        ],
      ),
      
      bottomNavigationBar: const Navbar(),
    );
  }
}
