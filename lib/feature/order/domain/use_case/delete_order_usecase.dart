import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:upanetra_test/app/usecase/usease.dart';
import 'package:upanetra_test/core/error/failure.dart';
import 'package:upanetra_test/feature/order/domain/repository/order_repository.dart';

class DeleteOrderParams extends Equatable {
  final String id;

  const DeleteOrderParams({required this.id});

  const DeleteOrderParams.empty() : id = '_empty.string';

  @override
  List<Object?> get props => [id];
}

// Use case
class DeleteOrderUsecase implements UsecaseWithParams<void, DeleteOrderParams> {
  final IOrderRepository _orderRepository;

  DeleteOrderUsecase({required IOrderRepository orderRepository})
      : _orderRepository = orderRepository;

  @override
  Future<Either<Failure, void>> call(DeleteOrderParams params) {
    return _orderRepository.deleteOrder(params.id);
  }
}
