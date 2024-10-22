import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';
import 'package:zalusomart/controllers/auth_controller.dart';
import 'package:zalusomart/provider/app_data.dart';
import 'package:zalusomart/provider/cart_provider.dart';
import 'package:zalusomart/provider/favourite_provider.dart';
import 'package:zalusomart/provider/product_provider.dart';
import 'package:zalusomart/views/screens/auth/login_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp().then((value) {
    Get.put(AuthController());
  });
  runApp(
    MultiProvider(providers: [
      ChangeNotifierProvider(create: (
        _,
      ) {
        return AppData();
      }),
      ChangeNotifierProvider(create: (
        _,
      ) {
        return ProductProvider();
      }),
      ChangeNotifierProvider(create: (
        _,
      ) {
        return CartProvider();
      }),
      ChangeNotifierProvider(create: (
        _,
      ) {
        return FavouriteProvider();
      })
    ], child: const MyApp()),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(statusBarColor: Colors.transparent));
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'ZalusoMart',
      theme: ThemeData(
        primarySwatch: Colors.pink,
      ),
      home: LoginScreen(),
      builder: EasyLoading.init(),
    );
  }
}
