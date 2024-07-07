import 'package:portfolio/imports/common_imports.dart';

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
    var ll = TextUtils.labelLarge(context).copyWith(fontFamily: 'Nunito');
    var lm = TextUtils.labelMedium(context).copyWith(fontFamily: 'Nunito');

    return ViewModelBuilder.nonReactive(
      viewModelBuilder: () => ProjectsViewmodel(),
      onViewModelReady: (_) => _.silverBarStretched(),
      builder: (context, model, _) {
        return AppWrapper(
          showAppBar: false,
          child: Scaffold(
            body: Container(
              margin: const EdgeInsets.all(46),
              clipBehavior: Clip.hardEdge,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
              ),
              child: CustomScrollView(
                controller: model.pageScrollController,
                slivers: [
                  SliverAppBar(
                    automaticallyImplyLeading: false,
                    expandedHeight: size.height * .25,
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
                            children: [
                              Image.asset(
                                data.image,
                                width: double.infinity,
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
                              const SizedBox(height: 12),
                              Row(
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
                                              const EdgeInsets.only(left: 46),
                                          child: Text(
                                            data.file.substring(
                                                0, data.file.indexOf('.')),
                                            maxLines: 5,
                                            textAlign: TextAlign.center,
                                            style: bl.copyWith(
                                              overflow: TextOverflow.ellipsis,
                                              color: Colors.white,
                                            ),
                                          ),
                                        ),
                                        const Spacer(flex: 1),
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
                                        const Spacer(flex: 1),
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
                    delegate: SliverChildListDelegate([
                      const SizedBox(height: 16),
                      Text(
                        'Project details',
                        style: bm.copyWith(fontWeight: FontWeight.w900),
                      ),
                      const SizedBox(height: 16),
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
                      const SizedBox(height: 16),
                      mainBody(),
                      if (data.project == ProjectsEnum.powerPlug)
                        const PowerPlugInfo(),
                    ]),
                  )
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  particleBg() {
    double cardPadding = 32;
    return Builder(builder: (context) {
      var size = MediaQuery.of(context).size;
      return Container(
        color: Colors.red,
        child: CircularParticle(
          key: UniqueKey(),
          awayRadius: 80,
          numberOfParticles: 200,
          speedOfParticles: 1,
          height: 540,
          width: size.width,
          onTapAnimation: true,
          particleColor: Colors.white.withAlpha(150),
          awayAnimationDuration: const Duration(milliseconds: 600),
          maxParticleSize: 8,
          isRandSize: true,
          isRandomColor: true,
          randColorList: [
            Colors.red.withAlpha(210),
            Colors.white.withAlpha(210),
            Colors.yellow.withAlpha(210),
            Colors.green.withAlpha(210)
          ],
          awayAnimationCurve: Curves.easeInOutBack,
          enableHover: true,
          hoverColor: Colors.white,
          hoverRadius: 90,
          connectDots: false, //not recommended
        ),
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

  Widget mainBody() {
    return Builder(
      builder: (context) {
        var bs = TextUtils.bodySmall(context).copyWith(fontFamily: 'Nunito');
        var ll = TextUtils.labelLarge(context).copyWith(fontFamily: 'Nunito');
        var team = '';
        Widget spaceBtwRows = const SizedBox(height: 12);
        for (String i in data.teamMembers) {
          team += ' $i,';
        }
        if (team.isNotEmpty) team = team.trim().substring(0, team.length - 1);

        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    flex: 1,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Name:', style: bs),
                        spaceBtwRows,
                        Text('Type:', style: bs),
                        spaceBtwRows,
                        Text('Technology:', style: bs),
                        spaceBtwRows,
                        Text('Language:', style: bs),
                        spaceBtwRows,
                        Text('Team:', style: bs),
                        spaceBtwRows,
                        Text('Client:', style: bs),
                        spaceBtwRows,
                        Text('Year:', style: bs),
                        spaceBtwRows,
                      ],
                    ),
                  ),
                  const SizedBox(height: 8),
                  Expanded(
                    flex: 4,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(data.project?.name ?? '', style: bs),
                        spaceBtwRows,
                        Text(data.type?.name ?? '', style: bs),
                        spaceBtwRows,
                        Text(data.technology, style: bs),
                        spaceBtwRows,
                        Text(data.file.split('.').last.toUpperCase(),
                            style: bs),
                        spaceBtwRows,
                        Text(team, style: bs),
                        spaceBtwRows,
                        Text(data.client, style: bs),
                        spaceBtwRows,
                        Builder(builder: (context) {
                          var date = data.date ?? DateTime.now();
                          var day = date.day.toString().length == 1
                              ? '0${date.day}'
                              : date.day;
                          var month = date.month.toString().length == 1
                              ? '0${date.month}'
                              : date.month;
                          var year = date.year;
                          return Text('$day $month $year', style: bs);
                        }),
                        spaceBtwRows,
                      ],
                    ),
                  ),
                  const SizedBox(height: 8),
                  if (getDeviceType(context) == DeviceType.desktop ||
                      getDeviceType(context) == DeviceType.largeDesktop)
                    Expanded(flex: 4, child: about(spaceBtwRows)),
                ],
              ),
              if (getDeviceType(context) == DeviceType.mobile)
                about(spaceBtwRows),
            ],
          ),
        );
      },
    );
  }

  Widget about(Widget spaceBtwRows) {
    return Builder(builder: (context) {
      var bs = TextUtils.bodySmall(context).copyWith(fontFamily: 'Nunito');
      var tm = TextUtils.titleMedium(context).copyWith(fontFamily: 'Nunito');
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'About',
            style: tm.copyWith(fontWeight: FontWeight.bold),
          ),
          spaceBtwRows,
          Text(data.info, style: bs),
          const SizedBox(height: 8),
          Row(
            children: [
              if (data.appleLink.isNotEmpty) ...[
                TextButton(
                  onPressed: () => Utils.launchWeb(data.appleLink),
                  child: Row(
                    children: [
                      Text('Get it on ', style: bs),
                      const SizedBox(width: 12),
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
                      const SizedBox(width: 12),
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
      );
    });
  }
}
