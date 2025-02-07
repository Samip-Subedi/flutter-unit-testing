import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:upanetra_test/app/usecase/usease.dart';
import 'package:upanetra_test/core/error/failure.dart';
import 'package:upanetra_test/feature/Product/domain/repository/product_repository.dart';

class UploadProductImageParams {
  final File file;

  const UploadProductImageParams({
    required this.file,
  });
}

class UploadProductImageUsecase
    implements UsecaseWithParams<String, UploadProductImageParams> {
  final IProductRepository _repository;

  UploadProductImageUsecase(this._repository);

  @override
  Future<Either<Failure, String>> call(UploadProductImageParams params) {
    return _repository.uploadProductPicture(params.file);
  }
}
