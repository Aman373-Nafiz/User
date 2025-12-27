import 'package:dartz/dartz.dart';
import 'package:users/features/core/errors/failures.dart';
import 'package:users/features/data/models/user_model.dart';


abstract class UserRepository {
  Future<Either<Failure, List<User>>> getUsers();
  Future<Either<Failure, User>> getUserById(int id);
}