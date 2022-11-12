// ignore: file_names
// ignore: file_names
// ignore: file_names
// ignore: file_names
import 'package:flutter/cupertino.dart';

import '../../LikePage/Ui/Like_page.dart';
import '../../MapPage/Map_Screen.dart';
import '../../ProfilePage/Profile_Screen.dart';
import '../../QrPage/Qr_Screen.dart';

Widget getSelectedWidget({required int index}) {
  Widget widget;
  switch (index) {
    case 0:
      widget = Likes_Screen();
      break;

    case 1:
      widget = const QrScan();
      break;

    case 2:
      widget = Likes_Screen();
      break;

    default:
      widget = ProfilePage();
      break;
  }
  return widget;
}
