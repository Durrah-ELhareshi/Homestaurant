import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:homesturent1/application/ingredients_state.dart';
import 'package:homesturent1/application/recipe_cubit.dart';

class RecipesView extends StatelessWidget {
  // final Map<String, List<String>> data;

  const RecipesView({super.key});

  @override
  Widget build(BuildContext context) {
    // List<String>? imageList = data["Image"];
    // List<String>? titleList = data["Title"];
    // List<String>? descriptionList = data["Description"];

    return SafeArea(
      child: Scaffold(
        
          body:  SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10.0,),
                      child: IconButton(onPressed: () {}, icon: Icon(Icons.arrow_back_ios)),
                    ),

                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Text(
                        "Recipe results based on:",
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8.0,),
                      child: Container(
                        height: 50.0,
                        child: ListView.separated(
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (context, index) {
                              return Container(
                                width: MediaQuery.of(context).size.width / 3,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20.0),
                                  color: const Color.fromARGB(255, 2, 39, 69),
                                ),
                                child: Padding(
                                    padding: const EdgeInsets.all(12.0),
                                    child: Center(
                                      child: Text(
                                        context.read<RecipeCubit>().state.selectedIngredients[index],
                                        maxLines: 1,
                                        overflow: TextOverflow.ellipsis,
                                        style: TextStyle(
                                            fontSize: 18.0, color: Colors.white),
                                      ),
                                    ),
                                  ),

                              );
                            },
                            separatorBuilder: (context, index) {
                              return SizedBox(
                                width: 3.0,
                              );
                            },
                            itemCount: context.read<RecipeCubit>().state.selectedIngredients.length),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: ListView.separated(
                          shrinkWrap: true,
                          physics: NeverScrollableScrollPhysics(),
                          itemBuilder: (context, index) {
                            return Container(
                              height: 120.0,
                              width: double.infinity,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30.0),
                                  color: Color.fromARGB(255, 226, 226, 226)),
                              child: Row(
                                children: [
                                  Container(
                                      height: 120.0,
                                      width: 120.0,
                                      child: ClipRRect(
                                          borderRadius: BorderRadius.circular(30.0),
                                          child: Image.asset(
                                            ",",
                                            fit: BoxFit.cover,
                                          ))),
                                  SizedBox(
                                    width: 15.0,
                                  ),
                                  Expanded(
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          ",",
                                          maxLines: 1,
                                          overflow: TextOverflow.ellipsis,
                                          style: TextStyle(
                                              fontSize: 20.0,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        Text(
                                          ",",
                                          maxLines: 2,
                                          overflow: TextOverflow.ellipsis,
                                          style: TextStyle(fontSize: 18.0),
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    width: 15.0,
                                  ),
                                  IconButton(
                                      onPressed: () {},
                                      icon: Icon(Icons.arrow_forward_ios))
                                ],
                              ),
                            );
                          },
                          separatorBuilder: (context, index) {
                            return SizedBox(
                              height: 10.0,
                            );
                          },
                          itemCount: (context) {
                            context
                            return 4;
                          }
                          // data.values.fold(
                          //     0,
                          //         (int maxLength, List<String> list) =>
                          //     list.length > maxLength
                          //         ? list.length
                          //         : maxLength)
                      ),
                    ),
                  ],
                ),

          )),
    );
  }
}



