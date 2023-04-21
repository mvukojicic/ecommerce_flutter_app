import 'package:ecommerce_app/app/app.dart';
import 'package:ecommerce_app/bootstrap.dart';
import 'package:ecommerce_app/firebase_options.dart';
import 'package:ecommerce_app/services/locator.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  locator();

  await bootstrap(() => const App());
}
