import 'package:flutter/material.dart';
import 'package:project_iseng/model/product_data.dart';

class ProductSection extends StatefulWidget {
  const ProductSection({super.key});

  @override
  State<ProductSection> createState() => _ProductSectionState();
}

class _ProductSectionState extends State<ProductSection> {
  int? selectedIndex;
  final List<Product> _products = [
    Product(
        nameBold: 'Monstera Andansonii',
        name: 'Monstera Family',
        image: 'assets/bunga1.png',
        count: 0,
        price: '400'),
    Product(
        nameBold: 'Janda Bolong',
        name: '',
        image: 'assets/bunga2.png',
        count: 0,
        price: '850')
  ]; 

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        scrollDirection: Axis.vertical,
        itemCount: _products.length,
        itemBuilder: (BuildContext context, int index) => GestureDetector(
          onTap: () {
            setState(() {
              selectedIndex = index;
            });
          },
          child: ProductItem(
            product: _products[index],
            isSelected: selectedIndex == index,
            
          ),
        ),
    );
  }
}

class ProductItem extends StatelessWidget {
  final Product product;
  final bool isSelected;

  const ProductItem({super.key, required this.product, this.isSelected = false});
  

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100, // Change height as needed
      margin: const EdgeInsets.all(8), // Add margin for spacing
      decoration: BoxDecoration(
        color: isSelected
            ? Colors.blue.withOpacity(0.5)
            : Colors.transparent, // Change color based on selection
        borderRadius:
            BorderRadius.circular(8), // Add border radius for rounded corners
      ),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset(
              product.image,
              width: 80,
              height: 80,
              fit: BoxFit.cover,
            ),
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  product.nameBold,
                  style:const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  product.name,
                  style: const TextStyle(
                    fontSize: 16,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  '\$${product.price}',
                  style:const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
