class Recipes {


  late final List<String> title;
  late final List<String> image;
  late final List<String> directions;
  late final List<Map<String , String>> ingredient ;


}



abstract class  RecipesData {

  static const title = [
    'soup',
    'soup2',
    'soup3',
  ];

  static const image =[
    '',
    '',
    ''

  ];

  static const directions =[
    'directions',
    'directions2',
    'directions3'

  ];

  static const ingredient =[
    { 'ingredient1' : 'ingredientingredient' , 'ingredient2' : 'ingredientingredient'},
    { 'ingredient2' : 'ingredientingredient'},
    { 'ingredient3' : 'ingredientingredient'},
  ];



}