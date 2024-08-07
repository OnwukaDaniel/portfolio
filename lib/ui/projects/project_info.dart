import 'package:portfolio/common_imports.dart';

class ProjectInfo extends StatelessWidget {
  final SideBarInfo data;

  const ProjectInfo(this.data, {super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var tm = TextUtils.titleMedium(context).copyWith(fontFamily: 'Nunito');
    var bs = TextUtils.bodySmall(context).copyWith(fontFamily: 'Nunito');
    var bl = TextUtils.bodyLarge(context).copyWith(fontFamily: 'Nunito');
    var bm = TextUtils.bodyMedium(context).copyWith(fontFamily: 'Nunito');
    double height =
        context.device == DeviceType.mobile ? 200 : size.height * .35;

    return ViewModelBuilder.nonReactive(
      viewModelBuilder: () => ProjectsViewmodel(),
      onViewModelReady: (_) => _.silverBarStretched(),
      builder: (context, model, _) {
        return AppWrapper(
          showAppBar: false,
          child: Scaffold(
            body: CustomScrollView(
              controller: model.pageScrollController,
              slivers: [
                SliverAppBar(
                  automaticallyImplyLeading: false,
                  expandedHeight: height,
                  foregroundColor: Colors.transparent,
                  backgroundColor: Colors.transparent,
                  pinned: true,
                  flexibleSpace: LayoutBuilder(
                    builder: (_, BoxConstraints constraints) {
                      var top = constraints.biggest.height;

                      return FlexibleSpaceBar(
                        title: AnimatedOpacity(
                          duration: const Duration(milliseconds: 300),
                          opacity: top <= kToolbarHeight + 10 ? 1.0 : 0.0,
                          child: Stack(
                            alignment: Alignment.topLeft,
                            children: [
                              Image.asset(
                                data.image,
                                width: double.infinity,
                                height: 200,
                                fit: BoxFit.cover,
                              ),
                              Row(
                                children: [
                                  const SizedBox(width: 16),
                                  Padding(
                                    padding: const EdgeInsets.all(4),
                                    child: Image.asset(
                                      data.appIcon,
                                      height: kToolbarHeight,
                                      width: kToolbarHeight,
                                    ),
                                  ),
                                  Text(
                                    data.file.substring(
                                      0,
                                      data.file.indexOf('.'),
                                    ),
                                    maxLines: 5,
                                    textAlign: TextAlign.center,
                                    style: bl.copyWith(
                                      color: Colors.white,
                                      fontSize: 20,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        background: Stack(
                          alignment: Alignment.bottomCenter,
                          children: [
                            Image.asset(
                              data.image,
                              width: double.infinity,
                              height: height,
                              fit: BoxFit.cover,
                            ),
                            Container(
                              decoration: const BoxDecoration(
                                gradient: LinearGradient(
                                  begin: Alignment.bottomCenter,
                                  end: Alignment.topCenter,
                                  colors: [
                                    Colors.black87,
                                    Colors.black45,
                                    Colors.black38,
                                    Colors.black12,
                                    Colors.black12,
                                  ],
                                ),
                              ),
                            ),
                            11.h,
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Expanded(
                                  flex: 7,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      const Spacer(flex: 2),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 16),
                                        child: Text(
                                          data.file.substring(
                                              0, data.file.indexOf('.')),
                                          maxLines: 5,
                                          textAlign: TextAlign.center,
                                          style: tm.copyWith(
                                            overflow: TextOverflow.ellipsis,
                                            fontWeight: FontWeight.w900,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),
                                      (context.h * 0.025).h,
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 16),
                                        child: Text(
                                          data.info,
                                          maxLines: 5,
                                          style: bs.copyWith(
                                            overflow: TextOverflow.ellipsis,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),
                                      (context.h * 0.05).h,
                                    ],
                                  ),
                                ),
                                const Spacer(),
                                Expanded(
                                  flex: 2,
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Image.asset(
                                      data.appIcon,
                                      width: 100,
                                      height: 100,
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ),
                SliverList(
                  delegate: SliverChildListDelegate(
                    [
                      Padding(
                        padding: const EdgeInsets.all(16),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Expanded(
                                  flex: 8,
                                  child: Container(
                                    height: .2,
                                    width: double.infinity,
                                    color: Colors.grey,
                                  ),
                                ),
                                const Spacer(flex: 2),
                              ],
                            ),
                            16.h,
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Expanded(flex: 20, child: about()),
                                16.w,
                                mainBody(),
                              ],
                            ),
                            16.h,
                            if (data.project == ProjectsEnum.powerPlug)
                              const PowerPlugInfo(),
                            switch (data.project) {
                              ProjectsEnum.powerPlug => const PowerPlugInfo(),
                              ProjectsEnum.snaccFood => const SnaccFoodInfo(),
                              ProjectsEnum.sentrified => 0.h,
                              ProjectsEnum.taskPadi => 0.h,
                              ProjectsEnum.sportifan => 0.h,
                              ProjectsEnum.altFit => 0.h,
                              ProjectsEnum.abbBlindDating => 0.h,
                              ProjectsEnum.cronetSolution => 0.h,
                              ProjectsEnum.notes => 0.h,
                              null => 0.h,
                            },
                          ],
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        );
      },
    );
  }

  Widget mainBody() {
    bool showView = true;

    return StatefulBuilder(builder: (context, setState) {
      var bs = TextUtils.bodySmall(context).copyWith(fontFamily: 'Nunito');
      var bl = TextUtils.bodyLarge(context).copyWith(fontFamily: 'Nunito');
      var tm = TextUtils.titleMedium(context).copyWith(fontFamily: 'Nunito');

      return Expanded(
        flex: showView ? 10 : 1,
        child: Builder(
          builder: (context) {
            var date = data.date ?? DateTime.now();
            var day =
                date.day.toString().length == 1 ? '0${date.day}' : date.day;
            var month = date.month.toString().length == 1
                ? '0${date.month}'
                : date.month;
            var year = date.year;

            var team = '';
            for (String i in data.teamMembers) {
              team += ' $i,';
            }
            if (team.isNotEmpty) {
              team = team.trim().substring(0, team.length - 1);
            }

            Map<String, String> json = {
              'Project Type: ': data.type?.name ?? '',
              'Technology: ': data.technology,
              'Language: ': data.file.split('.').last.toUpperCase(),
              'Team: ': team,
              'Client: ': data.client,
              'Year: ': '$day $month $year'
            };
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                if (showView)
                  InkWell(
                    onTap: () => setState(() => showView = !showView),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16),
                          child: Text(
                            'More Info',
                            style: tm.copyWith(fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    ),
                  ),
                12.h,
                if (showView)
                  ListView.separated(
                    itemCount: json.keys.length,
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemBuilder: (BuildContext context, int index) {
                      var key = json.keys.toList()[index];
                      var value = json.values.toList()[index];
                      return Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: context.cardThemeColor,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              padding: const EdgeInsets.all(12),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                color: context.cardThemeColor,
                              ),
                              child: Row(
                                children: [
                                  Text(
                                    key,
                                    style: bs.copyWith(
                                      fontWeight: FontWeight.w900,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Builder(builder: (_) {
                              var splits = value.split(',');
                              String text = value;
                              if (splits.length > 1) {
                                text = splits.fold('', (prev, e) {
                                  return '${prev.trim()}\n${e.isNotEmpty ? '* ${e.trim()}' : ''}';
                                });
                              }
                              return Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 12),
                                child:
                                    Text(text, style: bl.copyWith(height: 2,
                                      fontWeight: FontWeight.w900,
                                    )),
                              );
                            }),
                          ],
                        ),
                      );
                    },
                    separatorBuilder: (_, __) {
                      return Divider(color: context.dividerColor);
                    },
                  ),
                if (!showView)
                  InkWell(
                    onTap: () => setState(() => showView = !showView),
                    child: SizedBox(
                      child: RotatedBox(
                        quarterTurns: 1,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Click to See more',
                                style: tm.copyWith(fontWeight: FontWeight.bold),
                              ),
                              16.w,
                              Icon(Icons.compare_arrows_outlined, color: bs.color,)
                            ],
                          ),
                        ),
                      ),
                    ),
                  )
              ],
            );
          },
        ),
      );
    });
  }

  Widget about() {
    Widget spaceBtwRows = 12.h;
    return Builder(builder: (context) {
      var bs = TextUtils.bodySmall(context).copyWith(fontFamily: 'Nunito');
      var tm = TextUtils.titleMedium(context).copyWith(fontFamily: 'Nunito');
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Text(
              'About',
              style: tm.copyWith(fontWeight: FontWeight.bold),
            ),
          ),
          spaceBtwRows,
          Container(
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: context.cardThemeColor,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(data.about, style: bs.copyWith(height: 2)),
                const SizedBox(height: 8),
                Row(
                  children: [
                    if (data.appleLink.isNotEmpty) ...[
                      TextButton(
                        onPressed: () => Utils.launchWeb(data.appleLink),
                        child: Row(
                          children: [
                            Text('Get it on ', style: bs),
                            const SizedBox(width: 4),
                            Image.asset(
                              'assets/icons/apple.png',
                              color: bs.color,
                              width: 20,
                              height: 20,
                            ),
                          ],
                        ),
                      ),
                    ],
                    const SizedBox(width: 12),
                    if (data.playLink.isNotEmpty) ...[
                      TextButton(
                        onPressed: () => Utils.launch(data.playLink),
                        child: Row(
                          children: [
                            Text('Get it on ', style: bs),
                            const SizedBox(width: 4),
                            Image.asset(
                              'assets/icons/playstore.webp',
                              width: 20,
                              height: 20,
                            ),
                          ],
                        ),
                      ),
                    ],
                    const SizedBox(width: 12),
                    if (data.downloadLink.isNotEmpty) ...[
                      TextButton(
                        onPressed: () => Utils.launchWeb(data.downloadLink),
                        child: Row(
                          children: [
                            Text('Download apk ', style: bs),
                            const SizedBox(width: 12),
                            Icon(Icons.download_outlined, color: bs.color),
                          ],
                        ),
                      ),
                    ],
                  ],
                ),
              ],
            ),
          ),
          spaceBtwRows,
          if (data.rolesAndResponsibility.isNotEmpty)
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Text(
                'Roles and Responsibility',
                style: tm.copyWith(fontWeight: FontWeight.bold),
              ),
            ),
          if (data.rolesAndResponsibility.isNotEmpty) spaceBtwRows,
          if (data.rolesAndResponsibility.isNotEmpty)
            Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: context.cardThemeColor,
              ),
              child: Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Builder(builder: (_) {
                        var splits = data.rolesAndResponsibility.split(',');
                        String text = data.rolesAndResponsibility;
                        if (splits.length > 1) {
                          text = splits.fold('', (prev, e) {
                            return '${prev.trim()}\n${e.isNotEmpty ? '* ${e.trim()}' : ''}';
                          });
                        }
                        return Padding(
                          padding: const EdgeInsets.all(16),
                          child: Text(text, style: bs.copyWith(height: 2)),
                        );
                      }),
                    ],
                  ),
                ],
              ),
            ),
          spaceBtwRows,
          if (data.technologiesAndTools.isNotEmpty)
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Text(
                'Technology and Tools',
                style: tm.copyWith(fontWeight: FontWeight.bold),
              ),
            ),
          if (data.technologiesAndTools.isNotEmpty) spaceBtwRows,
          if (data.technologiesAndTools.isNotEmpty)
            Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: context.cardThemeColor,
              ),
              child: Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Builder(builder: (_) {
                        var splits = data.technologiesAndTools.split(',');
                        String text = data.technologiesAndTools;
                        if (splits.length > 1) {
                          text = splits.fold('', (prev, e) {
                            return '${prev.trim()}\n${e.isNotEmpty ? '* ${e.trim()}' : ''}';
                          });
                        }
                        return Padding(
                          padding: const EdgeInsets.all(16),
                          child: Text(text, style: bs.copyWith(height: 2)),
                        );
                      }),
                    ],
                  ),
                ],
              ),
            ),
          spaceBtwRows,
          if (data.keyFeatures.isNotEmpty)
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Text(
                'Key Features',
                style: tm.copyWith(fontWeight: FontWeight.bold),
              ),
            ),
          if (data.keyFeatures.isNotEmpty) spaceBtwRows,
          if (data.keyFeatures.isNotEmpty)
            Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: context.cardThemeColor,
              ),
              child: Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Builder(builder: (_) {
                        var splits = data.keyFeatures.split(',');
                        String text = data.keyFeatures;
                        if (splits.length > 1) {
                          text = splits.fold('', (prev, e) {
                            return '${prev.trim()}\n${e.isNotEmpty ? '* ${e.trim()}' : ''}';
                          });
                        }
                        return Padding(
                          padding: const EdgeInsets.all(16),
                          child: Text(text, style: bs.copyWith(height: 2)),
                        );
                      }),
                    ],
                  ),
                ],
              ),
            ),
        ],
      );
    });
  }

  Widget codeBar() {
    var blue = Colors.blueAccent;
    var red1 = Colors.redAccent[600];
    var orange = Colors.orange;
    CodeController codeController = CodeController(
      text:
          "void toggleServices(Map<String, bool> services) { services.updateAll((key, value) => !value); }\nvoid main() {\n  // Initial states: false means off, true means on\n  Map<String, bool> services = {\n    'electricity': false,\n    'airtime': false,\n    'data': false,\n  };\n  print('Initial states: \$services');\n\n  // Toggle services\n  toggleServices(services);\n  print('After first toggle: \$services');\n\n  // Toggle services again\n  toggleServices(services);\n  print('After second toggle: \$services');\n}",
      language: dart,
      stringMap: {
        "void": TextStyle(fontStyle: FontStyle.italic, color: blue),
        "print": TextStyle(color: blue),
        "\$": TextStyle(color: blue),
        "Map": TextStyle(color: orange),
        "String": TextStyle(color: orange),
        "int": TextStyle(color: orange),
        "double": TextStyle(color: orange),
        "List": TextStyle(color: orange),
        "bool": TextStyle(color: orange),
        "Set": TextStyle(color: orange),
        "dynamic": TextStyle(color: orange),
        "key": TextStyle(color: red1),
        "value": TextStyle(color: red1),
        "'": const TextStyle(color: Colors.green),
      },
    );

    return Builder(
      builder: (c) {
        var size = MediaQuery.of(c).size;
        var bm = TextUtils.bodyMedium(c);
        var ll = TextUtils.labelLarge(c);
        var lm = TextUtils.labelMedium(c);

        return Column(
          children: [
            const SizedBox(height: 36),
            Row(
              children: [
                CircleAvatar(
                  backgroundColor: orange,
                  radius: 18,
                ),
                const SizedBox(width: 12),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('@OnwukaDaniel', style: ll.copyWith(color: blue)),
                    const SizedBox(height: 6),
                    Text(
                      'Created 7 months ago',
                      style: ll.copyWith(fontStyle: FontStyle.italic),
                    ),
                  ],
                )
              ],
            ),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 16),
              padding: const EdgeInsets.only(top: 4),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                border: Border.all(color: Colors.grey),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: CodeField(
                  background: Theme.of(c).scaffoldBackgroundColor,
                  controller: codeController,
                  lineNumbers: false,
                  readOnly: true,
                  textStyle: TextStyle(
                    color: ll.color,
                    fontFamily: 'SourceCode',
                    fontSize: ll.fontSize,
                  ),
                ),
              ),
            ),
            const Divider(
              thickness: .2,
            ),
            Text(
              '// This is a sample code generated to emulate the services provided by this product (project',
              style: ll.copyWith(color: blue),
            ),
          ],
        );
      },
    );
  }

  getWords(String text) {
    RegExp regex = RegExp(r"[\w']+|[{}:,<=>/]");
    var input =
        text.replaceAll('/*', '').replaceAll('*', '').replaceAll('*/', '');

    Iterable<Match> matches = regex.allMatches(input);
    return matches.map((match) => match.group(0)!).toList();
  }
}
