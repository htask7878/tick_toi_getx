import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rolling_switch/rolling_switch.dart';
import 'package:tick_toi_getx/Model.dart';

class home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Model m = Get.put(Model());
    return SafeArea(
      child: Scaffold(
        backgroundColor: m.c_blue,
        appBar: AppBar(
          backgroundColor: m.c_blue,
          title: Text(
            "Tick_Tack_Toe",
            style: GoogleFonts.lato(fontWeight: FontWeight.w300),
          ),
          centerTitle: true, //
        ),
        body: Center(
          child: Column(
            children: [
              Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
                Text("Turn on/off two \nPlayer",
                    style: TextStyle(
                        letterSpacing: 2,
                        fontWeight: FontWeight.w400,
                        fontSize: 20,
                        color: Colors.white),
                    textAlign: TextAlign.center),
                RollingSwitch.icon(
                  width: 90,
                  height: 50,
                  rollingInfoLeft: RollingIconInfo(
                      backgroundColor: m.c_green,
                      iconColor: m.c_green,
                      icon: Icons.start_outlined,
                      text: Text("on")),
                  rollingInfoRight: RollingIconInfo(
                      iconColor: m.c_red,
                      backgroundColor: m.c_red,
                      icon: Icons.close_outlined,
                      text: Text("off")),
                  onChanged: (bool state) {
                    print("${state ? "on" : "off"}");
                  },
                ),
              ]),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(top: 4, left: 4, right: 4),
                  child: GridView.builder(
                    itemCount: m.l.length,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisSpacing: 3,
                        mainAxisSpacing: 3,
                        crossAxisCount: 3),
                    itemBuilder: (context, index) {
                      return Container(
                        height: 70,
                        width: 70,
                        color: m.c_indigo,
                        child: InkWell(
                          onTap: (m.l[index] == "" && m.winner == false)
                              ? () {
                                  m.calc(index);
                                }
                              : null,
                          child: Center(
                              child: Obx(
                            () => Text(
                              m.l[index],
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 25,
                              ),
                            ),
                          )),
                        ),
                      );
                    },
                  ),
                ),
              ),
              SizedBox(
                  height: 40,
                  child: Obx(() => Text(
                    "${m.n}",
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ))),
              SizedBox(
                height: 20,
              ),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      fixedSize: Size(200, 50),
                      primary: Colors.white,
                      elevation: 10,
                      onPrimary: Colors.purpleAccent),
                  onPressed: () {
                    m.reset();
                  },
                  child: Text(
                    "Restart",
                    style: TextStyle(color: Colors.black),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
