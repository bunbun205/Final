import 'package:flutter_application_1/subjects/bst/menu.dart';

class order {
final Map<String,int>Items={};
void add_item(String Name){
if(Items.containsKey(Name)){
Items[Name]=Items[Name]! +1;
}
else Items[Name]=1;
}
void remove_item(String Name){
if(Items.containsKey(Name) && Items[Name]!>1){
Items[Name]=Items[Name]! -1;
}
else Items.remove(Name); 
}
int total_Item(){
return Items.values.fold(0,(total,count)=>total+count);
}
double total_price(Menu menu){
double total=0;
for(var item in Items.entries){
final price=menu.get_item(item.key)?.values.first ?? 0;
total +=price*item.value;
}
return total;
}
}