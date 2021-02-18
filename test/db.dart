import 'package:mochat_msg/db/db.dart';
import 'package:mochat_msg/meta/meta.dart';


Future<void> main() async {
  var db = Mongo(Meta.MongoURI);
  await db.init();

  await db.insert({"code": 0});

  await db.stop();
}
