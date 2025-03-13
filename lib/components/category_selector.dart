import 'package:flutter/material.dart';

class FoodCategory {
  final String name;
  final IconData icon;

  FoodCategory({required this.name, required this.icon});
}

class CategorySelector extends StatelessWidget {
  final List<FoodCategory> categories;
  final int selectedIndex;
  final Function(int) onCategorySelected;

  const CategorySelector({
    Key? key,
    required this.categories,
    required this.selectedIndex,
    required this.onCategorySelected,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    
    return SizedBox(
      height: 110,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        padding: const EdgeInsets.symmetric(horizontal: 16),
        itemBuilder: (context, index) {
          final isSelected = index == selectedIndex;
          return GestureDetector(
            onTap: () => onCategorySelected(index),
            child: Container(
              width: 80,
              margin: const EdgeInsets.only(right: 12),
              child: Column(
                children: [
                  Container(
                    height: 70,
                    width: 70,
                    decoration: BoxDecoration(
                      color: isSelected 
                          ? theme.colorScheme.primary
                          : theme.brightness == Brightness.light
                              ? Colors.grey[200]
                              : Colors.grey[800],
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Icon(
                      categories[index].icon,
                      color: isSelected 
                          ? theme.colorScheme.onPrimary
                          : theme.brightness == Brightness.light 
                              ? Colors.grey[700]
                              : Colors.grey[400],
                      size: 30,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    categories[index].name,
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
                      color: isSelected 
                          ? theme.colorScheme.primary
                          : theme.brightness == Brightness.light
                              ? Colors.black87
                              : Colors.white,
                    ),
                    textAlign: TextAlign.center,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}