import 'package:bootstrap_rask/dashboard_ui/presenation/desktop/page/bank_dashboard_screen.dart';
import 'package:bootstrap_rask/dashboard_ui/presenation/desktop/widget/side_bar_menu.dart';
import 'package:bootstrap_rask/login_screen/screen/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bootstrap5/flutter_bootstrap5.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    debugPrint(width.toString());
    return FlutterBootstrap5(
      builder: (ctx) => MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: BootstrapTheme.of(ctx).toTheme(
          theme: ThemeData(
            appBarTheme: AppBarTheme(backgroundColor: Colors.blue),
            bottomNavigationBarTheme: BottomNavigationBarThemeData(
              backgroundColor: Colors.blue,
            ),
            bottomSheetTheme: BottomSheetThemeData(
              backgroundColor: Colors.blue,
            ),
            brightness: Brightness.light,
          ),
        ),

        home: FlutterEasy(),
      ),
    );
  }
}

// bootstrap
class FlutterEasy extends StatelessWidget {
  const FlutterEasy({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    debugPrint(width.toString());
    return Scaffold(
      body: FB5Container.fluid(
        child: FB5Row(
          children: [
            FB5Col(
              classNames: 'col-12 col-md-6 col-lg-2 d-none d-sm-block',
              child: SidBarMenu(),
            ),
            FB5Col(
              classNames: 'col-12 col-md-6 col-lg-10   d-none d-sm-block',
              child: Center(child: DashboardBody()),
            ),
          ],
        ),
      ),
    );
  }
}
