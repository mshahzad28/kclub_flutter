// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UsersResponse _$UsersResponseFromJson(Map<String, dynamic> json) =>
    UsersResponse(
      next: json['next'] as String?,
      previous: json['previous'] as String?,
      count: json['count'] as int?,
      users: (json['results'] as List<dynamic>?)
          ?.map((e) => User.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$UsersResponseToJson(UsersResponse instance) =>
    <String, dynamic>{
      'next': instance.next,
      'previous': instance.previous,
      'count': instance.count,
      'results': instance.users?.map((e) => e.toJson()).toList(),
    };

User _$UserFromJson(Map<String, dynamic> json) => User(
      firstName: json['first_name'] as String?,
      lastName: json['last_name'] as String?,
      usaBoxingId: json['usa_boxing_id'] as String?,
      gender: json['gender'] as String?,
      weight: json['weight'] as String?,
      dateOfBirth: json['date_of_birth'] as String?,
      numberOfFights: json['number_of_fights'] as int?,
      teamId: json['team_id'] as int?,
      gymName: json['gym_name'] as String?,
      pictureThumb: json['picture_thumb'] as String?,
      isBoxer: json['is_boxer'] as bool?,
      isCoach: json['is_coach'] as bool?,
      isOfficial: json['is_official'] as bool?,
      isMatchmaker: json['is_matchmaker'] as bool?,
      isManagedAccount: json['is_managed_account'] as bool?,
      id: json['id'] as int?,
      age: json['age'] as int?,
      gymLocationFull: json['gym_location_full'] == null
          ? null
          : GymLocation.fromJson(
              json['gym_location_full'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$UserToJson(User instance) => <String, dynamic>{
      'first_name': instance.firstName,
      'last_name': instance.lastName,
      'usa_boxing_id': instance.usaBoxingId,
      'gender': instance.gender,
      'weight': instance.weight,
      'date_of_birth': instance.dateOfBirth,
      'number_of_fights': instance.numberOfFights,
      'team_id': instance.teamId,
      'gym_name': instance.gymName,
      'picture_thumb': instance.pictureThumb,
      'is_boxer': instance.isBoxer,
      'is_coach': instance.isCoach,
      'is_official': instance.isOfficial,
      'is_matchmaker': instance.isMatchmaker,
      'is_managed_account': instance.isManagedAccount,
      'id': instance.id,
      'age': instance.age,
      'gym_location_full': instance.gymLocationFull?.toJson(),
    };

GymLocation _$GymLocationFromJson(Map<String, dynamic> json) => GymLocation(
      locality: json['locality'] as String?,
      state: json['state'] as String?,
      stateCode: json['state_code'] as String?,
      country: json['country'] as String?,
      countryCode: json['country_code'] as String?,
      raw: json['raw'] as String?,
    );

Map<String, dynamic> _$GymLocationToJson(GymLocation instance) =>
    <String, dynamic>{
      'locality': instance.locality,
      'state': instance.state,
      'state_code': instance.stateCode,
      'country': instance.country,
      'country_code': instance.countryCode,
      'raw': instance.raw,
    };
