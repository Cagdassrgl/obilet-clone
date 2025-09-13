import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:obilet_clone/core/extentions/context_extention.dart';
import 'package:obilet_clone/core/extentions/widget_extensions.dart';
import 'package:obilet_clone/core/models/dropdown_item_model.dart';
import 'package:obilet_clone/core/widgets/base_scaffold.dart';
import 'package:obilet_clone/features/search/presentation/components/custom_datetime.dart';
import 'package:obilet_clone/features/search/presentation/components/custom_dropdown.dart';
import 'package:obilet_clone/features/search/presentation/providers/date_providers.dart';
import 'package:obilet_clone/features/search/presentation/providers/city_state_provider.dart';

class SearchPage extends ConsumerStatefulWidget {
  const SearchPage({super.key});

  @override
  ConsumerState<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends ConsumerState<SearchPage> {
  @override
  void initState() {
    super.initState();
    // Load cities when the widget is first initialized
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      ref.read(cityProvider.notifier).loadCities();
    });
  }

  @override
  Widget build(BuildContext context) {
    final dateTimeController = ref.watch(dateTimeControllerProvider);
    final cityState = ref.watch(cityProvider);

    // Convert cities to dropdown items
    final cityItems = cityState.cities.map((city) => DropdownItemModel(value: city.id, label: city.name)).toList();

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
                  spacing: 8,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomDropdown(
                      labelText: 'Kalkış Noktası',
                      hintText: 'Nereden?',
                      items: cityItems,
                      selectedValue: cityState.selectedDepartureCity?.id,
                      onChanged: (value) {
                        if (value != null) {
                          final selectedCity = cityState.cities.firstWhere((city) => city.id == value);
                          ref.read(cityProvider.notifier).setDepartureCity(selectedCity);
                        }
                      },
                    ),
                    IconButton(
                      icon: const Icon(Icons.swap_vert, size: 32),
                      onPressed: () {
                        ref.read(cityProvider.notifier).swapCities();
                      },
                    ).withCenter(),
                    CustomDropdown(
                      labelText: 'Varış Noktası',
                      hintText: 'Nereye?',
                      items: cityItems,
                      selectedValue: cityState.selectedArrivalCity?.id,
                      onChanged: (value) {
                        if (value != null) {
                          final selectedCity = cityState.cities.firstWhere((city) => city.id == value);
                          ref.read(cityProvider.notifier).setArrivalCity(selectedCity);
                        }
                      },
                    ),
                    if (cityState.isLoading) const Center(child: CircularProgressIndicator()),
                    if (cityState.errorMessage != null)
                      Text(cityState.errorMessage!, style: TextStyle(color: Theme.of(context).colorScheme.error)),
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
                    CustomDatetime(
                      labelText: 'Tarih',
                      hintText: 'Hangi Tarihte?',
                      controller: dateTimeController,
                      onDateSelected: (selectedDate) {
                        ref.read(dateTimeProvider.notifier).setDate(selectedDate);
                      },
                    ),
                  ],
                ),
              ),
            ],
          ).paddingMedium(),
    );
  }
}
