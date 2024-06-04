import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled1/core/helper_functions/navigation.dart';
import 'package:video_player/video_player.dart';


class VideosProvider extends ChangeNotifier {
  late VideoPlayerController videoPlayerController;
  List<String> myVideosList = [
    'https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4',
    'https://videos.pexels.com/video-files/2932301/2932301-hd_1366_720_24fps.mp4',
    'https://videos.pexels.com/video-files/6077718/6077718-hd_1280_720_25fps.mp4',

  ];
  void initState() {
    videoPlayerController = VideoPlayerController.networkUrl(Uri.parse(
        'https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4'))
      ..initialize().then((_) {
        notifyListeners();
      });
    videoPlayerController.play();
  }

  void goTo({required Widget className}){
    navP(className);
  }
  void changeVideo({required int index}){
    videoPlayerController = VideoPlayerController.networkUrl(Uri.parse(myVideosList[index]))..initialize().then((value) {
          videoPlayerController.play();
          notifyListeners();
    });

  }
}
