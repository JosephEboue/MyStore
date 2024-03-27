import 'package:go_router/go_router.dart';
import 'package:store/widgets/screen/details_screen.dart';
import 'package:store/widgets/screen/home/home_screen.dart';

class RouterService {
  GoRouter getRouter() {
    return GoRouter(
      routes: [
        GoRoute(
          path: '/',
          name: 'name',
          builder: (context, state) => const HomeScreen(),
        ),
        GoRoute(
          path: '/details',
          name: 'details',
          builder: (context, state) => const DetailsScreen(),
        ),
      ],
    );
  }
}
