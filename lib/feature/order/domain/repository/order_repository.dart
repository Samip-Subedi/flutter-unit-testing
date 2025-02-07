import 'package:dartz/dartz.dart';
import 'package:upanetra_test/core/error/failure.dart';
import 'package:upanetra_test/feature/order/domain/entity/order_entity.dart';

abstract interface class IOrderRepository {
  Future<Either<Failure, List<OrderEntity>>> getOrder();
  Future<Either<Failure, void>> createOrder(OrderEntity order);
  Future<Either<Failure, void>> deleteOrder(String id);
}
