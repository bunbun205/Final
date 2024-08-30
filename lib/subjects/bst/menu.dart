import 'dart:math';

class Menu {
  final List<Map<String, double>> _menu_Items = [
    {'burger': 300},
    {'fries': 100},
    {'lemonade': 200},
  ];
  Map<String, double>? get_item(String Name) {
    for (var item in _menu_Items) {
      if (item.containsKey(Name)) {
        return item;
      }
      ;
      return null;
    }
  }
  String? random_item(){
    final random=Random();
    final item=_menu_Items[random.nextInt(_menu_Items.length)];
    return item.keys.first;
  }
}
