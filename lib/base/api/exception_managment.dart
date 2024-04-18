import 'package:dio/dio.dart';
import 'package:get/get.dart';

extension ExceptionsManagment on DioException {
  void exceptionManager() {
    switch (response?.statusCode) {
      case 500:
        Get.snackbar('Attenzione', "Errore generico, contattare l'assistenza");
        break;
      case 401:
        if (response?.data != "") {
          switch (response?.data['error_description']) {
            case 'Invalid user credentials':
              Get.snackbar('Attenzione', "username e/o password errati");
              break;
            case 'Token is not active':
              Get.snackbar('Attenzione', "Sessione scaduta effettuare il login!");
              break;
            default:
              Get.snackbar('Attenzione', "Errore generico, contattare l'assistenza");
          }
        } else {
          Get.snackbar('Attenzione', "Errore generico, contattare l'assistenza");
        }
        break;
      default:
    }
  }
}
