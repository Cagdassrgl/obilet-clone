import 'package:flutter/material.dart';
import 'package:obilet_clone/core/extentions/widget_extensions.dart';
import 'package:obilet_clone/core/models/dropdown_item_model.dart';

class CustomDropdown extends StatelessWidget {
  const CustomDropdown({
    required this.labelText,
    required this.hintText,
    required this.items,
    super.key,
  });

  final String labelText;
  final String hintText;

  final List<DropdownItemModel> items;

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField(
      items:
          items
              .map(
                (e) => DropdownMenuItem(value: e.value, child: Text(e.label)),
              )
              .toList(),
      onChanged: (value) {},
      decoration: InputDecoration(
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
        contentPadding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
        labelText: labelText,
        hintText: hintText,
      ),
    ).withPaddingSymmetric(horizontal: 16);
  }
}
