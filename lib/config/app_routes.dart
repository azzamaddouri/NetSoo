import 'package:netsoo/pages/edit_profile_page.dart';
import 'package:netsoo/pages/home_page.dart';
import 'package:netsoo/pages/login_page.dart';
import 'package:netsoo/pages/main_page.dart';
import 'package:netsoo/pages/nearby_page.dart';
import 'package:netsoo/pages/user_page.dart';
import 'package:netsoo/provider/login_provider.dart';
import 'package:provider/provider.dart';

class AppRoutes {
  static final pages = {
    login: (context) => ChangeNotifierProvider(
          create: (context) => LoginProvider(),
          child: LoginPage(),
        ),
    home: (context) => HomePage(),
    main: (context) => MainPage(),
    editProfile: (context) => EditProfilePage(),
    nearby: (context) => NearbyPage(),
    user: (context) => UserPage(),
  };

  static const login = '/';
  static const home = '/home';
  static const main = '/main';
  static const editProfile = '/edit_profile';
  static const nearby = '/nearby';
  static const user = '/user';
}
