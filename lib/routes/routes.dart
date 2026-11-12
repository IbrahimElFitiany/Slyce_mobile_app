import 'package:go_router/go_router.dart';
import 'package:slyce/features/Auth/screens/height_picker_screen.dart';
import 'package:slyce/features/HomeScreen/home_screen.dart';
import 'package:slyce/features/MealScreen/meal_screen.dart';
import 'package:slyce/features/RestaurantScreen/restaurant_card.dart';


final router = GoRouter(
  routes: [
    GoRoute(
      path: "/",
      builder: (context, state) => HomeScreen()
    ),
    GoRoute(
      path: "/meals/:id",
      builder: (context, state) {
        final mealId = state.pathParameters['id']!;
        return MealScreen(mealId: mealId);
      }
    ),
    GoRoute(
      path: "/restaurant/:id",
      builder: (context, state) {
        final restaurant = state.pathParameters['id']!;
        return RestaurantScreen(restaurantId: restaurant);
      }
    ),
    GoRoute(
      path: "/register/height",
      builder: (context, builder) {
        return HeightPickerScreen();
      }
    )
  ]

);