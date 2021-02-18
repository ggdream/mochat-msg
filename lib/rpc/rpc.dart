import 'package:grpc/grpc.dart';
import 'package:grpc/src/server/call.dart';

import 'remote.pbgrpc.dart';


class Remote extends RemoteServiceBase {
  @override
  Future<Data> query(ServiceCall call, QueryMeta q) async {
    print('${q.from}, ${q.to}, ${q.offset}, ${q.start}');
    return Data(code: 0, message: "success", records: <Record>[]);
  }

  @override
  Future<Status> send(ServiceCall call, Record r) async {
    print('${r.from}, ${r.to}, ${r.id}, ${r.time.toString()}');
    return Status(code: 0, message: "hello");
  }
}


Future<void> app() async {
  final server = Server([Remote()]);

  await server.serve(port: 9999);
  print('listening...');
}
