import 'package:flutter/material.dart';

extension WidgetExtensions on Widget {
  Widget paddingLow() {
    return Padding(padding: const EdgeInsets.all(8.0), child: this);
  }

  Widget paddingMedium() {
    return Padding(padding: const EdgeInsets.all(16.0), child: this);
  }

  Widget paddingHigh() {
    return Padding(padding: const EdgeInsets.all(32.0), child: this);
  }

  Widget withPaddingAll(double value) {
    return Padding(padding: EdgeInsets.all(value), child: this);
  }

  Widget withPaddingSymmetric({double horizontal = 0, double vertical = 0}) {
    return Padding(padding: EdgeInsets.symmetric(horizontal: horizontal, vertical: vertical), child: this);
  }

  Widget withPaddingOnly({double left = 0, double top = 0, double right = 0, double bottom = 0}) {
    return Padding(padding: EdgeInsets.only(left: left, top: top, right: right, bottom: bottom), child: this);
  }

  Widget withMargin(EdgeInsetsGeometry margin) {
    return Container(margin: margin, child: this);
  }

  Widget withCenter() {
    return Center(child: this);
  }

  Widget withExpanded({int flex = 1}) {
    return Expanded(flex: flex, child: this);
  }

  Widget withFlexible({int flex = 1, FlexFit fit = FlexFit.loose}) {
    return Flexible(flex: flex, fit: fit, child: this);
  }

  Widget withAlign(Alignment alignment) {
    return Align(alignment: alignment, child: this);
  }

  Widget withSizedBox({double? width, double? height}) {
    return SizedBox(width: width, height: height, child: this);
  }

  Widget withClipRRect({BorderRadius? borderRadius}) {
    return ClipRRect(borderRadius: borderRadius ?? BorderRadius.zero, child: this);
  }

  Widget withVisibility(bool isVisible) {
    return isVisible ? this : const SizedBox.shrink();
  }

  Widget withOpacity(double opacity) {
    return Opacity(opacity: opacity, child: this);
  }

  Widget headlineLarge(BuildContext context, {TextStyle? overrideStyle}) {
    return DefaultTextStyle(
      style: Theme.of(context).textTheme.headlineLarge!.copyWith(
        color: overrideStyle?.color,
        fontSize: overrideStyle?.fontSize,
        fontWeight: overrideStyle?.fontWeight,
        letterSpacing: overrideStyle?.letterSpacing,
        height: overrideStyle?.height,
      ),
      child: this,
    );
  }

  Widget headlineMedium(BuildContext context, {TextStyle? overrideStyle}) {
    return DefaultTextStyle(
      style: Theme.of(context).textTheme.headlineMedium!.copyWith(
        color: overrideStyle?.color,
        fontSize: overrideStyle?.fontSize,
        fontWeight: overrideStyle?.fontWeight,
        letterSpacing: overrideStyle?.letterSpacing,
        height: overrideStyle?.height,
      ),
      child: this,
    );
  }

  Widget headlineSmall(BuildContext context, {TextStyle? overrideStyle}) {
    return DefaultTextStyle(
      style: Theme.of(context).textTheme.headlineSmall!.copyWith(
        color: overrideStyle?.color,
        fontSize: overrideStyle?.fontSize,
        fontWeight: overrideStyle?.fontWeight,
        letterSpacing: overrideStyle?.letterSpacing,
        height: overrideStyle?.height,
      ),
      child: this,
    );
  }

  Widget titleLarge(BuildContext context, {TextStyle? overrideStyle}) {
    return DefaultTextStyle(
      style: Theme.of(context).textTheme.titleLarge!.copyWith(
        color: overrideStyle?.color,
        fontSize: overrideStyle?.fontSize,
        fontWeight: overrideStyle?.fontWeight,
        letterSpacing: overrideStyle?.letterSpacing,
        height: overrideStyle?.height,
      ),
      child: this,
    );
  }

  Widget titleMedium(BuildContext context, {TextStyle? overrideStyle}) {
    return DefaultTextStyle(
      style: Theme.of(context).textTheme.titleMedium!.copyWith(
        color: overrideStyle?.color,
        fontSize: overrideStyle?.fontSize,
        fontWeight: overrideStyle?.fontWeight,
        letterSpacing: overrideStyle?.letterSpacing,
        height: overrideStyle?.height,
      ),
      child: this,
    );
  }

  Widget titleSmall(BuildContext context, {TextStyle? overrideStyle}) {
    return DefaultTextStyle(
      style: Theme.of(context).textTheme.titleSmall!.copyWith(
        color: overrideStyle?.color,
        fontSize: overrideStyle?.fontSize,
        fontWeight: overrideStyle?.fontWeight,
        letterSpacing: overrideStyle?.letterSpacing,
        height: overrideStyle?.height,
      ),
      child: this,
    );
  }

  Widget labelLarge(BuildContext context, {TextStyle? overrideStyle}) {
    return DefaultTextStyle(
      style: Theme.of(context).textTheme.labelLarge!.copyWith(
        color: overrideStyle?.color,
        fontSize: overrideStyle?.fontSize,
        fontWeight: overrideStyle?.fontWeight,
        letterSpacing: overrideStyle?.letterSpacing,
        height: overrideStyle?.height,
      ),
      child: this,
    );
  }

  Widget labelMedium(BuildContext context, {TextStyle? overrideStyle}) {
    return DefaultTextStyle(
      style: Theme.of(context).textTheme.labelMedium!.copyWith(
        color: overrideStyle?.color,
        fontSize: overrideStyle?.fontSize,
        fontWeight: overrideStyle?.fontWeight,
        letterSpacing: overrideStyle?.letterSpacing,
        height: overrideStyle?.height,
      ),
      child: this,
    );
  }

  Widget labelSmall(BuildContext context, {TextStyle? overrideStyle}) {
    return DefaultTextStyle(
      style: Theme.of(context).textTheme.labelSmall!.copyWith(
        color: overrideStyle?.color,
        fontSize: overrideStyle?.fontSize,
        fontWeight: overrideStyle?.fontWeight,
        letterSpacing: overrideStyle?.letterSpacing,
        height: overrideStyle?.height,
      ),
      child: this,
    );
  }

  Widget bodyLarge(BuildContext context, {TextStyle? overrideStyle}) {
    return DefaultTextStyle(
      style: Theme.of(context).textTheme.bodyLarge!.copyWith(
        color: overrideStyle?.color,
        fontSize: overrideStyle?.fontSize,
        fontWeight: overrideStyle?.fontWeight,
        letterSpacing: overrideStyle?.letterSpacing,
        height: overrideStyle?.height,
      ),
      child: this,
    );
  }

  Widget bodyMedium(BuildContext context, {TextStyle? overrideStyle}) {
    return DefaultTextStyle(
      style: Theme.of(context).textTheme.bodyMedium!.copyWith(
        color: overrideStyle?.color,
        fontSize: overrideStyle?.fontSize,
        fontWeight: overrideStyle?.fontWeight,
        letterSpacing: overrideStyle?.letterSpacing,
        height: overrideStyle?.height,
      ),
      child: this,
    );
  }

  Widget bodySmall(BuildContext context, {TextStyle? overrideStyle}) {
    return DefaultTextStyle(
      style: Theme.of(context).textTheme.bodySmall!.copyWith(
        color: overrideStyle?.color,
        fontSize: overrideStyle?.fontSize,
        fontWeight: overrideStyle?.fontWeight,
        letterSpacing: overrideStyle?.letterSpacing,
        height: overrideStyle?.height,
      ),
      child: this,
    );
  }
}
