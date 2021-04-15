import 'package:dio/dio.dart';
import 'package:naba/models/subject.dart';

import 'const.dart';


class SubjectsServices{

    static Future<List<Subject>> getSubjects(String level) async {
    try {
      Dio dio = new Dio();
      dio.options.headers['content-Type'] = 'application/json';

      Response response = await dio.get("$baseUrl/subjects/level/$level");
      List<Subject> temp = [];
      response.data.forEach((post) => temp.add(Subject.fromJson(post)));
      return temp;

    } catch (e) {
      print(e);
    }
    
    return [];
  }

}