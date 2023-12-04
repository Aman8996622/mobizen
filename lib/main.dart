import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_overlay_window/flutter_overlay_window.dart';
import 'package:get/route_manager.dart';
import 'package:mobizen/presentation/screen/main_screen/main_screen.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  if (!await FlutterOverlayWindow.isPermissionGranted()) {
    FlutterOverlayWindow.requestPermission();
  }

  runApp(const MyApp());
}

// overlay entry point
@pragma("vm:entry-point")
void overlayMain() async {
  WidgetsFlutterBinding.ensureInitialized();

  SystemNavigator.pop();

  await FlutterOverlayWindow.showOverlay(
    overlayTitle: "SDNsdnjsd",
    enableDrag: true,
    height: 100,
    width: 100,
    overlayContent: 'ASKNAKS',
  );

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainScreen(),
    );
  }
}
