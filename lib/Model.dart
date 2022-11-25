import 'dart:ui';

import 'package:get/get.dart';

class Model extends GetxController {
  Color c_blue = Color(0xFF1d247b);
  Color c_green = Color(0xff369a52);
  Color c_red = Color(0xffb90606);
  Color c_indigo = Color(0xff3F51B5);
  RxString n = "Please Start The Game.👨‍💻👩‍💻".obs;
  RxList<String> l = List.filled(9, "").obs;
  String p1 = "X";
  String p2 = "O";
  RxString str = "".obs;
  bool winner = false;
  RxBool status = false.obs;
  RxInt i = 0.obs, t = 0.obs;

  void calc(int index) {
    if (i % 2 == 0) {
      l[index] = p1;
      print("p1=${l[index]}");
      i++;
    } else if (i % 2 == 1) {
      l[index] = p2;
      print("p2=${l[index]}");
      i++;
    }
    print("i= ${i}");
    winn(); //
    abc();
  }

  //todo winner function
  winn() {
    if ((l[0] == p1 && l[1] == p1 && l[2] == p1) ||
        (l[3] == p1 && l[4] == p1 && l[5] == p1) ||
        (l[6] == p1 && l[7] == p1 && l[8] == p1) ||
        (l[0] == p1 && l[3] == p1 && l[6] == p1) ||
        (l[1] == p1 && l[4] == p1 && l[7] == p1) ||
        (l[2] == p1 && l[5] == p1 && l[8] == p1) ||
        (l[0] == p1 && l[4] == p1 && l[8] == p1) ||
        (l[2] == p1 && l[4] == p1 && l[6] == p1)) {
      n.value = "$p1 winner.";
      winner = true;
    } else if ((l[0] == p2 && l[1] == p2 && l[2] == p2) ||
        (l[3] == p2 && l[4] == p2 && l[5] == p2) ||
        (l[6] == p2 && l[7] == p2 && l[8] == p2) ||
        (l[0] == p2 && l[3] == p2 && l[6] == p2) ||
        (l[1] == p2 && l[4] == p2 && l[7] == p2) ||
        (l[2] == p2 && l[5] == p2 && l[8] == p2) ||
        (l[0] == p2 && l[4] == p2 && l[8] == p2) ||
        (l[2] == p2 && l[4] == p2 && l[6] == p2)) {
      n.value = "$p2 winner.";
      winner = true;
    } else if (i.value > 8) {
      n.value = "Game is Draw1..";
      print("Game is draw");
    }
  }

  //todo abc
  abc() {
    if (i.value == 1) {
      n.value = "Game is running 🤹‍🤹‍‍";
    }
  }

  //todo reset
  reset() {
    l.value = List.filled(9, "");
    i.value = 0;
    if (i.value == 0) {
      n.value = "Plz start game";
    }
    winner = false;
    // print(winner.value);
  }
}
