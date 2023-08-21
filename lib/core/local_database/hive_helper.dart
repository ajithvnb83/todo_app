import 'dart:io';

import 'package:hive/hive.dart';
import 'package:path_provider/path_provider.dart';

class HiveDataBaseHelper {
  final String todoData = "todoData";

  HiveDataBaseHelper._privateConstructor();
  static final HiveDataBaseHelper instance =
      HiveDataBaseHelper._privateConstructor();
  static BoxCollection? _collection;

  Future<BoxCollection> get collection async {
    if (_collection != null) {
      return _collection!;
    }

    Directory documentDirectory = await getApplicationCacheDirectory();
    _collection = await BoxCollection.open('/todoApp', {todoData},
        path: documentDirectory.path);
    return _collection!;
  }

  Future<CollectionBox> get todoBox async {
    BoxCollection boxCollection = await collection;
    return await boxCollection.openBox(todoData);
  }
}
