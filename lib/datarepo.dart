import 'dart:async';
import 'dart:convert';

import 'package:astrotak/Bloc/astrobloc.dart';
import 'package:astrotak/dataobj.dart';
import 'package:http/http.dart' as http;

class datarepo {
  final _controller = StreamController<Astrostatus>();
  Stream<Astrostatus> get status async* {
    // await Future<void>.delayed(const Duration(seconds: 1));
    yield Astrostatus.questionLoading;
    yield* _controller.stream;
  }

  Future<List<Question>> getquestion() async {
    var url = "https://staging-api.astrotak.com/api/question/category/all";

    // Starting Web API Call.
    var response = await http.get(Uri.parse(url));

    if (response.statusCode == 200) {
      //final items = json.decode(response.body).cast<Map<String, dynamic>>();

      List<Question> question = json
          .decode(response.body)["data"]
          .map<Question>((json) => Question.fromJson(json))
          .toList();

      //log("thisone" + question.toString());

      return question;
      //showToast(profile.toString());
    } else {
      throw Exception('Failed to load data from Server.');
    }
  }

  Future<bool> addrelative(
      String dobYear,
      String dobMonth,
      String dobDay,
      String tobHour,
      String tobMin,
      String meridiem,
      String placeName,
      String placeId,
      String name,
      String relationId,
      String relation,
      String gender) async {
    var url = "https://staging-api.astrotak.com/api/relative";

    var birthdetail = {
      'dobYear': dobYear,
      'dobMonth': dobMonth,
      'dobDay': dobDay,
      'tobHour': tobHour,
      'tobMin': tobMin,
      'meridiem': meridiem
    };

    var birthplce = {'placeName': placeName, 'placeId': placeId};

    var data = {
      'firstName': name.split(" ").first,
      'lastName': name.split(" ").last,
      'relationId': relationId,
      'gender': gender,
      'birthPlace': birthplce,
      'birthDetails': birthdetail
    };

    // Starting Web API Call.
    var response = await http.post(
      Uri.parse(url),
      body: jsonEncode(data),
      headers: {
        'Authorization':
            'Bearer eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiI4ODA5NzY1MTkxIiwiUm9sZXMiOltdLCJleHAiOjE2NzY0NjE0NzEsImlhdCI6M'
                'TY0NDkyNTQ3MX0.EVAhZLNeuKd7e7BstsGW5lYEtggbSfLD_aKqGFLpidgL7UHZTBues0MUQR8sqMD1267V4Y_VheBHpxwKWKA3lQ'
      },
    );

    if (response.statusCode == 200) {
      //final items = json.decode(response.body).cast<Map<String, dynamic>>();

      return true;
      //showToast(profile.toString());
    } else {
      return false;
    }
  }

  Future<List<Relative>> getrelative() async {
    var url = "https://staging-api.astrotak.com/api/relative/all";

    // Starting Web API Call.
    var response = await http.get(Uri.parse(url), headers: {
      'Authorization':
          'Bearer eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiI4ODA5NzY1MTkxIiwiUm9sZXMiOltdLCJleHAiOjE2NzY0NjE0NzEsImlhdCI6M'
              'TY0NDkyNTQ3MX0.EVAhZLNeuKd7e7BstsGW5lYEtggbSfLD_aKqGFLpidgL7UHZTBues0MUQR8sqMD1267V4Y_VheBHpxwKWKA3lQ'
    });

    if (response.statusCode == 200) {
      //final items = json.decode(response.body).cast<Map<String, dynamic>>();

      List<Relative> question = json
          .decode(response.body)["data"]["allRelatives"]
          .map<Relative>((json) => Relative.fromJson(json))
          .toList();

      //log("thisone" + question.toString());

      return question;
      //showToast(profile.toString());
    } else {
      throw Exception('Failed to load data from Server.');
    }
  }

  Future<List<Location>> getlocation() async {
    var url =
        "https://staging-api.astrotak.com/api/location/place?inputPlace=Delhi";

    // Starting Web API Call.
    var response = await http.get(Uri.parse(url));

    if (response.statusCode == 200) {
      //final items = json.decode(response.body).cast<Map<String, dynamic>>();

      List<Location> locationlist = json
          .decode(response.body)["data"]
          .map<Location>((json) => Location.fromJson(json))
          .toList();

      //log("thisone" + question.toString());

      return locationlist;
      //showToast(profile.toString());
    } else {
      throw Exception('Failed to load data from Server.');
    }
  }

  Future<bool> deleterelative(String id) async {
    var url = "https://staging-api.astrotak.com/api/relative/delete/" + id;

    // Starting Web API Call.
    var response = await http.post(Uri.parse(url), headers: {
      'Authorization':
          'Bearer eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiI4ODA5NzY1MTkxIiwiUm9sZXMiOltdLCJleHAiOjE2NzY0NjE0NzEsImlhdCI6M'
              'TY0NDkyNTQ3MX0.EVAhZLNeuKd7e7BstsGW5lYEtggbSfLD_aKqGFLpidgL7UHZTBues0MUQR8sqMD1267V4Y_VheBHpxwKWKA3lQ'
    });

    if (response.statusCode == 200) {
      //final items = json.decode(response.body).cast<Map<String, dynamic>>();

      return true;
      //showToast(profile.toString());
    } else {
      return false;
    }
  }
}
