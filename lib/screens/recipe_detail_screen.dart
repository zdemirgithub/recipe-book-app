import 'package:flutter/material.dart';
import '../models/recipe.dart';

class RecipeDetailScreen extends StatelessWidget {
  final Recipe recipe;

  RecipeDetailScreen({required this.recipe});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(recipe.title),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            Image.network(recipe.imageUrl),
            SizedBox(height: 10),
            Text(
              'Ingredients',
              style: Theme.of(context).textTheme.headline6,
            ),
            SizedBox(height: 10),
            ...recipe.ingredients.map((ingredient) => Text('• $ingredient')).toList(),
            SizedBox(height: 20),
            Text(
              'Instructions',
              style: Theme.of(context).textTheme.headline6,
            ),
            SizedBox(height: 10),
            Text(recipe.instructions),
          ],
        ),
      ),
    );
  }
}
