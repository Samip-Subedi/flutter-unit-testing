import 'dart:io';

import 'package:upanetra_test/feature/auth/domain/entity/auth_entity.dart';

abstract interface class IAuthDataSource {
  Future<String> loginCustomer(String username, String password);

  Future<void> registerCustomer(AuthEntity customer);

  Future<AuthEntity> getCurrentUser();

  Future<String> uploadProfilePicture(File file);
}
