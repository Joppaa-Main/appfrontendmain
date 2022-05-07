import 'package:flutter/material.dart';

class Categorylist extends StatefulWidget {
  const Categorylist({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _CategorylistState();
}

class _CategorylistState extends State<Categorylist> {
  final categoryList = [
    "New Arrivals",
    "Popular",
    "Most Liked",
    "Most Viewed",
    "Near You",
    "Top Picks",
  ];
  /*   {
      'name': 'New',
      'image': 'assets/images/all.png',
    },
    {
      'name': 'Popular',
      'image': 'assets/images/food.png',
    },
    {
      'name': 'Most Wanted',
      'image': 'assets/images/clothing.png',
    },
    {
      'name': 'Near Me ',
      'image': 'assets/images/electronics.png',
    },
    {
      'name': 'Wishlist',
      'image': 'assets/images/furniture.png',
    },
    {
      'name': 'Others',
      'image': 'assets/images/others.png',
    }
  
  ];
 */

  int currentSelected = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
      height: 20,
      padding: const EdgeInsets.symmetric(
        horizontal: 16,
      ),
      child: ListView.separated(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) => GestureDetector(
                onTap: () {
                  setState(() {
                    currentSelected = index;
                  });
                },
                child: Text(
                  categoryList[index],
                  style: TextStyle(
                    fontSize: 16,
                    height: 1.3,
                    color: currentSelected == index
                        ? Theme.of(context).primaryColor
                        : const Color.fromARGB(255, 52, 51, 51),
                    fontWeight: currentSelected == index
                        ? FontWeight.bold
                        : FontWeight.w500,
                  ),
                ),
              ),
          separatorBuilder: (context, index) => const SizedBox(
                width: 20,
              ),
          itemCount: categoryList.length),
    );
  }
}
