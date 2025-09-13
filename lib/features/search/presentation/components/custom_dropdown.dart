import 'package:flutter/material.dart';
import 'package:obilet_clone/core/extentions/widget_extensions.dart';
import 'package:obilet_clone/core/models/dropdown_item_model.dart';

class CustomDropdown extends StatelessWidget {
  const CustomDropdown({
    required this.labelText,
    required this.hintText,
    required this.items,
    this.selectedValue,
    this.onChanged,
    super.key,
  });

  final String labelText;
  final String hintText;
  final List<DropdownItemModel> items;
  final dynamic selectedValue;
  final void Function(dynamic)? onChanged;

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField(
      initialValue: selectedValue,
      items: items.map((e) => DropdownMenuItem(value: e.value, child: Text(e.label))).toList(),
      onChanged: onChanged,
      menuMaxHeight: 300,
      alignment: AlignmentDirectional.bottomStart,
      decoration: InputDecoration(
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
        contentPadding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
        labelText: labelText,
        hintText: hintText,
      ),
    ).withPaddingSymmetric(horizontal: 8);
  }
}
