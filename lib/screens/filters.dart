import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:homesturent1/application/ingredients_state.dart';
import 'package:homesturent1/application/recipe_cubit.dart';
import 'package:homesturent1/models/recipes_model.dart';

enum ExerciseFilter {
  option1,
  option2,
  option3,
  option4,
  option5,
  option6,
  option7,
  option8,
  option9,
  option10,
  option11,
  option12,
  option13,
  option14,
  option15,
  option16
}

class FilterChipOptions extends StatefulWidget {
  const FilterChipOptions({super.key  });

  @override
  State<FilterChipOptions> createState() => _FilterChipExampleState();
}

class _FilterChipExampleState extends State<FilterChipOptions> {



  @override
  Widget build(BuildContext context) {
    final TextTheme textTheme = Theme.of(context).textTheme;
    Map <String , List<String>> ingredients =fun();

    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          BlocBuilder<RecipeCubit,IngredientsState>(builder: (context, state) {
            context.read<RecipeCubit>().initialStateForIngredient(ingredients);
            return Padding(
              padding: const EdgeInsets.symmetric(vertical: 24, horizontal: 16),
              child: FilterChips(),
            );
          },
          ),
          const SizedBox(height: 10.0),



        ],
      ),
    );
  }
}


class FilterChips extends StatelessWidget {
   FilterChips({super.key });

  @override
  Widget build(BuildContext context) {

    return Wrap(
      spacing: 4,
      children:

         context.watch<RecipeCubit>().state.ingredients.keys.map(( ingredient) {
           return FilterChip(
             label: Text(ingredient),
             selected: context.watch<RecipeCubit>().state.selectedIngredients.contains(ingredient),
             onSelected: (bool selected) {
               if(selected){
                 context.read<RecipeCubit>().addIngredient(ingredient);
               }else{
                 context.read<RecipeCubit>().removeIngredient(ingredient);
               }

             },
           );
         }).toList(),


    );
  }
}


Map<String , List<String>> fun(){
  Map <String , List<String>> ingredients ={};
  for(int i=0 ;i< RecipesData.title.length ;i++){
    for(int j =0 ; j< RecipesData.ingredient[i].length ;j++){
      String ingredient = RecipesData.ingredient[i].keys.elementAt(j);
      if(ingredients.keys.contains(ingredient)){
        ingredients[ingredient]?.add(RecipesData.title[i]);

      }else{
        List<String> recips = [];
        recips.add(RecipesData.title[i]);
        ingredients[ingredient]= recips;
      }

    }
  }
  return ingredients;
}


