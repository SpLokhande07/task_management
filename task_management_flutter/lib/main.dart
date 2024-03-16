import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task_management_flutter/constants/theme.dart';
import 'package:task_management_flutter/firebase_options.dart';
import 'package:task_management_flutter/router/router.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context, ref) {
    var routerPod = ref.watch(routerProvider);
    return ScreenUtilInit(
        designSize: const Size(360, 690),
        minTextAdapt: true,
        splitScreenMode: true,
        // Use builder only if you need to use library outside ScreenUtilInit context
        builder: (_, child) {
          return MaterialApp.router(
            title: 'Flutter Demo',
            theme: MyAppTheme.lightTheme,
            // ThemeData(
            //   colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
            //   useMaterial3: true,

            //   // textTheme:
            //   //     GoogleFonts.robotoSerifTextTheme(Theme.of(context).textTheme)
            // ),
            darkTheme: MyAppTheme.darkTheme,
            themeMode: ThemeMode.light,
            routeInformationParser: routerPod.routeInformationParser,
            routerDelegate: routerPod.routerDelegate,
            routeInformationProvider: routerPod.routeInformationProvider,
          );
        });
  }
}
