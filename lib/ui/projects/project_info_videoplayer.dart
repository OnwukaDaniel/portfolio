import 'dart:developer';
import 'dart:io';
import 'dart:isolate';

import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:media_kit_video/media_kit_video.dart';
import 'package:path_provider/path_provider.dart';
import 'package:portfolio/common_imports.dart';

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
  double w = 200;
  double h = 480;

  @override
  void initState() {
    super.initState();
    controller = VideoPlayerController.asset(widget.asset);
    controller!.initialize().then((_) => controller!.play());
  }

  @override
  void dispose() {
    if (controller != null) controller!.dispose();
    mediaController.player.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (kIsWeb) return normalPlayer();
    if (Platform.isWindows) {
      return Wrap(
        runAlignment: WrapAlignment.center,
        alignment: WrapAlignment.center,
        children: [
          Hero(
            tag: widget.asset,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(16),
              child: FutureBuilder(
                  future: saveAssetToFile(),
                  builder: (_, snapshot) {
                    if (snapshot.connectionState == ConnectionState.waiting) {
                      return const Center(
                        child:
                            CircularProgressIndicator(color: AppColor.appColor),
                      );
                    }
                    if (snapshot.data == null) {
                      return const Icon(Icons.nearby_error,
                          color: Colors.white);
                    }
                    player.open(Media(snapshot.data!.path));

                    return Video(
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
                              builder: (BuildContext context, snapshot) {
                                if (snapshot.data ?? false) {
                                  return const Icon(
                                    Icons.play_arrow,
                                    color: Colors.white,
                                  );
                                }
                                return const Icon(Icons.pause,
                                    color: Colors.white);
                              },
                            ),
                          ),
                        );
                      },
                    );
                  }),
            ),
          ),
        ],
      );
    }
    return normalPlayer();
  }

  Widget normalPlayer() {
    var videoWidget = Wrap(
      runAlignment: WrapAlignment.center,
      alignment: WrapAlignment.center,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(16),
          child: SizedBox(width: w, height: h, child: VideoPlayer(controller!)),
        ),
      ],
    );
    return GestureDetector(
      //onDoubleTap: () => ProjectsUtil.dialog(context, videoWidget, widget.asset),
      child: Hero(tag: widget.asset, child: videoWidget),
    );
  }

  Future<File> saveAssetToFile() async {
    var path = widget.asset;
    final byteData = await rootBundle.load(path);

    final file = File('${(await getTemporaryDirectory()).path}/$path');
    await file.create(recursive: true);
    await file.writeAsBytes(byteData.buffer
        .asUint8List(byteData.offsetInBytes, byteData.lengthInBytes));
    return file;
  }

  runIsolate() async {
    ReceivePort receivePort = ReceivePort();
    //await Isolate.spawn(saveAssetToFile, receivePort.sendPort);

    // Listen for messages from the isolate
    receivePort.listen((message) {
      log('Result from isolate: $message');
      // Close the receive port once done
      receivePort.close();
    });
  }
}
