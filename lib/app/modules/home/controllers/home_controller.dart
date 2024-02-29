import 'package:get/get.dart';

class HomeController extends GetxController {
  //TODO: Implement HomeController

  var pressed = 0.obs;
  var list_of_emoji = ['😀','😁','😅','😌'].obs;
  // var list_of_emoji = ['1','2','3','4'].obs;
  var index = 0;
  var text = "Hello".obs;

  void plus(){
    pressed.value++;
  }

  String plusEmojis(){
    while (true) {
      if(list_of_emoji.length == index){
        index = 0;
        return text(list_of_emoji[index++]);
      }
      else{
       return text(list_of_emoji[index++]);
      }
     
    }
    // for (var i = 0; i < list_of_emoji.length; i++) {
    //   text(list_of_emoji[i]);
    // }
    
  }

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

}
