import 'dart:developer';
import 'dart:io';

import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:path_provider/path_provider.dart';
import 'package:portfolio/imports/common_imports.dart';
import 'package:media_kit/media_kit.dart'; // Provides [Player], [Media], [Playlist] etc.
import 'package:media_kit_video/media_kit_video.dart';

class ProjectInfoVideoPlayer extends StatefulWidget {
  final String asset;

  const ProjectInfoVideoPlayer(this.asset, {super.key});

  @override
  State<ProjectInfoVideoPlayer> createState() => _ProjectInfoVideoPlayerState();
}

class _ProjectInfoVideoPlayerState extends State<ProjectInfoVideoPlayer> {
  VideoPlayerController? controller;
  late final player = Player();
  late final mediaController = VideoController(player);

  @override
  void initState() {
    if (!Platform.isWindows) {
      controller = VideoPlayerController.asset(widget.asset);
      controller!.initialize().then((_) {
        controller!.play();
      });
    }
    if (Platform.isWindows) {
      saveAssetToFile().then((file){
        player.open(Media(file.path));
      });
    }
    super.initState();
  }

  @override
  void dispose() {
    if (controller != null) controller!.dispose();
    mediaController.player.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double w = 200;
    double h = 480;

    if (Platform.isWindows) {
      return ClipRRect(
        borderRadius: BorderRadius.circular(16),
        child: SizedBox(
          width: w,
          height: h,
          child: Video(
            width: w,
            height: h,
            controller: mediaController,
            fit: BoxFit.cover,
            controls: (state) {
              return Center(
                child: IconButton(
                  onPressed: () => setState(() {
                    mediaController.player.playOrPause();
                  }),
                  icon: StreamBuilder(
                    stream: mediaController.player.stream.playing,
                    builder: (BuildContext context,  snapshot) {
                      if(snapshot.data??false) return const Icon(Icons.play_arrow, color: Colors.white);
                      return const Icon(Icons.pause, color: Colors.white);
                    },
                  ),
                ),
              );
            },
          ),
        ),
      );
    }
    return ClipRRect(
      borderRadius: BorderRadius.circular(16),
      child: SizedBox(width: w, height: h, child: VideoPlayer(controller!)),
    );
  }

  Future<File> saveAssetToFile() async {
    var path = widget.asset;
    var fileName = path.split('/').last;
    final byteData = await rootBundle.load(path);

    final file = File('${(await getTemporaryDirectory()).path}/$path');
    await file.create(recursive: true);
    await file.writeAsBytes(byteData.buffer
        .asUint8List(byteData.offsetInBytes, byteData.lengthInBytes));
    return file;
  }
}
