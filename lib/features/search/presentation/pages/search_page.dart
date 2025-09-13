import 'package:flutter/material.dart';
import 'package:obilet_clone/core/extentions/context_extention.dart';
import 'package:obilet_clone/core/extentions/widget_extensions.dart';
import 'package:obilet_clone/core/models/dropdown_item_model.dart';
import 'package:obilet_clone/core/widgets/base_scaffold.dart';
import 'package:obilet_clone/features/search/presentation/components/custom_dropdown.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
    return BaseScaffold(
      body:
          Column(
            spacing: 24,
            children: [
              Container(
                width: double.infinity,
                padding: const EdgeInsets.symmetric(vertical: 32, horizontal: 16),
                decoration: BoxDecoration(
                  color: context.colorScheme.onPrimary,
                  borderRadius: BorderRadius.circular(16),
                  boxShadow: [BoxShadow(spreadRadius: 0, blurRadius: 8, offset: const Offset(0, 2))],
                ),
                child: Column(
                  spacing: 16,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomDropdown(
                      labelText: 'Kalkış Noktası',
                      hintText: 'Nereden?',
                      items: [
                        DropdownItemModel(value: 1, label: 'Ankara'),
                        DropdownItemModel(value: 3, label: 'İstanbul'),
                        DropdownItemModel(value: 4, label: 'İzmir'),
                      ],
                    ),
                    CustomDropdown(
                      labelText: 'Varış Noktası',
                      hintText: 'Nereye?',
                      items: [
                        DropdownItemModel(value: 1, label: 'Ankara'),
                        DropdownItemModel(value: 3, label: 'İstanbul'),
                        DropdownItemModel(value: 4, label: 'İzmir'),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                width: double.infinity,
                padding: const EdgeInsets.symmetric(vertical: 32, horizontal: 16),
                decoration: BoxDecoration(
                  color: context.colorScheme.onPrimary,
                  borderRadius: BorderRadius.circular(16),
                  boxShadow: [BoxShadow(spreadRadius: 0, blurRadius: 8, offset: const Offset(0, 2))],
                ),
                child: Column(
                  spacing: 16,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    //TODO Add date picker
                  ],
                ),
              ),
            ],
          ).paddingMedium(),
    );
  }
}
