import 'package:mochat_msg/rpc/google/protobuf/timestamp.pb.dart';
import 'package:mochat_msg/rpc/remote.pbgrpc.dart' show Record;


class Dataer {
  final int code;
  final String message;
  final List<Record> records;

  Dataer(this.code, this.message, this.records);

  Map<String, dynamic> toMap() {
    var map = Map<String, dynamic>();
    map['code'] = code;
    map['message'] = message;
    map['records'] = records;

    return map;
  }
}


class Recorder {
  final String id;
  final String from;
  final String to;
  final Timestamp time;

  Recorder(this.id, this.from, this.to, this.time);

  Map<String, dynamic> toMap() {
    var map = Map<String, dynamic>();
    map['id'] = id;
    map['from'] = from;
    map['to'] = to;
    map['time'] = DateTime.now();
    return map;
  }
}
