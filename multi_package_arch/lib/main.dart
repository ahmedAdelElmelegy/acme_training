import 'package:core/di/injection.dart';
import 'package:core/helper/extention.dart';
import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:multi_package_arch/bloc.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();

  await init();

  runApp(
    EasyLocalization(
        supportedLocales: [Locale('ar', 'EG'), Locale('en', 'US')],
        path:
            'assets/translations', // <-- change the path of the translation files
        fallbackLocale: Locale('ar', 'EG'),
        startLocale: Locale('ar', 'EG'),
        child: MyApp()),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GenerateMultiBloc(
      child: MaterialApp.router(
        localizationsDelegates: context.localizationDelegates,
        supportedLocales: context.supportedLocales,
        locale: context.locale,
        debugShowCheckedModeBanner: false,
        routerConfig: router,
      ),
    );
  }
}
