
import 'package:firebase_auth/firebase_auth.dart';


import '../../base.dart';
import '../../database_utils/database_utils.dart';
import '../../models/my_user.dart';
import '../../shared/components/firebase_errors.dart';
import 'connector.dart';

class CreateAccountViewModel extends BaseViewModel<CreateAccountNavigator> {
  String message = "";


  void CreateAccount(String email, String password, String fName, String lName,
      String userName) async {
    try {
      navigator!.showLoading();
      final credential =
          await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      MyUser myUser = MyUser(
          id: credential.user?.uid ?? "",
          fName: fName,
          lName: lName,
          userName: userName,
          email: email);
      DataBaseUtils.AddUserToFirestore(myUser).then((value) {
        navigator!.hideDialog();
        navigator!.goToHome(myUser);
        return;
      });
      message = "Successfully Created";
    } on FirebaseAuthException catch (e) {
      if (e.code == FirebaseError.weakPassword) {
        message = "The password provided is too weak.";
      } else if (e.code == FirebaseError.email_in_use) {
        message = "The account already exists for that email.";
      }
    } catch (e) {
      message = "Something went wrong";
    }
    if (message != "") {
      navigator!.hideDialog();
      navigator!.showMessage(message);
    }
  }
}
