class IngredientsState {

  IngredientsState({required this.ingredients , required this.selectedIngredients});

  late final List<String> selectedIngredients;

  // late final List<Ingredient> ingredients;

  late final Map<String , List<String>> ingredients;

 IngredientsState copyWith({
   List<String> ? selectedIngredients,
   Map<String , List<String>> ? ingredients,
}){

   return IngredientsState(ingredients: ingredients ?? this.ingredients,
   selectedIngredients: selectedIngredients ?? this.selectedIngredients
   );
 }
}
//
// class Ingredient {
//
//   Ingredient({required this.ingredient});
//
//   late String ingredient ;
// }