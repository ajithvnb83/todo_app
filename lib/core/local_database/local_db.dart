import 'package:hive/hive.dart';

class LocalDB {
  final CollectionBox box;
  LocalDB({required this.box});

  Future<bool> storeValues(
      {required String key, required dynamic value}) async {
    try {
      await box.put(key, value);
      return true;
    } catch (e) {
      return false;
    }
  }

  Future<dynamic> getValues({required String key}) async {
    try {
      if ((await box.getAllKeys()).contains(key)) {
        return await box.get(key);
      }
      return false;
    } catch (e) {
      return false;
    }
  }

  Future<bool> deleteValues({required String key}) async {
    try {
      await box.delete(key);
      return true;
    } catch (e) {
      return false;
    }
  }
}
