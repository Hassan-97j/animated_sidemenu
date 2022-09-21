import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyDrawerController extends GetxController
    with GetSingleTickerProviderStateMixin {
  late AnimationController animationController = AnimationController(
    vsync: this,
    duration: const Duration(
      milliseconds: 1000,
    ),
  );
  late Animation<double> leftposition = Tween<double>(
    begin: -300,
    end: 20,
  ).animate(
    CurvedAnimation(
      parent: animationController,
      curve: Curves.easeIn,
    ),
  );
  @override
  void onInit() {
    animationController;
    leftposition;
    super.onInit();
  }

  @override
  void onClose() {
    animationController;
    super.onInit();
  }

  onTap() {
    if (animationController.isCompleted) {
      animationController.reverse();
    } else {
      animationController.forward();
    }
    update();
  }
}
