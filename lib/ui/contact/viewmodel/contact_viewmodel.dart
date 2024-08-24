import 'package:portfolio/common_imports.dart';

class ContactViewmodel extends HomepageViewModel {
  BuildContext context;
  ContactViewmodel(this.context);

  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController messageController = TextEditingController();
  var name = '';
  var email = '';
  var message = '';

  init() {
    nameController.addListener(() {
      name = nameController.text.trim();
      notifyListeners();
    });
    emailController.addListener(() {
      email = emailController.text.trim();
      notifyListeners();
    });
    messageController.addListener(() {
      message = messageController.text.trim();
      notifyListeners();
    });
  }

  sendMessage() {
    if (name.isEmpty) return alert('Name can\'t be empty');
    if (email.isEmpty) return alert('Email can\'t be empty');
    if (message.isEmpty) return alert('Message can\'t be empty');
  }

  alert(String msg) {
    showDialog(
      context: context,
      builder: (context) {
        var bs = TextUtils.bodySmall(context);
        var ll = TextUtils.labelLarge(context);
        return AlertDialog(
          backgroundColor: Utils.cardColor(context),
          title: Text('Message', style: bs),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Icon(Icons.cancel, size: 30),
              16.h,
              Text(msg, style: ll),
            ],
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Close',
                    style: bs.copyWith(color: Colors.white),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ],
        );
      },
    );
  }
}
