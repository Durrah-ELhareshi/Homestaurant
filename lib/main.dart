import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:homesturent1/screens/recipes_view.dart';
import 'application/ingredients_state.dart';
import 'application/recipe_cubit.dart';
import 'screens/home.dart';

void main() {
  runApp(
      const MaterialApp(
          debugShowCheckedModeBanner: false,
          home: MainApp()
      )
  );
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: [
        BlocProvider(create: (context) => RecipeCubit(

        IngredientsState(ingredients: {} , selectedIngredients: [])
    ),
    )
    ],
    child: HomeScreen()
    );
  }
}

