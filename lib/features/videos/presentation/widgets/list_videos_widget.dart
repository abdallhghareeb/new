import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';
import 'package:untitled1/features/videos/presentation/provider/videos_provider.dart';
import 'package:untitled1/features/videos/presentation/widgets/video_widget.dart';

class ListVideosWidget extends StatelessWidget {
  ListVideosWidget({super.key});
  final PageController controller = PageController();


  @override
  Widget build(BuildContext context) {
    var videoProvider = Provider.of<VideosProvider>(context);
    return PageView(
      controller:controller,
      physics: const AlwaysScrollableScrollPhysics(),
      scrollDirection: Axis.vertical,
      onPageChanged: (s){
        videoProvider.changeVideo(index: 2);
      },
      children: List.generate(videoProvider.myVideosList.length, (index) =>const VideoWidget()),
    );
  }
}
