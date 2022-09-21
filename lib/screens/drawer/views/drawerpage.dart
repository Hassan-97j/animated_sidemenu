// ignore_for_file: must_be_immutable

import 'package:animated_sidemenu/screens/drawer/components/drawerwidget.dart';
import 'package:animated_sidemenu/screens/drawer/controller/drawercontroller.dart';
import 'package:animated_sidemenu/screens/homepage.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DrawerPage extends StatelessWidget {
  DrawerPage({Key? key}) : super(key: key);
  MyDrawerController myDrawerController = Get.put(MyDrawerController());

  @override
  Widget build(BuildContext context) {
    return GetBuilder<MyDrawerController>(
      init: MyDrawerController(),
      initState: (_) {},
      builder: (_) {
        return AnimatedBuilder(
          animation: myDrawerController.animationController,
          builder: (context, child) {
            return Scaffold(
              appBar: AppBar(
                elevation: 0,
                backgroundColor: Colors.white,
                leading: Center(
                  child: InkWell(
                    onTap: () {
                      myDrawerController.onTap();
                    },
                    child: AnimatedIcon(
                      progress: myDrawerController.animationController.view,
                      icon: AnimatedIcons.menu_close,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
              body: Stack(
                children: [
                  const HomePage(),
                  Positioned(
                    left: myDrawerController.leftposition.value,
                    top: 100,
                    child: Opacity(
                      opacity: myDrawerController.animationController.value,
                      child: child,
                    ),
                  ),
                ],
              ),
            );
          },
          child: const MyDrawer(),
        );
      },
    );
  }
}
