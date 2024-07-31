import 'package:fluttertoast/fluttertoast.dart';

void showMsgToast(String txt) {
  Fluttertoast.showToast(
    msg: txt,
    toastLength: Toast.LENGTH_SHORT,
  );
}
