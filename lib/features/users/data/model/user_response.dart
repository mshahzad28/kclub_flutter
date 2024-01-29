import 'package:json_annotation/json_annotation.dart';
part 'user_response.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class UsersResponse {
  String? next;
  String? previous;
  int? count;
  @JsonKey(name: "results")
  List<User>? users;
  UsersResponse({this.next, this.previous, this.count, this.users});
  factory UsersResponse.fromJson(Map<String, dynamic> json) =>
      _$UsersResponseFromJson(json);
  Map<String, dynamic> toJson() => _$UsersResponseToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class User {
  String? firstName;
  String? lastName;
  String? usaBoxingId;
  String? gender;
  String? weight;
  String? dateOfBirth;
  int? numberOfFights;
  int? teamId;
  String? gymName;
  String? pictureThumb;
  bool? isBoxer;
  bool? isCoach;
  bool? isOfficial;
  bool? isMatchmaker;
  bool? isManagedAccount;
  int? id;
  int? age;
  GymLocation? gymLocationFull;

  User({
    this.firstName,
    this.lastName,
    this.usaBoxingId,
    this.gender,
    this.weight,
    this.dateOfBirth,
    this.numberOfFights,
    this.teamId,
    this.gymName,
    this.pictureThumb,
    this.isBoxer,
    this.isCoach,
    this.isOfficial,
    this.isMatchmaker,
    this.isManagedAccount,
    this.id,
    this.age,
    this.gymLocationFull,
  });
  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
  Map<String, dynamic> toJson() => _$UserToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class GymLocation {
  String? locality;
  String? state;
  String? stateCode;
  String? country;
  String? countryCode;
  String? raw;

  GymLocation({
    this.locality,
    this.state,
    this.stateCode,
    this.country,
    this.countryCode,
    this.raw,
  });
  factory GymLocation.fromJson(Map<String, dynamic> json) =>
      _$GymLocationFromJson(json);
  Map<String, dynamic> toJson() => _$GymLocationToJson(this);
}
