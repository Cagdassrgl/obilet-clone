class DropdownItemModel<T extends Object> {
  DropdownItemModel({required this.value, required this.label});

  final T value;
  final String label;

  @override
  String toString() {
    return label;
  }
}
