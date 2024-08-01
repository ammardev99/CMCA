import 'package:fluttertoast/fluttertoast.dart';

void toastShowText(String txt) {
  Fluttertoast.showToast(
    msg: txt,
    toastLength: Toast.LENGTH_SHORT,
  );
}
