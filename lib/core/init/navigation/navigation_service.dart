import 'package:flutter/cupertino.dart';
import 'INavigation_service.dart';

//service is for used to in models to navigate

//NavigationService become interface
class NavigationService implements INavigationService {
  static final NavigationService _instance = NavigationService._init();
  static NavigationService get instance => _instance;

  NavigationService._init();

  //access the NavigatorState outside of the build context
  GlobalKey<NavigatorState> navigatorKey = GlobalKey();
  // ignore: prefer_function_declarations_over_variables
  final removeAllOldRoutes = (route) => false;

  //navigate to named routes
  @override
  Future<void> navigateToPage(
      {String path = '/', Object data = const {}}) async {
    await navigatorKey.currentState?.pushNamed(path, arguments: data);
  }

  //remove pages from stack if condition is provided
  @override
  Future<void> navigateToPageClear(
      {String path = '/', Object data = const {}}) async {
    await navigatorKey.currentState
        ?.pushNamedAndRemoveUntil(path, removeAllOldRoutes, arguments: data);
  }
}