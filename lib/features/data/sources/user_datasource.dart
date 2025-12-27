import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:users/features/core/constants/api_constant.dart';
import 'package:users/features/core/errors/exception.dart';
import '../models/user_model.dart';

abstract class UserRemoteDataSource {
  Future<List<User>> getUsers();
  Future<User> getUserById(int id);
}

class UserRemoteDataSourceImpl implements UserRemoteDataSource {
  final http.Client client;

  UserRemoteDataSourceImpl({required this.client});

  @override
  Future<List<User>> getUsers() async {
    try {
      final response = await client.get(
        Uri.parse(ApiConstants.usersEndpoint),
        headers: {'Content-Type': 'application/json'},
      );

      if (response.statusCode == 200) {
        final List<dynamic> jsonList = json.decode(response.body);
        return jsonList.map((json) => User.fromJson(json)).toList();
      } else {
        throw ServerException(
          message: 'Failed to load users',
          statusCode: response.statusCode,
        );
      }
    } catch (e) {
      throw ServerException(message: e.toString());
    }
  }

  @override
  Future<User> getUserById(int id) async {
    try {
      final response = await client.get(
        Uri.parse('${ApiConstants.usersEndpoint}/$id'),
        headers: {'Content-Type': 'application/json'},
      );

      if (response.statusCode == 200) {
        return User.fromJson(json.decode(response.body));
      } else {
        throw ServerException(
          message: 'Failed to load user',
          statusCode: response.statusCode,
        );
      }
    } catch (e) {
      throw ServerException(message: e.toString());
    }
  }
}