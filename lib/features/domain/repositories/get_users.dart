import 'package:dartz/dartz.dart';
import 'package:users/features/core/errors/failures.dart';
import 'package:users/features/data/models/user_model.dart';
import 'package:users/features/domain/repositories/user_repository.dart';


class GetUsers {
  final UserRepository repository;

  GetUsers({required this.repository});

  Future<Either<Failure, List<User>>> call() async {
    return await repository.getUsers();
  }
}