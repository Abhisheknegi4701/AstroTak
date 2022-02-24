import 'dart:core';

class Question {
  const Question(
      {required this.id,
      required this.name,
      required this.description,
      required this.price,
      required this.suggestions});

  final String id;
  final String name;
  final String description;
  final String price;
  final List<String> suggestions;

  factory Question.fromJson(Map<String, dynamic> json) {
    return Question(
        id: json['id'].toString(),
        name: json['name'],
        description: json['description'],
        price: json['price'].toString(),
        suggestions: json['suggestions']);
  }
}

class Relative {
  final String name = "";
}
