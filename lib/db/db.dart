import 'package:mongo_dart/mongo_dart.dart';


class Mongo {
  final String uri;
  static const collName = 'msg';
  Db db = null;
  DbCollection collection = null;


  Mongo(this.uri);

  Future<void> init() async {
    db = await Db.create(uri);
    await db.open();

    collection = db.collection(collName);
  }

  Future<dynamic> stop() async => db.close();

  Future<Map<String, dynamic>> insert(Map<String, dynamic> data) async {
    return await collection.insert(data);
  }
}
