import 'dart:async';
import 'dart:convert';
import 'dart:developer';

import 'package:astrotak/Bloc/astrobloc.dart';
import 'package:astrotak/dataobj.dart';
import 'package:http/http.dart' as http;

class datarepo {
  final _controller = StreamController<Astrostatus>();
  Stream<Astrostatus> get status async* {
    // await Future<void>.delayed(const Duration(seconds: 1));
    // yield AuthenticationStatus.unauthenticated; yield*
    _controller.stream;
  }

  Future<List<Question>> getquestion() async {
    var url = "https://staging-api.astrotak.com/api/question/category/all";

    // Starting Web API Call.
    var response = await http.get(Uri.parse(url));

    if (response.statusCode == 200) {
      final items = json.decode(response.body).cast<Map<String, dynamic>>();

      log("thisone" + items.toString());

      List<Question> question =
          items.map<Question>((json) => Question.fromJson(json)).toList();

      return question;
      //showToast(profile.toString());
    } else {
      throw Exception('Failed to load data from Server.');
    }
  }
}
