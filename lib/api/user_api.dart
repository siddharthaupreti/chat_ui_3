import 'dart:convert';
import 'package:first_flutter_ui_one/models/profile_info.dart';
import 'package:flutter/cupertino.dart';

class UsersApi {
  static Future<List<Item>> getUsersLocally(BuildContext context) async {
    final assetBundle = DefaultAssetBundle.of(context);
    final data = await assetBundle.loadString('assets/files/user_info.json');
    final body = json.decode(data);

    return body.map<Item>(Item.fromJson).toList();
  }
}
