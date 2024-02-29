import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import '../../../services/storage_service.dart';
import '../../../data/emoji.dart';
class HomeController extends GetxController {
  //TODO: Implement HomeController

  
  final storageService = Get.find<StorageService>();
  
  
  var index = 0.obs;

  String returnEmoji(){
    return EmojiClass.listOfEmoji[index.value]; 
  }



  int currIndex() {
    while(true){
      
      if(index.value == EmojiClass.listOfEmoji.length-1){
        index.value = 0;
        
      }
      else{
        index.value++;
      }
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
