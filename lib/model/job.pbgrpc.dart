///
//  Generated code. Do not modify.
//  source: job.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'job.pb.dart' as $2;
export 'job.pb.dart';

class JobServiceClient extends $grpc.Client {
  static final _$createJob =
      $grpc.ClientMethod<$2.CreateJobReq, $2.CreateJobRes>(
          '/model.JobService/CreateJob',
          ($2.CreateJobReq value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $2.CreateJobRes.fromBuffer(value));
  static final _$readJob = $grpc.ClientMethod<$2.ReadJobReq, $2.ReadJobRes>(
      '/model.JobService/ReadJob',
      ($2.ReadJobReq value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $2.ReadJobRes.fromBuffer(value));
  static final _$updateJob =
      $grpc.ClientMethod<$2.UpdateJobReq, $2.UpdateJobRes>(
          '/model.JobService/UpdateJob',
          ($2.UpdateJobReq value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $2.UpdateJobRes.fromBuffer(value));
  static final _$deleteJob =
      $grpc.ClientMethod<$2.DeleteJobReq, $2.DeleteJobRes>(
          '/model.JobService/DeleteJob',
          ($2.DeleteJobReq value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $2.DeleteJobRes.fromBuffer(value));
  static final _$listJobs = $grpc.ClientMethod<$2.ListJobsReq, $2.ListJobsRes>(
      '/model.JobService/ListJobs',
      ($2.ListJobsReq value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $2.ListJobsRes.fromBuffer(value));

  JobServiceClient($grpc.ClientChannel channel, {$grpc.CallOptions options})
      : super(channel, options: options);

  $grpc.ResponseFuture<$2.CreateJobRes> createJob($2.CreateJobReq request,
      {$grpc.CallOptions options}) {
    final call = $createCall(_$createJob, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$2.ReadJobRes> readJob($2.ReadJobReq request,
      {$grpc.CallOptions options}) {
    final call = $createCall(_$readJob, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$2.UpdateJobRes> updateJob($2.UpdateJobReq request,
      {$grpc.CallOptions options}) {
    final call = $createCall(_$updateJob, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$2.DeleteJobRes> deleteJob($2.DeleteJobReq request,
      {$grpc.CallOptions options}) {
    final call = $createCall(_$deleteJob, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseStream<$2.ListJobsRes> listJobs($2.ListJobsReq request,
      {$grpc.CallOptions options}) {
    final call = $createCall(_$listJobs, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseStream(call);
  }
}

abstract class JobServiceBase extends $grpc.Service {
  $core.String get $name => 'model.JobService';

  JobServiceBase() {
    $addMethod($grpc.ServiceMethod<$2.CreateJobReq, $2.CreateJobRes>(
        'CreateJob',
        createJob_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $2.CreateJobReq.fromBuffer(value),
        ($2.CreateJobRes value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.ReadJobReq, $2.ReadJobRes>(
        'ReadJob',
        readJob_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $2.ReadJobReq.fromBuffer(value),
        ($2.ReadJobRes value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.UpdateJobReq, $2.UpdateJobRes>(
        'UpdateJob',
        updateJob_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $2.UpdateJobReq.fromBuffer(value),
        ($2.UpdateJobRes value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.DeleteJobReq, $2.DeleteJobRes>(
        'DeleteJob',
        deleteJob_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $2.DeleteJobReq.fromBuffer(value),
        ($2.DeleteJobRes value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.ListJobsReq, $2.ListJobsRes>(
        'ListJobs',
        listJobs_Pre,
        false,
        true,
        ($core.List<$core.int> value) => $2.ListJobsReq.fromBuffer(value),
        ($2.ListJobsRes value) => value.writeToBuffer()));
  }

  $async.Future<$2.CreateJobRes> createJob_Pre(
      $grpc.ServiceCall call, $async.Future<$2.CreateJobReq> request) async {
    return createJob(call, await request);
  }

  $async.Future<$2.ReadJobRes> readJob_Pre(
      $grpc.ServiceCall call, $async.Future<$2.ReadJobReq> request) async {
    return readJob(call, await request);
  }

  $async.Future<$2.UpdateJobRes> updateJob_Pre(
      $grpc.ServiceCall call, $async.Future<$2.UpdateJobReq> request) async {
    return updateJob(call, await request);
  }

  $async.Future<$2.DeleteJobRes> deleteJob_Pre(
      $grpc.ServiceCall call, $async.Future<$2.DeleteJobReq> request) async {
    return deleteJob(call, await request);
  }

  $async.Stream<$2.ListJobsRes> listJobs_Pre(
      $grpc.ServiceCall call, $async.Future<$2.ListJobsReq> request) async* {
    yield* listJobs(call, await request);
  }

  $async.Future<$2.CreateJobRes> createJob(
      $grpc.ServiceCall call, $2.CreateJobReq request);
  $async.Future<$2.ReadJobRes> readJob(
      $grpc.ServiceCall call, $2.ReadJobReq request);
  $async.Future<$2.UpdateJobRes> updateJob(
      $grpc.ServiceCall call, $2.UpdateJobReq request);
  $async.Future<$2.DeleteJobRes> deleteJob(
      $grpc.ServiceCall call, $2.DeleteJobReq request);
  $async.Stream<$2.ListJobsRes> listJobs(
      $grpc.ServiceCall call, $2.ListJobsReq request);
}
