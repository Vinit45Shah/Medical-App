import 'package:flutter/material.dart';

class CategoryCard extends StatelessWidget {
  final iconImagePath;
  final String categoryName;

  CategoryCard({required this.iconImagePath, required this.categoryName});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25),
      child: Container(
        padding: EdgeInsets.all(5),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25),
          color: Colors.deepPurple[100],
        ),
        child: Row(
          children: [
            TextButton.icon(
                onPressed: () {
                  print('Dentist Pressed');
                },
                icon: Image.asset(
                  iconImagePath,
                  height: 40,
                ),
                label: Text(
                  categoryName,
                  style: TextStyle(color: Colors.black38, fontSize: 18),
                )),
            SizedBox(
              width: 15,
            ),
          ],
        ),
      ),
    );
  }
}
