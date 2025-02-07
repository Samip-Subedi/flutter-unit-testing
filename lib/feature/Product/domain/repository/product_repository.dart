import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:upanetra_test/core/error/failure.dart';
import 'package:upanetra_test/feature/Product/domain/entity/product_entity.dart';

abstract interface class IProductRepository {
  Future<Either<Failure, List<ProductEntity>>> getProduct();
  Future<Either<Failure, void>> createProduct(ProductEntity product);
  Future<Either<Failure, void>> deleteProduct(String id, String? token);
  Future<Either<Failure, String>> uploadProductPicture(File file);
}
