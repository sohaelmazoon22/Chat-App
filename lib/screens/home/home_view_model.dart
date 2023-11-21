import '../../base.dart';
import '../../database_utils/database_utils.dart';
import '../../models/room.dart';
import 'home_navigator.dart';

class HomeViewModel extends BaseViewModel<HomeNavigator> {
  List<Room> rooms = [];

  HomeViewModel(
      ) {
    getRooms();
  }

  void getRooms() async {
    try {
      rooms = await DataBaseUtils.getRoomsFromFirestore();
    } catch (e) {
      navigator!.showMessage(e.toString());

      // DataBaseUtils.getRoomsFromFirestore().then((value) {
      //   rooms = value;
      // });
    }
  }
}
