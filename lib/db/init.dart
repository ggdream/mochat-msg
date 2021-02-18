import 'package:mochat_msg/db/db.dart';
import 'package:mochat_msg/meta/meta.dart';


Mongo db = null;

Future<void> init() async {
  db = Mongo(Meta.MongoURI);
  await db.init();
}
