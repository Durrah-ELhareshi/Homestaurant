import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:homesturent1/application/ingredients_state.dart';
import 'package:homesturent1/application/recipe_cubit.dart';
import 'package:homesturent1/screens/recipes_view.dart';
import '../router_app.dart';
import 'filters.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return   Scaffold(
      body: Center(
        child: Container(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              Image.asset('assets/images/cake-3-line.png'),
              const Text(
                "Homestaurant",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w900,
                    fontSize: 32,
                    fontFamily: 'CabinetGrotesk'),
              ),
              const Text(
                "Because, we have food at home!",
                style: TextStyle(color: Colors.black, fontSize: 15),
              ),
              const SizedBox(
                height: 40,
              ),
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(32),
                    color: Colors.purple[50],
                  ),
                  child: Center(
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 60,
                        ),
                        const Text(
                          "Choose your ingredients:",
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w900,
                              fontSize: 20,
                              fontFamily: 'CabinetGrotesk'),
                        ),
                        const SizedBox(
                          height: 40,
                        ),
                        Container(
                            padding: const EdgeInsets.all(20),
                            child: const FilterChipOptions()),
                        const SizedBox(
                          height: 30,
                        ),
                        Container(
                            padding: const EdgeInsets.all(10),
                            color: Colors.black,
                            child: GestureDetector(
                              child: const Text(
                                  "Let's get cooking",
                                  style: TextStyle(color: Colors.white),
                                )
                                ,onTap: () => RecipesView()
                            ),
                            )
                         ,
                        const SizedBox(
                          height: 20,
                        ),
                        const Text(
                          "Available Recipes:",
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w900,
                              fontFamily: 'CabinetGrotesk'),
                        ),
                        // add recipes counter here
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),

    );


  }
}
