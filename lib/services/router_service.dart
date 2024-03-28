import 'package:go_router/go_router.dart';
import 'package:store/widgets/screen/product_catalogue/details_screen.dart';
import 'package:store/widgets/screen/home/home_screen.dart';
import 'package:store/widgets/screen/product_item/buy_product.dart';

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
        GoRoute(
          path: '/details/item',
          name: 'item',
          builder: (context, state) => const BuyProduct(),
        ),
      ],
    );
  }
}
