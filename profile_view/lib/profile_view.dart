import 'dart:convert';
import 'dart:io';
import 'dart:typed_data';
// import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
// import 'package:image_cropper/image_cropper.dart';
// import 'package:image_picker/image_picker.dart';
// import 'package:page_transition/page_transition.dart';
// import 'package:zoom_widget/zoom_widget.dart';
// import 'package:image/image.dart' as img;

class ProfileView extends StatefulWidget {
  const ProfileView({super.key});

  @override
  State<ProfileView> createState() => _ProfileViewState();
}

class _ProfileViewState extends State<ProfileView> {
  // final ValueNotifier<String> _profileImagePath = ValueNotifier<String>("");

  // final ImagePicker imgpicker = ImagePicker();
  // String imagebase64string = "";
  // String imageName = "";
  // bool isChoosedImage = false;
  // XFile? _pickedFile;
  // CroppedFile? _croppedFile;
  // String imagePath = "";

  // void _fetchProfileImage() async {
  //   isChoosedImage = true;

  //   _pickedFile = await imgpicker.pickImage(
  //     source: ImageSource.gallery,
  //     imageQuality: 40,
  //     maxWidth: 400,
  //     maxHeight: 400,
  //   );
  //   _cropImage();
  // }

  // Future<void> _cropImage() async {
  //   Uint8List imagebytes;
  //   if (_pickedFile != null) {
  //     // fetchImage = false;
  //     final croppedFile = await ImageCropper().cropImage(
  //       sourcePath: _pickedFile!.path,
  //       compressFormat: ImageCompressFormat.jpg,
  //       compressQuality: 100,
  //       aspectRatioPresets: [CropAspectRatioPreset.square],
  //       uiSettings: [
  //         AndroidUiSettings(
  //             toolbarTitle: 'Cropper',
  //             toolbarColor: Theme.of(context).primaryColor,
  //             toolbarWidgetColor: Colors.white,
  //             initAspectRatio: CropAspectRatioPreset.original,
  //             lockAspectRatio: true,
  //             hideBottomControls: true),
  //         IOSUiSettings(
  //           title: 'Cropper',
  //         ),
  //         WebUiSettings(
  //           context: context,
  //           presentStyle: CropperPresentStyle.dialog,
  //           boundary: const CroppieBoundary(
  //             width: 520,
  //             height: 520,
  //           ),
  //           viewPort:
  //               const CroppieViewPort(width: 480, height: 480, type: 'circle'),
  //           enableExif: true,
  //           enableZoom: false,
  //           showZoomer: true,
  //         ),
  //       ],
  //     );
  //     if (croppedFile != null) {
  //       setState(() {
  //         _croppedFile = croppedFile;
  //       });
  //       _profileImagePath.value = _croppedFile!.path;
  //       final imageBytes =
  //           img.decodeImage(File(_profileImagePath.value).readAsBytesSync())!;
  //       imagebytes = Uint8List.fromList(img.encodePng(imageBytes));
  //       imagebase64string = base64.encode(imagebytes);
  //       imagePath = base64.encode(imagebytes);
  //       imageName = _pickedFile!.name;
  //     }
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Text('Profile UI'),
    );
    // return Stack(
    //   clipBehavior: Clip.none,
    //   children: [
    //     GestureDetector(
    //       onTap: () {
    //         if (imagePath.isNotEmpty) {
    //           Navigator.push(
    //             context,
    //             PageTransition(
    //               type: PageTransitionType.rightToLeft,
    //               duration: Duration(milliseconds: 280),
    //               reverseDuration: Duration(milliseconds: 280),
    //               curve: Curves.easeInOut,
    //               child: FullViewImage(imagePath, true),
    //             ),
    //           );
    //         }
    //       },
    //       child: Container(
    //           width: MediaQuery.of(context).size.width * 0.3,
    //           height: MediaQuery.of(context).size.height * 0.13,
    //           clipBehavior: Clip.hardEdge,
    //           decoration: BoxDecoration(
    //             shape: BoxShape.circle,
    //           ),
    //           child: ValueListenableBuilder(
    //             valueListenable: _profileImagePath,
    //             builder: (context, value, child) {
    //               return value == ""
    //                   ? Image.asset(
    //                       "assets/icons/profile.jpeg",
    //                       fit: BoxFit.cover,
    //                     )
    //                   : Image.file(
    //                       File(value),
    //                       fit: BoxFit.cover,
    //                     );
    //             },
    //           )),
    //     ),
    //     Positioned(
    //         bottom: -5,
    //         right: -5,
    //         child: GestureDetector(
    //           onTap: () {
    //             _fetchProfileImage();
    //           },
    //           child: Container(
    //             width: 40,
    //             height: 40,
    //             clipBehavior: Clip.hardEdge,
    //             decoration: BoxDecoration(
    //               shape: BoxShape.circle,
    //               color: Theme.of(context).primaryColor,
    //             ),
    //             child: Icon(
    //               Icons.image_outlined,
    //               color: Theme.of(context).scaffoldBackgroundColor,
    //             ),
    //           ),
    //         )),
    //   ],
    // );
  }
}

// class FullViewImage extends StatelessWidget {
//   final dynamic _image;
//   final bool _assetsImage;

//   const FullViewImage(this._image, this._assetsImage, {super.key});

//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: Scaffold(
//         appBar: AppBar(
//           centerTitle: true,
//           elevation: 0,
//           backgroundColor: Theme.of(context).scaffoldBackgroundColor,
//           automaticallyImplyLeading: true,
//         ),
//         body: Zoom(
//           initTotalZoomOut: true,
//           backgroundColor: Theme.of(context).scaffoldBackgroundColor,
//           canvasColor: Theme.of(context).scaffoldBackgroundColor,
//           scrollWeight: 5,
//           child: Center(
//               child: _assetsImage == true
//                   ? Image.asset(_image,
//                       height: MediaQuery.of(context).size.height,
//                       width: MediaQuery.of(context).size.width,
//                       fit: BoxFit.contain)
//                   : CachedNetworkImage(
//                       height: MediaQuery.of(context).size.height,
//                       width: MediaQuery.of(context).size.width,
//                       fit: BoxFit.contain,
//                       imageUrl: _image,
//                       placeholder: (context, url) =>
//                           Container(color: Theme.of(context).disabledColor),
//                       errorWidget: (context, url, error) => NoImageView())),
//         ),
//       ),
//     );
//   }
// }

class NoImageView extends StatelessWidget {
  const NoImageView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        alignment: Alignment.center,
        child: Icon(Icons.image_outlined, size: 30));
  }
}
