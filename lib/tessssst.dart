import 'dart:io';
import 'dart:async';

void main() {

 List<String> city =["Idleb","Homs","Aleppo"];
 print(city);
 //طباعة العنصر الاول بطريقتين
 print(city[0]);
 print(city.first);
  //طباعة العنصر الاخير بطريقتين
 print(city[2]);
 print(city.last);
 //هنا قمت بالبحث عن حماة اذا كانت موجودة في الليست ام لا اذا ماكانت موجودة نضيفها في الموقع الثاني اذا كانت موجودة يطبع نعم
 //صرحت عن مغير من نوع المنطقي لان الدالة المستخدمة تعيد قيمة منطقية ووضعت في قلبها القيمة التي سترجع لنا عن البحث
  bool serch= city.contains("Hama");
  print(serch);
 //هنا فحصت اذا القيمة المرجعة   fales هذا يعني انا العنصر اللذي بحثنا عنه غير موجود في القائمة
  if(serch==false){
    //اذا تحقق الشرط يضيف العنصر وثم يطبع الليست بعد الاضافة
    city.insert(1, "Hama");
    print(city);
  }
  else{
    print("Yase");
  }



}
void numusres(){
  print("أدخل الرقم للفحص");
  int num=int.parse(stdin.readLineSync()!);
  if(num %2 ==0){
    print("==========الرقم المدخل زوجي============="+"\n");
  }
  else{
    print("==========الرقم المدخل فردي============="+"\n");
}
  numusres();
  }
