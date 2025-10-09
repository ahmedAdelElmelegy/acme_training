import 'dart:convert';
import 'dart:io';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:path_provider/path_provider.dart';

class LocalStorageHelper {
  /// Save Map in SharedPreferences
  static Future<void> saveMapToPrefs(Map<String, dynamic> data) async {
    final prefs = await SharedPreferences.getInstance();
    final jsonString = json.encode(data);
    await prefs.setString('localization_data', jsonString);
    print('✅ Saved map to SharedPreferences');
  }

  /// Get Map from SharedPreferences
  static Future<Map<String, dynamic>?> getMapFromPrefs() async {
    final prefs = await SharedPreferences.getInstance();
    final jsonString = prefs.getString('localization_data');
    if (jsonString == null) return null;
    return json.decode(jsonString);
  }

  /// Save same Map to JSON file in app directory (not assets)
  static Future<void> saveMapToJsonFile() async {
    final data = await getMapFromPrefs();
    if (data == null) {
      print('⚠️ No data found in SharedPreferences');
      return;
    }

    final dir = await getApplicationDocumentsDirectory();
    final file = File('${dir.path}/en.json');

    // delete old file if exists
    if (await file.exists()) {
      await file.delete();
    }

    await file.writeAsString(json.encode(data));
    print('✅ JSON file saved at: ${file.path}');
  }
}
