import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:easy_localization/easy_localization.dart';
import 'AppWithTranslate/screen_translate.dart';
import 'BMI calculator/home_page.dart';
import 'Login Screen/login.dart';
import 'Login Screen/login_validate/login_gsks.dart';
import 'Login Screen/login_validate/login_test.dart';
import 'Login Screen/widget/form_ui.dart';
import 'Mesenger/messenger_design.dart';
import 'Stack/stack_screen.dart';
import 'lecture13_7/Navigator/router_class/routerclass.dart';
import 'lecture13_7/Navigator/screen1.dart';
import 'lecture13_7/Navigator/screen3.dart';
import 'Login Screen/Two account(mershant, customer)/views/screen1.dart';
// void main() async {
//   WidgetsFlutterBinding.ensureInitialized();
//   await EasyLocalization.ensureInitialized();
  
//   runApp(
//     EasyLocalization(
//       supportedLocales: [Locale('en'), Locale('ar')],
//       path: 'assets/langs', // <-- change the path of the translation files 
//       fallbackLocale: Locale('en'),
//       child: MyApp()
//     ),
//   );
// }




// void main(List<String> args) {
//   runApp(MaterialApp(
//     navigatorKey: RouterApp.rout.navkey,
//     // Remove the debug banner
//     debugShowCheckedModeBanner: false,
//     title:'Navigator Test',
//     routes: {
//     //  '/': (context)=> Screen1a(),
//       //'screen3': (context)=> Screen3(),
//     },
//     onGenerateRoute: (RouteSettings routeSettings){
//     String name= routeSettings.name;
//     var argument= routeSettings.arguments; 
//     switch (name){
//      case('/'):
//         return MaterialPageRoute(
//           builder: (context){
//             return Screen1a();
//         });

//       case('screen3'):
//         return MaterialPageRoute(
//           builder: (context){
//             return Screen3(argument);
//         });
       
//       default: 
//         return MaterialPageRoute(
//           builder: (context){
//             return Scaffold(
//               body: Column(
//                 crossAxisAlignment: CrossAxisAlignment.center,
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   Center(
//                     child: Text(
//                       '404 this page not found',
//                       style: TextStyle(
//                         fontWeight: FontWeight.bold,
//                         color: Colors.red,
//                       ),
//                       ),
//                   ),
//                 ],
//               ),
//             );
//           }
//         );
//     }
//   },
//   onUnknownRoute:(RouteSettings routeSetting){
//     return null;
//   } ,
//   )
// );
// }

// void main(List<String> args) {
//   runApp(MaterialApp(
//     // Remove the debug banner
//     debugShowCheckedModeBanner: false,
//    // title:'BMI Calcultor',
//     home: MessngerScreen(),
//     )
//     );
// }

void main(List<String> args) {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Screen1(),
    ),
  );
}