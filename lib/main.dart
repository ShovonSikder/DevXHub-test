import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:opal_mvp/screens/analysing_s1/analysing_s1.dart';
import 'package:opal_mvp/screens/analysing_s2/analysis_s2.dart';
import 'package:opal_mvp/screens/dashboard/dashboard.dart';
import 'package:opal_mvp/screens/info/info.dart';
import 'package:opal_mvp/screens/success/success.dart';
import 'package:opal_mvp/utils/app_syles.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]).then((_) {
    runApp(const MyApp());
  });
  // runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(
        statusBarColor:
            AppStyles.backgroundColor, // Set your desired status bar color
      ),
    );
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.deepPurple,
        ),
        useMaterial3: true,
      ),
      initialRoute: AnalysingS1.routeName,
      routes: {
        AnalysingS1.routeName: (context) => const AnalysingS1(),
        AnalysingS2.routeName: (context) => const AnalysingS2(),
        Success.routeName: (context) => const Success(),
        Dashboard.routeName: (context) => const Dashboard(),
        Info.routeName: (context) => const Info(),
      },
    );
  }
}
