import 'package:ecommerce_app/controllers/controller_binding.dart';
import 'package:ecommerce_app/l10n/l10n.dart';
import 'package:ecommerce_app/router/routes_handler.dart';
import 'package:ecommerce_app/services/auth_service.dart';
import 'package:ecommerce_app/services/locator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:get/get.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialBinding: ControllerBindings(),
      debugShowCheckedModeBanner: false,
      onGenerateRoute: routeHandler,
      theme: ThemeData(
        fontFamily: 'Montserrat',
        textTheme: const TextTheme(
          displayLarge: TextStyle(
            color: Colors.black,
            fontSize: 24,
            fontWeight: FontWeight.w600,
          ),
          bodyLarge: TextStyle(
            color: Colors.black,
            fontSize: 16,
            fontWeight: FontWeight.w600,
          ),
        ),
        appBarTheme: const AppBarTheme(color: Colors.white),
      ),
      localizationsDelegates: const [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate
      ],
      supportedLocales: AppLocalizations.supportedLocales,
      // initialRoute: Routes.loginScreen,
      home: getIt<AuthService>().handleAuthState(),
    );
  }
}
