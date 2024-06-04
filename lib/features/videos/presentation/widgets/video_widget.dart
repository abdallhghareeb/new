import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:untitled1/features/videos/presentation/provider/videos_provider.dart';
import 'package:video_player/video_player.dart';

class VideoWidget extends StatelessWidget {
  const VideoWidget({super.key});

  @override
  Widget build(BuildContext context) {
    var videoProvider = Provider.of<VideosProvider>(context);
    return VideoPlayer(videoProvider.videoPlayerController);
  }
}
