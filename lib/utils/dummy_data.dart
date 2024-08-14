import '../models/recipe.dart';

const DUMMY_RECIPES = [
  Recipe(
    id: 'r1',
    title: 'Spaghetti Carbonara',
    imageUrl: 'https://example.com/spaghetti.jpg',
    ingredients: ['Spaghetti', 'Eggs', 'Parmesan Cheese', 'Pancetta'],
    instructions: 'Cook spaghetti. Fry pancetta. Mix eggs with cheese. Combine all ingredients.',
  ),
  Recipe(
    id: 'r2',
    title: 'Chicken Alfredo',
    imageUrl: 'https://example.com/alfredo.jpg',
    ingredients: ['Chicken Breast', 'Fettuccine', 'Alfredo Sauce', 'Parmesan Cheese'],
    instructions: 'Cook fettuccine. Grill chicken. Mix with Alfredo sauce and cheese.',
  ),
  // Add more recipes as needed
];
