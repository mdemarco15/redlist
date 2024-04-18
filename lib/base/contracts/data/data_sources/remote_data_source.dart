import 'package:code_challenge/base/contracts/data/data_sources/data_source.dart';
import 'package:code_challenge/base/contracts/data/data_sources/entity.dart';
import 'package:code_challenge/base/network/client_service.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class BaseRemoteDataSource<ID, E extends Entity, P extends Params<E>> extends DataSource<E, P> {
  ApiClient get client => Get.find<ApiClient>();
}

@optionalTypeArgs
abstract class RemoteDataSource<ID, E extends Entity, P extends Params<E>> extends BaseRemoteDataSource<ID, E, P> {}
