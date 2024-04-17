import 'package:get/get.dart';
import 'package:code_challenge/base/contracts/data/data_sources/entity.dart';

abstract class DataSource<E extends Entity, P extends Params<E>> extends GetxService {}

class Params<E extends Entity> {
  Params({
    this.entity,
    this.page,
    this.records,
    this.sort,
    this.filters,
  });

  E? entity;
  int? page;
  int? records;
  Map<String, SortOrder>? sort;
  Map<String, dynamic>? filters;
}

class Sort {
  Sort({required this.by, this.order = SortOrder.increasing});

  String by;
  SortOrder order;
}

enum SortOrder {
  increasing,
  decreasing,
}
