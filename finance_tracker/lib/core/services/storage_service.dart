import 'package:finance_tracker/exports.dart';
import 'package:hive_flutter/adapters.dart';

@singleton
class StorageService {
  static late Box _box;

  static Future<void> init() async {
    await Hive.initFlutter();
    _box = await Hive.openBox("storageBox");
  }

  Future<void> setTheme(bool isLightMode) async {
    await _box.put(_StorageKeys.themeMode, isLightMode);
  }

  Future<void> setOnboarding(bool value) async {
    await _box.put(_StorageKeys.onBoarding, value);
  }

  Future<bool> getTheme() async {
    return await _box.get(_StorageKeys.themeMode, defaultValue: true);
  }

  Future<bool> getOnBoarding() async {
    return await _box.get(_StorageKeys.onBoarding, defaultValue: false);
  }

  Future<void> clearAll() async {
    await _box.clear();
  }
}

abstract class _StorageKeys {
  static const String themeMode = 'themeMode';
  static const String onBoarding = 'onBoarding';
}
