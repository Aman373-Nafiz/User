import 'package:get/get.dart';
import 'package:users/features/data/models/user_model.dart';
import 'package:users/features/domain/repositories/get_users.dart';
// import '../../domain/entities/user.dart';

class UserController extends GetxController {
  final GetUsers getUsersUseCase;

  UserController({required this.getUsersUseCase});

  final RxList<User> users = <User>[].obs;
  final RxList<User> filteredUsers = <User>[].obs;
  final RxBool isLoading = false.obs;
  final RxString errorMessage = ''.obs;
  final RxString searchQuery = ''.obs;

  @override
  void onInit() {
    super.onInit();
    fetchUsers();
  }

  Future<void> fetchUsers() async {
    isLoading.value = true;
    errorMessage.value = '';

    final result = await getUsersUseCase();

    result.fold(
      (failure) {
        errorMessage.value = failure.message;
        isLoading.value = false;
      },
      (usersList) {
        users.value = usersList;
        filteredUsers.value = usersList;
        isLoading.value = false;
      },
    );
  }

  void searchUsers(String query) {
    searchQuery.value = query;
    if (query.isEmpty) {
      filteredUsers.value = users;
    } else {
      filteredUsers.value = users
          .where((user) =>
              user.name.toLowerCase().contains(query.toLowerCase()) ||
              user.email.toLowerCase().contains(query.toLowerCase()))
          .toList();
    }
  }

  void clearSearch() {
    searchQuery.value = '';
    filteredUsers.value = users;
  }
}