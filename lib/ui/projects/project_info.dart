import 'package:portfolio/imports/common_imports.dart';

class ProjectInfo extends StatelessWidget {
  final SideBarInfo data;
  const ProjectInfo(this.data, {super.key});

  @override
  Widget build(BuildContext context) {
    var ll = TextUtils.labelLarge(context);

    return Scaffold(
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          Row(
            children: [
              Expanded(
                flex: 1,
                child: Container(
                  margin: const EdgeInsets.all(8),
                  clipBehavior: Clip.hardEdge,
                  decoration: BoxDecoration(
                    color: Theme.of(context).cardColor,
                    borderRadius: BorderRadius.circular(12),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.white.withOpacity(0.2),
                        offset: const Offset(2, 2),
                        blurRadius: 2,
                        spreadRadius: 1,
                      ),
                    ],
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Stack(
                        children: [
                          Image.asset(
                            data.image,
                            width: double.infinity,
                            fit: BoxFit.cover,
                          ),
                          Container(
                            color: Colors.black.withOpacity(.5),
                          ),
                          Positioned(
                            right: 8,
                            top: 8,
                            child: Image.asset(
                              data.icon,
                              width: 20,
                              height: 20,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 12),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          data.info,
                          maxLines: 5,
                          style: ll.copyWith(
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextButton(
                          style: ButtonStyle(
                            backgroundColor:
                            WidgetStateProperty.all(Colors.black),
                          ),
                          onPressed: () {
                            AppNavigate.push(
                              context,
                              PathEnum.projectInfo,
                              data: data,
                            );
                          },
                          child: Text(
                            'View project',
                            style: ll.copyWith(color: Colors.white),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
