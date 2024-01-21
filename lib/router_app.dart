import 'package:flutter/material.dart';
import 'package:homesturent1/screens/filters.dart';
import 'package:homesturent1/screens/home.dart';
import 'package:homesturent1/screens/recipes_view.dart';


class RouteGenerator {
  static const String homeScreen = '/';
  static const String recipesScreen = '/RecipesView';

  RouteGenerator._();

  static Route<dynamic> generateRoute(RouteSettings settings) {
    final args = settings.arguments;

    switch (settings.name) {
      case homeScreen:
        return _buildRoute(const HomeScreen(), settings);
      case recipesScreen:
        return _buildRoute(const RecipesView(), settings);

      default:
        return _buildRoute(
            RouteNotFoundScreen(
              routeName: settings.name,
            ),
            settings);
    }
  }

  static MaterialPageRoute _buildRoute(Widget child, RouteSettings settings) {
    return MaterialPageRoute(builder: (_) => child, settings: settings);
  }
}

class RouteNotFoundScreen extends StatelessWidget {
  const RouteNotFoundScreen({
    Key? key,
    required this.routeName,
  }) : super(key: key);
  final String? routeName;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('The route $routeName is not found')),
      body: const Center(
          child: Text('Sorry, the page you are looking for does not exist.')),
    );
  }
}

class RouteException implements Exception {
  final String message;

  const RouteException(this.message);

  FormatException exceptionRoute() {
    return FormatException(message);
  }
}
