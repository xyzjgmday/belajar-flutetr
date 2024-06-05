import 'dart:convert';
import 'package:meet_13/models/usermodel.dart';
import 'package:http/http.dart' as http;

class UserViewModel {
  Future<List<UserModel>?> getUsers() async {
    try {
      http.Response response = await http.get(
        Uri.parse("https://jsonplaceholder.typicode.com/users"),
        headers: {"Accept": "application/json"},
      );
      if (response.statusCode == 200) {
        print("Data fetched successfully");
        final data = userModelFromJson(response.body);
        return data;
      } else {
        print("Error status: " + response.statusCode.toString());
        return null;
      }
    } catch (e) {
      print("Error: $e");
      return null;
    }
  }
}
