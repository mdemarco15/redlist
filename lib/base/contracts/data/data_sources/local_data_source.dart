import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:code_challenge/base/contracts/data/data_sources/data_source.dart';

import 'package:shared_preferences/shared_preferences.dart';
import 'package:code_challenge/base/contracts/data/data_sources/entity.dart';

abstract class BaseLocalDataSource<E extends Entity, P extends Params<E>> extends DataSource<E, P> {
  SharedPreferences get preferences => Get.find<SharedPreferences>();
}

@optionalTypeArgs
abstract class LocalDataSource<E extends Entity, P extends Params<E>> extends BaseLocalDataSource<E, P> {}
