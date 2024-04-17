import 'package:crow/crow.dart';
import 'package:get/get.dart';

class SettingsScreenViewModel extends ViewModel with StateMixin {
  SettingsScreenViewModel();

  @override
  void onInit() async {
    change(null, status: RxStatus.loading());  
    
    change(null, status: RxStatus.success());  
  super.onInit();
  }

}
