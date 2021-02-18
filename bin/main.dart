import 'package:mochat_msg/db/init.dart';
import 'package:mochat_msg/rpc/rpc.dart';



Future<void> main() async {
  await init();
  await app();
}
