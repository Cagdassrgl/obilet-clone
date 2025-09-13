import 'package:flutter/material.dart';
import 'package:obilet_clone/core/extentions/widget_extensions.dart';

class CustomDatetime extends StatelessWidget {
  const CustomDatetime({
    super.key,
    required this.labelText,
    required this.hintText,
    required this.controller,
    this.onDateSelected,
  });

  final String labelText;
  final String hintText;
  final TextEditingController controller;
  final void Function(DateTime selectedDate)? onDateSelected;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      readOnly: true,
      controller: controller,
      decoration: InputDecoration(
        labelText: labelText,
        hintText: hintText,
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
        contentPadding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
        suffixIcon: const Icon(Icons.calendar_month_outlined),
      ),
      onTap: () async {
        final selectedDate = await showDatePicker(
          context: context,
          initialDate: DateTime.now(),
          firstDate: DateTime.now(),
          lastDate: DateTime(2100),
        );

        if (selectedDate != null && onDateSelected != null) {
          // Sadece callback'i çağır, text formatlamayı DateTimeNotifier halletsin
          onDateSelected!(selectedDate);
        }
      },
    ).withPaddingSymmetric(horizontal: 8);
  }
}
