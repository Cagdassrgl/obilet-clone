import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final dateTimeControllerProvider = StateProvider<TextEditingController>((ref) {
  final controller = TextEditingController();

  // Controller'ı dispose etmek için
  ref.onDispose(() {
    controller.dispose();
  });

  return controller;
});

final dateTimeProvider = StateNotifierProvider<DateTimeNotifier, DateTime?>((ref) => DateTimeNotifier(ref));

class DateTimeNotifier extends StateNotifier<DateTime?> {
  final Ref ref;

  DateTimeNotifier(this.ref) : super(null);

  void setDate(DateTime date) {
    state = date;

    // Controller'ın text'ini de güncelle
    final controller = ref.read(dateTimeControllerProvider);
    final day = date.day.toString().padLeft(2, '0');
    final month = date.month.toString().padLeft(2, '0');
    final year = date.year.toString();
    controller.text = '$day/$month/$year';
  }
}
