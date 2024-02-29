import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import '../../../services/storage_service.dart';
import '../../../data/emoji.dart';
class HomeController extends GetxController {
  //TODO: Implement HomeController

  // var pressed = 0.obs;
  final storageService = Get.find<StorageService>();
  
  // var list_of_emoji = ['1','2','3','4'].obs;
  var index = 0.obs;

  // var currentEmoji = EmojiClass.listOfEmoji[index.value].obs;
  var text = "".obs;
  

  // void plus(){
  //   pressed.value++;
  // }

  String returnEmoji(){
    return EmojiClass.listOfEmoji[index.value]; 
  }


  // String plusEmojis(){
  //   int currentIdx = 0;
  //   while (true) {
  //     if(EmojiClass.listOfEmoji.length == index.value){
  //       index.value  = 0;
  //       currentIdx = index.value++;
  //       storageService.writeIndex(index.value);

  //       return text(EmojiClass.listOfEmoji[currentIdx]);
  //     }
  //     else{
  //       currentIdx = index.value++;
  //       storageService.writeIndex(index.value);
  //      return text(EmojiClass.listOfEmoji[currentIdx]);
  //     }
     
  //   }
  //   // for (var i = 0; i < list_of_emoji.length; i++) {
  //   //   text(list_of_emoji[i]);
  //   // }
    
  // }

  int currIndex() {
    while(true){
      
      if(index.value == EmojiClass.listOfEmoji.length-1){
        index.value = 0;
        
      }
      else{
        index.value++;
      }
      print(index.value);
      storageService.writeIndex(index.value);
      return index.value;
      
    }
  }

  @override
  void onInit() {
    super.onInit();
    index.value = storageService.readIndex();
    // storageService.deleteStorage();

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
