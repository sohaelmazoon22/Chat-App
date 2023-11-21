

import '../../base.dart';
import '../../models/my_user.dart';

abstract class CreateAccountNavigator extends BaseNavigator {
  void goToHome(MyUser user);
}
