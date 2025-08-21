
import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_user_model.freezed.dart';
part 'app_user_model.g.dart';

@freezed
abstract class AppUser with _$AppUser {
  factory AppUser(
      {@JsonKey(name: 'id') @Default('') String userId,
      @JsonKey(name: 'email') @Default('') String email,
      @JsonKey(name: 'firstName') @Default('') String firstName,
      @JsonKey(name: 'lastName') @Default('') String lastName,
      @JsonKey(name: 'phoneNumber') @Default('') String phoneNumber,
      @JsonKey(name: 'timestamp') @Default('') String timestamp,
      
      }) = _AppUser;

  factory AppUser.fromJson(Map<String, dynamic> json) => _$AppUserFromJson(json);
}

