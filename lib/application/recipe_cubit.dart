
import 'package:bloc/bloc.dart';
import 'package:homesturent1/application/ingredients_state.dart';
import 'package:homesturent1/models/recipes_model.dart';

class RecipeCubit extends Cubit<IngredientsState>{
  RecipeCubit(super.initialState);
  void addIngredient(String selectedIngredient){
    // print(updatedIngredients);
    print(!state.selectedIngredients.contains(selectedIngredient));
    if(!state.selectedIngredients.contains(selectedIngredient)){
      List <String> updatedIngredients = [...state.selectedIngredients , selectedIngredient];
      emit(state.copyWith( selectedIngredients: updatedIngredients));
    }

  }

  void removeIngredient(String selectedIngredient){
    List <String> updatedIngredients = [...state.selectedIngredients];
    if(updatedIngredients.contains(selectedIngredient)){
      updatedIngredients.removeWhere((element) => element == selectedIngredient);
      emit(state.copyWith( selectedIngredients:updatedIngredients));
    }


  }

  void initialStateForIngredient(Map<String , List<String>> ingredients){
    emit(state.copyWith(ingredients: ingredients));

   }

}
