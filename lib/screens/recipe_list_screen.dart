import 'package:flutter/material.dart';
import '../models/recipe.dart';
import '../widgets/recipe_card.dart';
import '../widgets/search_bar.dart';
import '../utils/dummy_data.dart';

class RecipeListScreen extends StatefulWidget {
  @override
  _RecipeListScreenState createState() => _RecipeListScreenState();
}

class _RecipeListScreenState extends State<RecipeListScreen> {
  List<Recipe> _recipes = DUMMY_RECIPES;
  List<Recipe> _filteredRecipes = DUMMY_RECIPES;

  void _searchRecipes(String query) {
    setState(() {
      _filteredRecipes = _recipes
          .where((recipe) => recipe.title.toLowerCase().contains(query.toLowerCase()))
          .toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Recipe Book'),
      ),
      body: Column(
        children: [
          SearchBar(onSearch: _searchRecipes),
          Expanded(
            child: ListView.builder(
              itemCount: _filteredRecipes.length,
              itemBuilder: (ctx, index) {
                final recipe = _filteredRecipes[index];
                return RecipeCard(recipe: recipe);
              },
            ),
          ),
        ],
      ),
    );
  }
}
