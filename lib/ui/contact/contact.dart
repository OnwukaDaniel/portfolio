import 'package:portfolio/common_imports.dart';

class Contact extends StatelessWidget {
  static const String id = 'Contact';
  const Contact({super.key});

  @override
  Widget build(BuildContext context) {
    var bs = TextUtils.bodySmall(context);

    return ViewModelBuilder.reactive(
      viewModelBuilder: () => ContactViewmodel(context),
      onViewModelReady: (_) => _.init(),
      builder: (context, model, _) {
        return AppWrapper(
          id: id,
          child: Row(
            children: [
              verticalDivider,
              sideBar(),
              verticalDivider,
              Expanded(
                flex: 8,
                child: Padding(
                  padding: const EdgeInsets.all(18),
                  child: Center(
                    child: SingleChildScrollView(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              const Spacer(),
                              Expanded(
                                flex: 2,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    8.h,
                                    Text(
                                      '_name',
                                      style: bs.copyWith(color: Utils.hintColor(context)),
                                    ),
                                    8.h,
                                    TextFormField(
                                      controller: model.nameController,
                                      style: bs,
                                      onChanged: (_) => model.notifyListeners(),
                                      decoration: inputDecoration(context),
                                    ),
                                  ],
                                ),
                              ),
                              const Spacer(),
                            ],
                          ),
                          Row(
                            children: [
                              const Spacer(),
                              Expanded(
                                flex: 2,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    16.h,
                                    Text(
                                      '_email',
                                      style: bs.copyWith(color: Utils.hintColor(context)),
                                    ),
                                    8.h,
                                    TextFormField(
                                      controller: model.emailController,
                                      style: bs,
                                      onChanged: (_) => model.notifyListeners(),
                                      decoration: inputDecoration(context),
                                    ),
                                  ],
                                ),
                              ),
                              const Spacer(),
                            ],
                          ),
                          Row(
                            children: [
                              const Spacer(),
                              Expanded(
                                flex: 2,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    16.h,
                                    Text(
                                      '_message',
                                      style: bs.copyWith(color: Utils.hintColor(context)),
                                    ),
                                    8.h,
                                    TextFormField(
                                      controller: model.messageController,
                                      onChanged: (_) => model.notifyListeners(),
                                      maxLines: 20,
                                      minLines: 5,
                                      style: bs,
                                      decoration: inputDecoration(context),
                                    ),
                                  ],
                                ),
                              ),
                              const Spacer(),
                            ],
                          ),
                          18.h,
                          Center(
                            child: TextButton(
                              onPressed: ()=> model.sendMessage(context),
                              style: ButtonStyle(
                                backgroundColor: WidgetStatePropertyAll(Utils.cardColor(context),),
                              ),
                              child: Text(
                                'Send message',
                                style: bs,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 5,
                child: Padding(
                  padding: const EdgeInsets.all(18),
                  child: SingleChildScrollView(
                    child: ContactCodeBar(
                      text:
                          "void main() {\n  final Map<String, String> message = {\n    'name': '${model.name}',\n    'email': '${model.email}',\n    'message': '${model.message}',\n    'date': '${DateFormat('EEE dd MMM').format(DateTime.now())}',\n  };\n  sendButtonClick(message);\n}\n\nvoid sendButtonClick(Map<String, String> message) {\n  sendForm(message);\n}\n\nvoid sendForm(Map<String, String> message) {\n  print('Form sent with message: \$message');\n}",
                    ),
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  OutlineInputBorder inputBorder(BuildContext context) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: BorderSide(
        color: Utils.hintColor(context),
      ),
    );
  }

  Widget sideBar() {
    return Builder(builder: (context) {
      var bs = TextUtils.bodySmall(context);
      var bl = TextUtils.bodyLarge(context);
      var ll = TextUtils.labelLarge(context);
      return Expanded(
        flex: 3,
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    6.w,
                    Expanded(
                      child: Text(
                        'Contacts',
                        style: bs,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ],
                ),
                8.h,
                InkWell(
                  onTap: () => Utils.launchMail(AppConstants.email),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Icon(Icons.email, color: bs.color, size: 18),
                        6.w,
                        Expanded(
                          child: Text(
                            AppConstants.email,
                            style: ll.copyWith(
                              color: Utils.hintColor(context),
                            ),
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                InkWell(
                  onTap: () => Utils.launchPhone(AppConstants.phone),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Icon(Icons.phone, color: bs.color, size: 18),
                        6.w,
                        Expanded(
                          child: Text(
                            AppConstants.phone,
                            style: ll.copyWith(
                              color: Utils.hintColor(context),
                            ),
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                8.h,
                horizontalDivider,
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      6.w,
                      Expanded(
                        child: Text(
                          'Find me also in',
                          style: bs,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ],
                  ),
                ),
                horizontalDivider,
                8.h,
                InkWell(
                  onTap: () => Utils.launchWeb(AppConstants.github),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Icon(
                          Icons.open_in_new_outlined,
                          color: bs.color,
                          size: 18,
                        ),
                        6.w,
                        Expanded(
                          child: Text(
                            AppConstants.github,
                            style: ll.copyWith(
                              color: Utils.hintColor(context),
                            ),
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                InkWell(
                  onTap: () => Utils.launchWeb(AppConstants.X),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Text(
                          'X ',
                          style: bl.copyWith(fontWeight: FontWeight.bold),
                          overflow: TextOverflow.ellipsis,
                        ),
                        6.w,
                        Expanded(
                          child: Text(
                            'X.com (Formerly Twitter)',
                            style: ll.copyWith(
                              color: Utils.hintColor(context),
                            ),
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      );
    });
  }

  Widget get horizontalDivider => Container(
        height: .2,
        width: double.infinity,
        color: Colors.grey,
      );

  Widget get verticalDivider => Container(
        height: double.infinity,
        width: .2,
        color: Colors.grey,
      );

  InputDecoration inputDecoration(BuildContext context) {
    return InputDecoration(
      border: inputBorder(context),
      enabledBorder: inputBorder(context),
      focusedBorder: inputBorder(context),
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

class ContactCodeBar extends StackedHookView<ContactViewmodel> {
  const ContactCodeBar({
    super.key,
    required this.text,
  });

  final String text;

  @override
  Widget builder(BuildContext context, model) {
    var blue = Colors.blueAccent;
    var red1 = Colors.redAccent[600];
    var orange = Colors.orange;
    CodeController codeController = CodeController(
      text: text,
      language: dart,
      stringMap: {
        "void": const TextStyle(fontStyle: FontStyle.italic, color: Colors.red),
        "final": const TextStyle(color: Colors.redAccent),
        "print": TextStyle(color: blue),
        "\$": TextStyle(color: blue),
        "main'": TextStyle(color: blue),
        "name": TextStyle(color: blue),
        "email": TextStyle(color: blue),
        "message": TextStyle(color: blue),
        "date": TextStyle(color: blue),
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
        var ll = TextUtils.labelLarge(c);
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 36),
            Row(
              children: [
                CircleAvatar(
                  backgroundColor: orange,
                  radius: 12,
                ),
                const SizedBox(width: 12),
                Text('@OnwukaDaniel', style: ll.copyWith(color: blue))
              ],
            ),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 16),
              padding: const EdgeInsets.only(top: 4),
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
            const Divider(thickness: .2),
            Text(
              '// This is a sample code',
              style: ll.copyWith(color: blue),
            ),
          ],
        );
      },
    );
  }
}
