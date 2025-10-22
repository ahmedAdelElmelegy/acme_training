import 'package:customs/core/di/injection.dart';
import 'package:customs/core/helper/extention.dart';
import 'package:customs/core/routing/auth_middle_ware.dart';
import 'package:customs/feature/home/presentation/manager/home/home_cubit.dart';
import 'package:customs/firebase_options.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:url_strategy/url_strategy.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  setPathUrlStrategy();
  // await dotenv.load(fileName: ".env");

  // قراءة

  init();
  // final user = SecureCookie.getSecureCookie('user_data');
  // if (user != null) {
  //   print('👤 Welcome ${user['name']}');
  //   print('🔑 Token: ${user['token']}');
  // }
  runApp(
    EasyLocalization(
      supportedLocales: [Locale('ar'), Locale('en')],
      path:
          'assets/translation', // <-- change the path of the translation files
      fallbackLocale: Locale('ar'),
      startLocale: Locale('ar'),
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [BlocProvider(create: (context) => HomeCubit())],
      child: MaterialApp.router(
        debugShowCheckedModeBanner: false,
        routerConfig: router,
        localizationsDelegates: context.localizationDelegates,
        supportedLocales: context.supportedLocales,
        locale: context.locale,
      ),
    );
  }
}

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    // Auto navigate after 2 seconds - REPLACES history
    Future.delayed(Duration(seconds: 2), () {
      context.go('/home'); // This replaces the entire history
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            // This REPLACES splash with home in browser history
            context.go('/home');
          },
          child: Text('Go to Home'),
        ),
      ),
    );
  }
}

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Login Screen'),
            ElevatedButton(
              onPressed: () {
                // Login and REPLACE login with home in browser history
                AuthService.isAuthenticated = true;
                AuthService.hasSeenSplash = true;
                context.go('/home'); // This removes login from history
              },
              child: Text('Login'),
            ),
          ],
        ),
      ),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Screen'),
        automaticallyImplyLeading: false,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Home Screen'),
            ElevatedButton(
              onPressed: () {
                // Logout and REPLACE home with login in browser history
                AuthService.isAuthenticated = false;
                context.go('/login'); // This removes home from history
              },
              child: Text('Logout'),
            ),
          ],
        ),
      ),
    );
  }
}
