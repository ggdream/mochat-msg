///
//  Generated code. Do not modify.
//  source: remote.proto
//
// @dart = 2.7
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'remote.pb.dart' as $0;
export 'remote.pb.dart';

class RemoteClient extends $grpc.Client {
  static final _$send = $grpc.ClientMethod<$0.Record, $0.Status>(
      '/Remote/Send',
      ($0.Record value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.Status.fromBuffer(value));
  static final _$query = $grpc.ClientMethod<$0.QueryMeta, $0.Data>(
      '/Remote/Query',
      ($0.QueryMeta value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.Data.fromBuffer(value));

  RemoteClient($grpc.ClientChannel channel,
      {$grpc.CallOptions options,
      $core.Iterable<$grpc.ClientInterceptor> interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$0.Status> send($0.Record request,
      {$grpc.CallOptions options}) {
    return $createUnaryCall(_$send, request, options: options);
  }

  $grpc.ResponseFuture<$0.Data> query($0.QueryMeta request,
      {$grpc.CallOptions options}) {
    return $createUnaryCall(_$query, request, options: options);
  }
}

abstract class RemoteServiceBase extends $grpc.Service {
  $core.String get $name => 'Remote';

  RemoteServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.Record, $0.Status>(
        'Send',
        send_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.Record.fromBuffer(value),
        ($0.Status value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.QueryMeta, $0.Data>(
        'Query',
        query_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.QueryMeta.fromBuffer(value),
        ($0.Data value) => value.writeToBuffer()));
  }

  $async.Future<$0.Status> send_Pre(
      $grpc.ServiceCall call, $async.Future<$0.Record> request) async {
    return send(call, await request);
  }

  $async.Future<$0.Data> query_Pre(
      $grpc.ServiceCall call, $async.Future<$0.QueryMeta> request) async {
    return query(call, await request);
  }

  $async.Future<$0.Status> send($grpc.ServiceCall call, $0.Record request);
  $async.Future<$0.Data> query($grpc.ServiceCall call, $0.QueryMeta request);
}
