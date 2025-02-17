import 'package:upanetra_test/core/network/hive_service.dart';
import 'package:upanetra_test/feature/order/data/data_source/order_data_source.dart';
import 'package:upanetra_test/feature/order/data/model/order_hive_model.dart';
import 'package:upanetra_test/feature/order/domain/entity/order_entity.dart';

class OrderLocalDataSource implements IOrderDataSource {
  final HiveService hiveService;

  OrderLocalDataSource({required this.hiveService});

  @override
  Future<void> createOrder(OrderEntity order) async {
    try {
      // Convert ProductEntity to ProductHiveModel
      final orderHiveModel = OrderHiveModel.fromEntity(order);
      await hiveService.addOrder(orderHiveModel);
    } catch (e) {
      throw Exception(e);
    }
  }

  @override
  Future<void> deleteOrder(String id) async {
    try {
      await hiveService.deleteOrder(id);
    } catch (e) {
      throw Exception(e);
    }
  }

  @override
  Future<List<OrderEntity>> getOrder() {
    try {
      return hiveService.getAllOrder().then(
        (value) {
          return value.map((e) => e.toEntity()).toList();
        },
      );
    } catch (e) {
      throw Exception(e);
    }
  }
}
