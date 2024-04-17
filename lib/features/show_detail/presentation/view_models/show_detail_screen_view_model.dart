import 'dart:convert';
import 'package:crow/crow.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:code_challenge/features/home/data/models/show_response_model.dart';
import 'package:code_challenge/features/home/domain/entity/show_response_entity.dart';

class ShowDetailScreenViewModel extends ViewModel with StateMixin {
  ShowDetailScreenViewModel(this._sharedPreferences);

  final SharedPreferences _sharedPreferences;
  ShowResponseEntity? show;

  @override
  void onInit() async {
    change(null, status: RxStatus.loading());
    var showToMap = _sharedPreferences.getString('show');
    var json = jsonDecode(showToMap!);
    var showModel = ShowResponseModel.fromJson(json);
    show = showModel.toEntity();
    change(null, status: RxStatus.success());
    super.onInit();
  }

  String formatDate(String inputDate) {
    var dateToPrint = DateTime.parse(inputDate);
    var selectedDate = DateFormat(
      'dd MMM y',
    ).format(dateToPrint);
    return selectedDate;
  }
}
