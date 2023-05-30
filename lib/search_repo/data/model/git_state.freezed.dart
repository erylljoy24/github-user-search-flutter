// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'git_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GitState _$GitStateFromJson(Map<String, dynamic> json) {
  return _GitState.fromJson(json);
}

/// @nodoc
mixin _$GitState {
  List<User> get users => throw _privateConstructorUsedError;
  GitUserDetail get gitUserDetail => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GitStateCopyWith<GitState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GitStateCopyWith<$Res> {
  factory $GitStateCopyWith(GitState value, $Res Function(GitState) then) =
      _$GitStateCopyWithImpl<$Res, GitState>;
  @useResult
  $Res call({List<User> users, GitUserDetail gitUserDetail, bool isLoading});

  $GitUserDetailCopyWith<$Res> get gitUserDetail;
}

/// @nodoc
class _$GitStateCopyWithImpl<$Res, $Val extends GitState>
    implements $GitStateCopyWith<$Res> {
  _$GitStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? users = null,
    Object? gitUserDetail = null,
    Object? isLoading = null,
  }) {
    return _then(_value.copyWith(
      users: null == users
          ? _value.users
          : users // ignore: cast_nullable_to_non_nullable
              as List<User>,
      gitUserDetail: null == gitUserDetail
          ? _value.gitUserDetail
          : gitUserDetail // ignore: cast_nullable_to_non_nullable
              as GitUserDetail,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $GitUserDetailCopyWith<$Res> get gitUserDetail {
    return $GitUserDetailCopyWith<$Res>(_value.gitUserDetail, (value) {
      return _then(_value.copyWith(gitUserDetail: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_GitStateCopyWith<$Res> implements $GitStateCopyWith<$Res> {
  factory _$$_GitStateCopyWith(
          _$_GitState value, $Res Function(_$_GitState) then) =
      __$$_GitStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<User> users, GitUserDetail gitUserDetail, bool isLoading});

  @override
  $GitUserDetailCopyWith<$Res> get gitUserDetail;
}

/// @nodoc
class __$$_GitStateCopyWithImpl<$Res>
    extends _$GitStateCopyWithImpl<$Res, _$_GitState>
    implements _$$_GitStateCopyWith<$Res> {
  __$$_GitStateCopyWithImpl(
      _$_GitState _value, $Res Function(_$_GitState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? users = null,
    Object? gitUserDetail = null,
    Object? isLoading = null,
  }) {
    return _then(_$_GitState(
      users: null == users
          ? _value._users
          : users // ignore: cast_nullable_to_non_nullable
              as List<User>,
      gitUserDetail: null == gitUserDetail
          ? _value.gitUserDetail
          : gitUserDetail // ignore: cast_nullable_to_non_nullable
              as GitUserDetail,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GitState implements _GitState {
  _$_GitState(
      {final List<User> users = const [],
      this.gitUserDetail = const GitUserDetail(),
      this.isLoading = true})
      : _users = users;

  factory _$_GitState.fromJson(Map<String, dynamic> json) =>
      _$$_GitStateFromJson(json);

  final List<User> _users;
  @override
  @JsonKey()
  List<User> get users {
    if (_users is EqualUnmodifiableListView) return _users;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_users);
  }

  @override
  @JsonKey()
  final GitUserDetail gitUserDetail;
  @override
  @JsonKey()
  final bool isLoading;

  @override
  String toString() {
    return 'GitState(users: $users, gitUserDetail: $gitUserDetail, isLoading: $isLoading)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GitState &&
            const DeepCollectionEquality().equals(other._users, _users) &&
            (identical(other.gitUserDetail, gitUserDetail) ||
                other.gitUserDetail == gitUserDetail) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_users), gitUserDetail, isLoading);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GitStateCopyWith<_$_GitState> get copyWith =>
      __$$_GitStateCopyWithImpl<_$_GitState>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GitStateToJson(
      this,
    );
  }
}

abstract class _GitState implements GitState {
  factory _GitState(
      {final List<User> users,
      final GitUserDetail gitUserDetail,
      final bool isLoading}) = _$_GitState;

  factory _GitState.fromJson(Map<String, dynamic> json) = _$_GitState.fromJson;

  @override
  List<User> get users;
  @override
  GitUserDetail get gitUserDetail;
  @override
  bool get isLoading;
  @override
  @JsonKey(ignore: true)
  _$$_GitStateCopyWith<_$_GitState> get copyWith =>
      throw _privateConstructorUsedError;
}

User _$UserFromJson(Map<String, dynamic> json) {
  return _User.fromJson(json);
}

/// @nodoc
mixin _$User {
  @JsonKey(name: 'id')
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'login')
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'avatar_url')
  String? get avatar => throw _privateConstructorUsedError;
  @JsonKey(name: 'type')
  String? get type => throw _privateConstructorUsedError;
  @JsonKey(name: 'score')
  double? get score => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserCopyWith<User> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserCopyWith<$Res> {
  factory $UserCopyWith(User value, $Res Function(User) then) =
      _$UserCopyWithImpl<$Res, User>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int? id,
      @JsonKey(name: 'login') String? name,
      @JsonKey(name: 'avatar_url') String? avatar,
      @JsonKey(name: 'type') String? type,
      @JsonKey(name: 'score') double? score});
}

/// @nodoc
class _$UserCopyWithImpl<$Res, $Val extends User>
    implements $UserCopyWith<$Res> {
  _$UserCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? avatar = freezed,
    Object? type = freezed,
    Object? score = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      avatar: freezed == avatar
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      score: freezed == score
          ? _value.score
          : score // ignore: cast_nullable_to_non_nullable
              as double?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_UserCopyWith<$Res> implements $UserCopyWith<$Res> {
  factory _$$_UserCopyWith(_$_User value, $Res Function(_$_User) then) =
      __$$_UserCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int? id,
      @JsonKey(name: 'login') String? name,
      @JsonKey(name: 'avatar_url') String? avatar,
      @JsonKey(name: 'type') String? type,
      @JsonKey(name: 'score') double? score});
}

/// @nodoc
class __$$_UserCopyWithImpl<$Res> extends _$UserCopyWithImpl<$Res, _$_User>
    implements _$$_UserCopyWith<$Res> {
  __$$_UserCopyWithImpl(_$_User _value, $Res Function(_$_User) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? avatar = freezed,
    Object? type = freezed,
    Object? score = freezed,
  }) {
    return _then(_$_User(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      avatar: freezed == avatar
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      score: freezed == score
          ? _value.score
          : score // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_User implements _User {
  const _$_User(
      {@JsonKey(name: 'id') this.id,
      @JsonKey(name: 'login') this.name,
      @JsonKey(name: 'avatar_url') this.avatar,
      @JsonKey(name: 'type') this.type,
      @JsonKey(name: 'score') this.score});

  factory _$_User.fromJson(Map<String, dynamic> json) => _$$_UserFromJson(json);

  @override
  @JsonKey(name: 'id')
  final int? id;
  @override
  @JsonKey(name: 'login')
  final String? name;
  @override
  @JsonKey(name: 'avatar_url')
  final String? avatar;
  @override
  @JsonKey(name: 'type')
  final String? type;
  @override
  @JsonKey(name: 'score')
  final double? score;

  @override
  String toString() {
    return 'User(id: $id, name: $name, avatar: $avatar, type: $type, score: $score)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_User &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.avatar, avatar) || other.avatar == avatar) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.score, score) || other.score == score));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, avatar, type, score);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UserCopyWith<_$_User> get copyWith =>
      __$$_UserCopyWithImpl<_$_User>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserToJson(
      this,
    );
  }
}

abstract class _User implements User {
  const factory _User(
      {@JsonKey(name: 'id') final int? id,
      @JsonKey(name: 'login') final String? name,
      @JsonKey(name: 'avatar_url') final String? avatar,
      @JsonKey(name: 'type') final String? type,
      @JsonKey(name: 'score') final double? score}) = _$_User;

  factory _User.fromJson(Map<String, dynamic> json) = _$_User.fromJson;

  @override
  @JsonKey(name: 'id')
  int? get id;
  @override
  @JsonKey(name: 'login')
  String? get name;
  @override
  @JsonKey(name: 'avatar_url')
  String? get avatar;
  @override
  @JsonKey(name: 'type')
  String? get type;
  @override
  @JsonKey(name: 'score')
  double? get score;
  @override
  @JsonKey(ignore: true)
  _$$_UserCopyWith<_$_User> get copyWith => throw _privateConstructorUsedError;
}

GitUserDetail _$GitUserDetailFromJson(Map<String, dynamic> json) {
  return _GitUserDetail.fromJson(json);
}

/// @nodoc
mixin _$GitUserDetail {
  @JsonKey(name: 'public_repos')
  int? get repos => throw _privateConstructorUsedError;
  @JsonKey(name: 'login')
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'name')
  String? get realName => throw _privateConstructorUsedError;
  @JsonKey(name: 'avatar_url')
  String? get avatar => throw _privateConstructorUsedError;
  @JsonKey(name: 'company')
  String? get company => throw _privateConstructorUsedError;
  @JsonKey(name: 'email')
  String? get email => throw _privateConstructorUsedError;
  @JsonKey(name: 'followers')
  int? get followers => throw _privateConstructorUsedError;
  @JsonKey(name: 'location')
  String? get location => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  String? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  String? get updateAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GitUserDetailCopyWith<GitUserDetail> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GitUserDetailCopyWith<$Res> {
  factory $GitUserDetailCopyWith(
          GitUserDetail value, $Res Function(GitUserDetail) then) =
      _$GitUserDetailCopyWithImpl<$Res, GitUserDetail>;
  @useResult
  $Res call(
      {@JsonKey(name: 'public_repos') int? repos,
      @JsonKey(name: 'login') String? name,
      @JsonKey(name: 'name') String? realName,
      @JsonKey(name: 'avatar_url') String? avatar,
      @JsonKey(name: 'company') String? company,
      @JsonKey(name: 'email') String? email,
      @JsonKey(name: 'followers') int? followers,
      @JsonKey(name: 'location') String? location,
      @JsonKey(name: 'created_at') String? createdAt,
      @JsonKey(name: 'updated_at') String? updateAt});
}

/// @nodoc
class _$GitUserDetailCopyWithImpl<$Res, $Val extends GitUserDetail>
    implements $GitUserDetailCopyWith<$Res> {
  _$GitUserDetailCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? repos = freezed,
    Object? name = freezed,
    Object? realName = freezed,
    Object? avatar = freezed,
    Object? company = freezed,
    Object? email = freezed,
    Object? followers = freezed,
    Object? location = freezed,
    Object? createdAt = freezed,
    Object? updateAt = freezed,
  }) {
    return _then(_value.copyWith(
      repos: freezed == repos
          ? _value.repos
          : repos // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      realName: freezed == realName
          ? _value.realName
          : realName // ignore: cast_nullable_to_non_nullable
              as String?,
      avatar: freezed == avatar
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as String?,
      company: freezed == company
          ? _value.company
          : company // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      followers: freezed == followers
          ? _value.followers
          : followers // ignore: cast_nullable_to_non_nullable
              as int?,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      updateAt: freezed == updateAt
          ? _value.updateAt
          : updateAt // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_GitUserDetailCopyWith<$Res>
    implements $GitUserDetailCopyWith<$Res> {
  factory _$$_GitUserDetailCopyWith(
          _$_GitUserDetail value, $Res Function(_$_GitUserDetail) then) =
      __$$_GitUserDetailCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'public_repos') int? repos,
      @JsonKey(name: 'login') String? name,
      @JsonKey(name: 'name') String? realName,
      @JsonKey(name: 'avatar_url') String? avatar,
      @JsonKey(name: 'company') String? company,
      @JsonKey(name: 'email') String? email,
      @JsonKey(name: 'followers') int? followers,
      @JsonKey(name: 'location') String? location,
      @JsonKey(name: 'created_at') String? createdAt,
      @JsonKey(name: 'updated_at') String? updateAt});
}

/// @nodoc
class __$$_GitUserDetailCopyWithImpl<$Res>
    extends _$GitUserDetailCopyWithImpl<$Res, _$_GitUserDetail>
    implements _$$_GitUserDetailCopyWith<$Res> {
  __$$_GitUserDetailCopyWithImpl(
      _$_GitUserDetail _value, $Res Function(_$_GitUserDetail) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? repos = freezed,
    Object? name = freezed,
    Object? realName = freezed,
    Object? avatar = freezed,
    Object? company = freezed,
    Object? email = freezed,
    Object? followers = freezed,
    Object? location = freezed,
    Object? createdAt = freezed,
    Object? updateAt = freezed,
  }) {
    return _then(_$_GitUserDetail(
      repos: freezed == repos
          ? _value.repos
          : repos // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      realName: freezed == realName
          ? _value.realName
          : realName // ignore: cast_nullable_to_non_nullable
              as String?,
      avatar: freezed == avatar
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as String?,
      company: freezed == company
          ? _value.company
          : company // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      followers: freezed == followers
          ? _value.followers
          : followers // ignore: cast_nullable_to_non_nullable
              as int?,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      updateAt: freezed == updateAt
          ? _value.updateAt
          : updateAt // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GitUserDetail implements _GitUserDetail {
  const _$_GitUserDetail(
      {@JsonKey(name: 'public_repos') this.repos,
      @JsonKey(name: 'login') this.name,
      @JsonKey(name: 'name') this.realName,
      @JsonKey(name: 'avatar_url') this.avatar,
      @JsonKey(name: 'company') this.company,
      @JsonKey(name: 'email') this.email,
      @JsonKey(name: 'followers') this.followers,
      @JsonKey(name: 'location') this.location,
      @JsonKey(name: 'created_at') this.createdAt,
      @JsonKey(name: 'updated_at') this.updateAt});

  factory _$_GitUserDetail.fromJson(Map<String, dynamic> json) =>
      _$$_GitUserDetailFromJson(json);

  @override
  @JsonKey(name: 'public_repos')
  final int? repos;
  @override
  @JsonKey(name: 'login')
  final String? name;
  @override
  @JsonKey(name: 'name')
  final String? realName;
  @override
  @JsonKey(name: 'avatar_url')
  final String? avatar;
  @override
  @JsonKey(name: 'company')
  final String? company;
  @override
  @JsonKey(name: 'email')
  final String? email;
  @override
  @JsonKey(name: 'followers')
  final int? followers;
  @override
  @JsonKey(name: 'location')
  final String? location;
  @override
  @JsonKey(name: 'created_at')
  final String? createdAt;
  @override
  @JsonKey(name: 'updated_at')
  final String? updateAt;

  @override
  String toString() {
    return 'GitUserDetail(repos: $repos, name: $name, realName: $realName, avatar: $avatar, company: $company, email: $email, followers: $followers, location: $location, createdAt: $createdAt, updateAt: $updateAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GitUserDetail &&
            (identical(other.repos, repos) || other.repos == repos) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.realName, realName) ||
                other.realName == realName) &&
            (identical(other.avatar, avatar) || other.avatar == avatar) &&
            (identical(other.company, company) || other.company == company) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.followers, followers) ||
                other.followers == followers) &&
            (identical(other.location, location) ||
                other.location == location) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updateAt, updateAt) ||
                other.updateAt == updateAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, repos, name, realName, avatar,
      company, email, followers, location, createdAt, updateAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GitUserDetailCopyWith<_$_GitUserDetail> get copyWith =>
      __$$_GitUserDetailCopyWithImpl<_$_GitUserDetail>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GitUserDetailToJson(
      this,
    );
  }
}

abstract class _GitUserDetail implements GitUserDetail {
  const factory _GitUserDetail(
      {@JsonKey(name: 'public_repos') final int? repos,
      @JsonKey(name: 'login') final String? name,
      @JsonKey(name: 'name') final String? realName,
      @JsonKey(name: 'avatar_url') final String? avatar,
      @JsonKey(name: 'company') final String? company,
      @JsonKey(name: 'email') final String? email,
      @JsonKey(name: 'followers') final int? followers,
      @JsonKey(name: 'location') final String? location,
      @JsonKey(name: 'created_at') final String? createdAt,
      @JsonKey(name: 'updated_at') final String? updateAt}) = _$_GitUserDetail;

  factory _GitUserDetail.fromJson(Map<String, dynamic> json) =
      _$_GitUserDetail.fromJson;

  @override
  @JsonKey(name: 'public_repos')
  int? get repos;
  @override
  @JsonKey(name: 'login')
  String? get name;
  @override
  @JsonKey(name: 'name')
  String? get realName;
  @override
  @JsonKey(name: 'avatar_url')
  String? get avatar;
  @override
  @JsonKey(name: 'company')
  String? get company;
  @override
  @JsonKey(name: 'email')
  String? get email;
  @override
  @JsonKey(name: 'followers')
  int? get followers;
  @override
  @JsonKey(name: 'location')
  String? get location;
  @override
  @JsonKey(name: 'created_at')
  String? get createdAt;
  @override
  @JsonKey(name: 'updated_at')
  String? get updateAt;
  @override
  @JsonKey(ignore: true)
  _$$_GitUserDetailCopyWith<_$_GitUserDetail> get copyWith =>
      throw _privateConstructorUsedError;
}
