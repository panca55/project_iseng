import 'package:flutter/material.dart';
import 'package:project_iseng/model/category_data.dart';

class CategorySection extends StatefulWidget {
  const CategorySection({super.key});

  @override
  State<CategorySection> createState() => _CategorySectionState();
}

class _CategorySectionState extends State<CategorySection> {
  final List<Category> categories = [
    Category(nama: 'Indoor', foto: 'assets/Indoor.png'),
    Category(nama: 'Flower', foto: 'assets/Flower.png'),
    Category(nama: 'Green', foto: 'assets/Green.png'),
  ];
  var selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: List.generate(categories.length, (index) {
          return GestureDetector(
            onTap: () {
              setState(() {
                selectedIndex = index;
              });
            },
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 36),
              width: 47,
              height: 66,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
              ),
              child: Center(
                child: Column(children: [
                  Image(
                    image: AssetImage(categories[index].foto),
                    width: 24,
                    height: 34,
                    color: selectedIndex == index
                        ? const Color.fromRGBO(13, 152, 106, 1)
                        : Colors.black,
                  ),
                  Expanded(
                      child: Text(
                    categories[index].nama,
                    style: TextStyle(
                      color: selectedIndex == index
                          ? const Color.fromRGBO(13, 152, 106, 1)
                          : Colors.black,
                      fontSize: 14,
                    ),
                  )),
                ]),
              ),
            ),
          );
        }),
      ),
    );
  }
}
