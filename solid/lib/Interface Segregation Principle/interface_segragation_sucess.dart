import 'package:flutter/material.dart';

abstract class TapEvent {
  void onTap();
  void onDoubleTap();
}

abstract class DoubleTapEvent {
  void onDoubleTap();
}

abstract class LongPressEvent {
  void onLongPress();
}

abstract class SwipeEvent {
  void onSwipe();
}

// used
class CustomButton implements TapEvent {
  @override
  void onTap() {
    debugPrint("Button tapped");
  }

  @override
  void onDoubleTap() {
    debugPrint("Button double tapped");
  }
}

//
class CustomSwipEvent implements SwipeEvent {
  @override
  void onSwipe() {
    debugPrint("Button swiped");
  }
}
