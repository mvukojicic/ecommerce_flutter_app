import 'package:ecommerce_app/services/auth_service.dart';
import 'package:ecommerce_app/services/rest_api.dart';
import 'package:get_it/get_it.dart';

final GetIt getIt = GetIt.instance;

void locator() {
  getIt
    ..registerSingleton<RestApi>(RestApi())
    ..registerSingleton<AuthService>(AuthService());
}
