// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'git_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_GitState _$$_GitStateFromJson(Map<String, dynamic> json) => _$_GitState(
      users: (json['users'] as List<dynamic>?)
              ?.map((e) => User.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$_GitStateToJson(_$_GitState instance) =>
    <String, dynamic>{
      'users': instance.users,
    };

_$_User _$$_UserFromJson(Map<String, dynamic> json) => _$_User(
      id: json['id'] as int?,
      name: json['login'] as String?,
      avatar: json['avatar_url'] as String?,
      type: json['type'] as String?,
      score: json['score'] as double?,
    );

Map<String, dynamic> _$$_UserToJson(_$_User instance) => <String, dynamic>{
      'id': instance.id,
      'login': instance.name,
      'avatar_url': instance.avatar,
      'type': instance.type,
      'score': instance.score,
    };

_$_GitUserDetail _$$_GitUserDetailFromJson(Map<String, dynamic> json) => _$_GitUserDetail(
      repos: json['public_repos'] as int?,
      name: json['login'] as String?,
      avatar: json['avatar_url'] as String?,
      company: json['company'] as String?,
      email: json['email'] as String?,
      realName: json['name'] as String?,
      followers: json['followers'] as int?,
      location: json['location'] as String?,
      createdAt: DateUtil.dynamicTimestampToDateTime(json['created_at']),
      updateAt: DateUtil.dynamicTimestampToDateTime(json['updated_at']),
    );

Map<String, dynamic> _$$_GitUserDetailToJson(_$_GitUserDetail instance) => <String, dynamic>{
      'public_repos': instance.repos,
      'login': instance.name,
      'avatar_url': instance.avatar,
      'company': instance.company,
      'email': instance.email,
      'followers': instance.followers,
      'location': instance.location,
      'created_at': instance.createdAt,
      'updated_at': instance.updateAt,
    };
