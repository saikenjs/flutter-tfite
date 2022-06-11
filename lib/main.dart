import 'package:flutter/material.dart';
import 'package:camera/camera.dart';
import 'package:tflite_object_detection/screens/home.dart';

main() async {
  WidgetsFlutterBinding.ensureInitialized();
  List<CameraDescription> cameras = await availableCameras();
  runApp(MyApp(
    cameras: cameras,
  ));
}

class MyApp extends StatelessWidget {
  final List<CameraDescription> cameras;
  const MyApp({Key? key, required this.cameras}) : super(key: key);

  @override
  Widget build(BuildContext context) => MaterialApp(
        title: 'TFLite',
        debugShowCheckedModeBanner: false,
        initialRoute: '/',
        routes: {
          '/': (context) => HomeScreen(cameras: cameras),
        },
      );
}
