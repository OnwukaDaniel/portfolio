import 'package:portfolio/common_imports.dart';

class ContactViewmodel extends HomepageViewModel {
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController messageController = TextEditingController();
  var name = '';
  var email = '';
  var message = '';

  init() {
    nameController.addListener((){
      name = nameController.text.trim();
      notifyListeners();
    });
    emailController.addListener((){
      email = emailController.text.trim();
      notifyListeners();
    });
    messageController.addListener((){
      message = messageController.text.trim();
      notifyListeners();
    });
  }
}
