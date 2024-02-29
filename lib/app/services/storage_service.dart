import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';



class StorageService extends GetxService {
  late GetStorage box; 

  Future<StorageService> init() async {
    box = GetStorage();
    return this;
  }

  Future<void> writeIndex(int index) async {
   return box.write('index', index);
  }

  int readIndex()  {
   return box.read('index') ?? 0; //null operator
  }

  void deleteStorage(){
    box.erase();
  }

}