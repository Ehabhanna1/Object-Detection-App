import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:object_detection_app/core/utils/app_styles.dart';


class ObjectDetectionScreen extends StatefulWidget {
  const ObjectDetectionScreen({super.key});

  @override
  State<ObjectDetectionScreen> createState() => _ObjectDetectionScreenState();
}

class _ObjectDetectionScreenState extends State<ObjectDetectionScreen> {
  @override
  Widget build(BuildContext context) {


    late CameraController _cameraController;

   Future<void> _initializeCamera()async{
    
    
   };



   void initState() {
    super.initState();
    _cameraController = CameraController(cameras[0], ResolutionPreset.medium);
    _cameraController.initialize().then((_) {
      if (!mounted) {
        return;
      }
      setState(() {});
    });
  }


    return Scaffold(
      appBar: AppBar(
        title:  Text("Object Detection",style: myTextStyle24(fontWeight: FontWeight.bold)),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Stack(
          children: [

          ],
        ),
      ) ,
      
    );
  }
}