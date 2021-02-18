import 'package:grpc/grpc.dart';
import 'package:grpc/src/server/call.dart';

import 'package:mochat_msg/db/init.dart';
import 'package:mochat_msg/model/msg.dart';
import 'package:mochat_msg/rpc/remote.pbgrpc.dart';


class Remote extends RemoteServiceBase {
  @override
  Future<Data> query(ServiceCall call, QueryMeta q) async {
    print('${q.from}, ${q.to}, ${q.offset}, ${q.start}');
    return Data(code: 0, message: "success", records: <Record>[]);
  }

  @override
  Future<Status> send(ServiceCall call, Record r) async {

    var data = Recorder(r.id, r.from, r.to, r.time);
    var res = await db.insert(data.toMap());
    print(res);
    return Status(code: 0, message: "hello");
  }
}


Future<void> app() async {
  final server = Server([Remote()]);

  await server.serve(port: 9999);
  print('listening...');
}
