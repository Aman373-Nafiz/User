import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:users/features/domain/repositories/get_users.dart';
import 'package:users/features/domain/repositories/user_repository.dart';
import 'package:users/features/data/repository/user_repository_impl.dart';
import 'package:users/features/data/sources/user_datasource.dart';
import 'package:users/features/presentation/controllers/user_controller.dart';

class DependencyInjection {
  static void init() {
    // External
    Get.lazyPut<http.Client>(() => http.Client());

    // Data sources
    Get.lazyPut<UserRemoteDataSource>(
      () => UserRemoteDataSourceImpl(client: Get.find()),
    );

    // Repositories
    Get.lazyPut<UserRepository>(
      () => UserRepositoryImpl(remoteDataSource: Get.find()),
    );

    // Use cases
    Get.lazyPut(() => GetUsers(repository: Get.find()));

    // Controllers
    Get.lazyPut(
      () => UserController(getUsersUseCase: Get.find()),
    );
  }
}