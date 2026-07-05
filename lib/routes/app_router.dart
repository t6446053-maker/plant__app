import 'package:flutter/material.dart';
import 'package:plt/auth/login_screen.dart';
import 'package:plt/auth/register_screen.dart';
import 'package:plt/routes/app_routes.dart';
import 'package:plt/screens/black_panes_guides_screen.dart';
import 'package:plt/screens/black_panes_screen.dart';
import 'package:plt/screens/cart_screen.dart';
import 'package:plt/screens/check_tranaction_history_screen.dart';
import 'package:plt/screens/checkout_screen.dart';
import 'package:plt/screens/edit_informtion_screen.dart';
import 'package:plt/screens/equipments_screen.dart';
import 'package:plt/screens/faqs_screen.dart';
import 'package:plt/screens/filter_items_screen.dart';
import 'package:plt/screens/home_screen.dart';
import 'package:plt/screens/notfiction_check_screen.dart';
import 'package:plt/screens/notification_screen.dart';
import 'package:plt/screens/planting_guide_screen.dart';
import 'package:plt/screens/spider_plant.dart';
import 'package:plt/screens/transaction_history_screen.dart';
import 'package:plt/screens/profile_screen.dart';
import 'package:plt/widgets/bottom_nav_bar.dart';

class AppRouter {
  Route<dynamic> onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case AppRoutes.login:
        return MaterialPageRoute(
          builder: (_) => const LoginScreen(),
        );

      case AppRoutes.register:
        return MaterialPageRoute(
          builder: (_) => const RegisterScreen(),
        );

      case AppRoutes.home:
        return MaterialPageRoute(
          builder: (_) => const HomeScren(),
        );

      case AppRoutes.cart:
        return MaterialPageRoute(
          builder: (_) => const CartScreen(initialQuantity: 1),
        );

      case AppRoutes.equipments:
        return MaterialPageRoute(
          builder: (_) => const EquipmentsScreen(),
        );

      case AppRoutes.notification:
        return MaterialPageRoute(
          builder: (_) => const NotfactionScreen(),
        );

      case AppRoutes.user:
        return MaterialPageRoute(
          builder: (_) => const UserScreen(),
        );

      case AppRoutes.spiderPlants:
        return MaterialPageRoute(
          builder: (_) => const SpiderPlant(),
        );

      case AppRoutes.navBar:
        return MaterialPageRoute(
          builder: (_) => const ButtomNavBar(),
        );

      case AppRoutes.filter:
        return MaterialPageRoute(
          builder: (_) => const FilterItemsScreen(),
        );

      case AppRoutes.checkout:
        return MaterialPageRoute(
          builder: (_) => const CheckoutScreen(),
        );

      case AppRoutes.notificationCheck:
        return MaterialPageRoute(
          builder: (_) => const NotfictionCheckScreen(),
        );

      case AppRoutes.editInformation:
        return MaterialPageRoute(
          builder: (_) => const EditInformtionScreen(),
        );

      case AppRoutes.plantingGuide:
        return MaterialPageRoute(
          builder: (_) => const PlantingGuideScreen(),
        );

      case AppRoutes.blackPanes:
        return MaterialPageRoute(
          builder: (_) => const BlackPanesScreen(),
        );

      case AppRoutes.faqs:
        return MaterialPageRoute(
          builder: (_) => const FaqsScreen(),
        );

      case AppRoutes.transactionHistory:
        return MaterialPageRoute(
          builder: (_) => const TransactionHistoryScreen(),
        );

      case AppRoutes.checkTransactionHistory:
        return MaterialPageRoute(
          builder: (_) => const CheckTransactionHistoryScreen(),
        );

      case AppRoutes.blackPanesGuides:
        return MaterialPageRoute(
          builder: (_) => const BlackPanesGuidesScreen(),
        );

      default:
        return MaterialPageRoute(
          builder: (_) => const Scaffold(),
        );
    }
  }
}