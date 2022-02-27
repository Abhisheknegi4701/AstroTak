class Question {
  int? id;
  String? name;
  String? description;
  double? price;
  List<String>? suggestions;

  Question(
      {this.id, this.name, this.description, this.price, this.suggestions});

  Question.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    description = json['description'];
    price = json['price'];
    suggestions = json['suggestions'].cast<String>();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    data['description'] = description;
    data['price'] = price;
    data['suggestions'] = suggestions;
    return data;
  }
}

class Relative {
  String? uuid;
  String? relation;
  int? relationId;
  String? firstName;
  String? middleName;
  String? lastName;
  String? fullName;
  String? gender;
  String? dateAndTimeOfBirth;
  BirthDetails? birthDetails;
  BirthPlace? birthPlace;

  Relative(
      {this.uuid,
      this.relation,
      this.relationId,
      this.firstName,
      this.middleName,
      this.lastName,
      this.fullName,
      this.gender,
      this.dateAndTimeOfBirth,
      this.birthDetails,
      this.birthPlace});

  Relative.fromJson(Map<String, dynamic> json) {
    uuid = json['uuid'];
    relation = json['relation'];
    relationId = json['relationId'];
    firstName = json['firstName'];
    middleName = json['middleName'];
    lastName = json['lastName'];
    fullName = json['fullName'];
    gender = json['gender'];
    dateAndTimeOfBirth = json['dateAndTimeOfBirth'];
    birthDetails = json['birthDetails'] != null
        ? BirthDetails.fromJson(json['birthDetails'])
        : null;
    birthPlace = json['birthPlace'] != null
        ? BirthPlace.fromJson(json['birthPlace'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['uuid'] = uuid;
    data['relation'] = relation;
    data['relationId'] = relationId;
    data['firstName'] = firstName;
    data['middleName'] = middleName;
    data['lastName'] = lastName;
    data['fullName'] = fullName;
    data['gender'] = gender;
    data['dateAndTimeOfBirth'] = dateAndTimeOfBirth;
    if (birthDetails != null) {
      data['birthDetails'] = birthDetails!.toJson();
    }
    if (birthPlace != null) {
      data['birthPlace'] = birthPlace!.toJson();
    }
    return data;
  }
}

class BirthDetails {
  int? dobYear;
  int? dobMonth;
  int? dobDay;
  int? tobHour;
  int? tobMin;
  String? meridiem;

  BirthDetails(
      {this.dobYear,
      this.dobMonth,
      this.dobDay,
      this.tobHour,
      this.tobMin,
      this.meridiem});

  BirthDetails.fromJson(Map<String, dynamic> json) {
    dobYear = json['dobYear'];
    dobMonth = json['dobMonth'];
    dobDay = json['dobDay'];
    tobHour = json['tobHour'];
    tobMin = json['tobMin'];
    meridiem = json['meridiem'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['dobYear'] = dobYear;
    data['dobMonth'] = dobMonth;
    data['dobDay'] = dobDay;
    data['tobHour'] = tobHour;
    data['tobMin'] = tobMin;
    data['meridiem'] = meridiem;
    return data;
  }
}

class BirthPlace {
  String? placeName;
  String? placeId;

  BirthPlace({this.placeName, this.placeId});

  BirthPlace.fromJson(Map<String, dynamic> json) {
    placeName = json['placeName'];
    placeId = json['placeId'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['placeName'] = placeName;
    data['placeId'] = placeId;
    return data;
  }
}

class Location {
  String? placeName;
  String? placeId;

  Location({this.placeName, this.placeId});

  Location.fromJson(Map<String, dynamic> json) {
    placeName = json['placeName'];
    placeId = json['placeId'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['placeName'] = placeName;
    data['placeId'] = placeId;
    return data;
  }
}
