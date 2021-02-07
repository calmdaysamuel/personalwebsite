import 'package:flutter/material.dart';

import 'Utilities/WebsiteRoute.dart';
import 'Widgets/Pages/Error404.dart';
import 'Widgets/Pages/HomePage.dart';
import 'Widgets/Pages/ProjectGallery.dart';
import 'Widgets/Pages/ResumePage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowMaterialGrid: false,
        debugShowCheckedModeBanner: false,
        initialRoute: "",
        onGenerateRoute: WebsiteRoute.onGenerateRoute,
        onUnknownRoute: (settings) => MaterialPageRoute<void>(
            builder: (context) => Error404(), settings: settings),
        routes: {
          "/project-gallery": (context) => ProjectGallery(),
          "/experience-gallery": (context) => ResumePage(),
        },
        home: HomePage());
  }
}
