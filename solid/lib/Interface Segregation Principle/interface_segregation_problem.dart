//  depend on interface    split it to small  widget

abstract class WidgetEvents {
  void onTap();
  void onDoubleTap();
  void onLongPress();
  void onSwipe();
}

class CustomButton implements WidgetEvents {
  @override
  void onTap() {
    print("Button tapped");
  }

  @override
  void onDoubleTap() {
    // no need to implement
  }

  @override
  void onLongPress() {
    // no need to implement
  }

  @override
  void onSwipe() {
    // no need to implement
  }
}
