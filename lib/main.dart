import 'package:flutter/material.dart';
import 'package:netsoo/config/app_routes.dart';
import 'package:netsoo/data/model/user.dart';
import 'package:netsoo/provider/app_repo.dart';
import 'package:netsoo/provider/post_provider.dart';
import 'package:netsoo/provider/user_provider.dart';
import 'package:netsoo/styles/app_colors.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider<AppRepo>(
        create: (context) => AppRepo(),
      ),
      ChangeNotifierProvider<PostProvider>(
        create: (context) => PostProvider(),
      ),
      ChangeNotifierProvider(
        create: (context) => UserProvider(),
      )
    ],
    child: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: 'Urbanist',
        scaffoldBackgroundColor: AppColors.background,
        brightness: Brightness.dark,
      ),
      initialRoute: AppRoutes.user,
      routes: AppRoutes.pages,
    );
  }
}
