import 'package:flutter/material.dart';

extension ContextExtention on BuildContext {
  Size get screenSize => MediaQuery.of(this).size;

  double get screenWidth => screenSize.width;

  double get screenHeight => screenSize.height;

  ThemeData get theme => Theme.of(this);

  TextTheme get textTheme => theme.textTheme;

  ColorScheme get colorScheme => theme.colorScheme;

  // MARK: -push
  push(Widget page) {
    return Navigator.push(this, MaterialPageRoute(builder: (context) => page));
  }

  // MARK: - pushReplacement
  pushReplacement(Widget page) {
    return Navigator.pushReplacement(
      this,
      MaterialPageRoute(builder: (context) => page),
    );
  }

  // MARK: - pop
  pop<T extends Object?>([T? result]) {
    return Navigator.pop(this, result);
  }

  // MARK: - showSnackBar
  showSnackBar(String message) {
    ScaffoldMessenger.of(this).showSnackBar(SnackBar(content: Text(message)));
  }

  // MARK: - showDialogBox
  void showDialogBox(Widget dialog) {
    showDialog(context: this, builder: (context) => dialog);
  }

  // MARK: - showBottomSheet
  void showBottomSheet(Widget bottomSheet) {
    showModalBottomSheet(context: this, builder: (context) => bottomSheet);
  }

  // MARK: - showLoading
  void showLoading() {
    showDialog(
      context: this,
      barrierDismissible: false,
      builder: (context) => const Center(child: CircularProgressIndicator()),
    );
  }

  // MARK: - hideLoading
  void hideLoading() {
    if (Navigator.canPop(this)) {
      Navigator.pop(this);
    }
  }

  // MARK: - showError
  void showError(String message) {
    ScaffoldMessenger.of(this).showSnackBar(
      SnackBar(content: Text(message), backgroundColor: Colors.red),
    );
  }

  // MARK: - showSuccess
  void showSuccess(String message) {
    ScaffoldMessenger.of(this).showSnackBar(
      SnackBar(content: Text(message), backgroundColor: Colors.green),
    );
  }

  // MARK: - showInfo
  void showInfo(String message) {
    ScaffoldMessenger.of(this).showSnackBar(
      SnackBar(content: Text(message), backgroundColor: Colors.blue),
    );
  }

  // MARK: - showWarning
  void showWarning(String message) {
    ScaffoldMessenger.of(this).showSnackBar(
      SnackBar(content: Text(message), backgroundColor: Colors.orange),
    );
  }
}
