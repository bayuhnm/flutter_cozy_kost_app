import 'dart:convert';
import 'package:flutter_cozy_kost_app/models/space.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class SpaceProvider extends ChangeNotifier {
  getRecommendedSpaces() async {
    var result =
        await http.get('Link API-Mu Taruh Sini ya bek :v Datanya sesuaikan sama model yang udah kubuat, tinggal nyediain API aja. Sama tinggal bikin CRUD');

    print(result.statusCode);
    print(result.body);

    if (result.statusCode == 200) {
      List data = jsonDecode(result.body);
      Iterable spaces = data.map((item) => Space.fromJson(item)).toList();

      return spaces;
    } else {
      return <Space>[];
    }
  }
}
