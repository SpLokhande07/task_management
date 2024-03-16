import 'package:freezed_annotation/freezed_annotation.dart';
part 'auth.freezed.dart';
part 'auth.g.dart';

@freezed
class UserAuth with _$UserAuth {
  factory UserAuth({
    @Default(false) bool isSignedIn,
    @Default("") uid,
    String? email,
    String? photoURL,
    String? displayName,
  }) = _UserAuth;

  factory UserAuth.fromJson(Map<String, dynamic> json) =>
      _$UserAuthFromJson(json);

  factory UserAuth.initial() => UserAuth();

  // Create nethod to take UserCredentials as parameter and populate data to UserAuth model
}
