import 'dart:io';

import 'package:path_provider/path_provider.dart';

import "package:hive/hive.dart";

Future<void> initHive()async{
  const boxName = "Ravshanbek";
  Directory directory = await getApplicationCacheDirectory();
  Hive.init(directory.path);
  final _box = await Hive.openBox<dynamic>(boxName);
}