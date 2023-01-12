import 'package:shared_preferences/shared_preferences.dart';

enum SharedPreferencesKey { photo }

class LocalSharedPreferences {
  final Future<SharedPreferences> _sharedPreferences =
      SharedPreferences.getInstance();

  Future<bool> savePhoto(String photo) async {
    var preferences = await _sharedPreferences;
    return preferences.setString(SharedPreferencesKey.photo.name, photo);
  }

  Future<String?> getPhoto() async {
    var preferences = await _sharedPreferences;
    return preferences.getString(SharedPreferencesKey.photo.name);
  }
}
