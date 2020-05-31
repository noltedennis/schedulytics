///
//  Generated code. Do not modify.
//  source: job.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class Job extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('Job', package: const $pb.PackageName('model'), createEmptyInstance: create)
    ..aOS(1, 'id')
    ..aOS(2, 'name')
    ..aOS(3, 'description')
    ..aOS(4, 'owner')
    ..hasRequiredFields = false
  ;

  Job._() : super();
  factory Job() => create();
  factory Job.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Job.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  Job clone() => Job()..mergeFromMessage(this);
  Job copyWith(void Function(Job) updates) => super.copyWith((message) => updates(message as Job));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Job create() => Job._();
  Job createEmptyInstance() => create();
  static $pb.PbList<Job> createRepeated() => $pb.PbList<Job>();
  @$core.pragma('dart2js:noInline')
  static Job getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Job>(create);
  static Job _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get name => $_getSZ(1);
  @$pb.TagNumber(2)
  set name($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasName() => $_has(1);
  @$pb.TagNumber(2)
  void clearName() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get description => $_getSZ(2);
  @$pb.TagNumber(3)
  set description($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasDescription() => $_has(2);
  @$pb.TagNumber(3)
  void clearDescription() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get owner => $_getSZ(3);
  @$pb.TagNumber(4)
  set owner($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasOwner() => $_has(3);
  @$pb.TagNumber(4)
  void clearOwner() => clearField(4);
}

class CreateJobReq extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('CreateJobReq', package: const $pb.PackageName('model'), createEmptyInstance: create)
    ..aOM<Job>(1, 'job', subBuilder: Job.create)
    ..hasRequiredFields = false
  ;

  CreateJobReq._() : super();
  factory CreateJobReq() => create();
  factory CreateJobReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CreateJobReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  CreateJobReq clone() => CreateJobReq()..mergeFromMessage(this);
  CreateJobReq copyWith(void Function(CreateJobReq) updates) => super.copyWith((message) => updates(message as CreateJobReq));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static CreateJobReq create() => CreateJobReq._();
  CreateJobReq createEmptyInstance() => create();
  static $pb.PbList<CreateJobReq> createRepeated() => $pb.PbList<CreateJobReq>();
  @$core.pragma('dart2js:noInline')
  static CreateJobReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CreateJobReq>(create);
  static CreateJobReq _defaultInstance;

  @$pb.TagNumber(1)
  Job get job => $_getN(0);
  @$pb.TagNumber(1)
  set job(Job v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasJob() => $_has(0);
  @$pb.TagNumber(1)
  void clearJob() => clearField(1);
  @$pb.TagNumber(1)
  Job ensureJob() => $_ensure(0);
}

class CreateJobRes extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('CreateJobRes', package: const $pb.PackageName('model'), createEmptyInstance: create)
    ..aOM<Job>(1, 'job', subBuilder: Job.create)
    ..hasRequiredFields = false
  ;

  CreateJobRes._() : super();
  factory CreateJobRes() => create();
  factory CreateJobRes.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CreateJobRes.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  CreateJobRes clone() => CreateJobRes()..mergeFromMessage(this);
  CreateJobRes copyWith(void Function(CreateJobRes) updates) => super.copyWith((message) => updates(message as CreateJobRes));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static CreateJobRes create() => CreateJobRes._();
  CreateJobRes createEmptyInstance() => create();
  static $pb.PbList<CreateJobRes> createRepeated() => $pb.PbList<CreateJobRes>();
  @$core.pragma('dart2js:noInline')
  static CreateJobRes getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CreateJobRes>(create);
  static CreateJobRes _defaultInstance;

  @$pb.TagNumber(1)
  Job get job => $_getN(0);
  @$pb.TagNumber(1)
  set job(Job v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasJob() => $_has(0);
  @$pb.TagNumber(1)
  void clearJob() => clearField(1);
  @$pb.TagNumber(1)
  Job ensureJob() => $_ensure(0);
}

class UpdateJobReq extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('UpdateJobReq', package: const $pb.PackageName('model'), createEmptyInstance: create)
    ..aOM<Job>(1, 'job', subBuilder: Job.create)
    ..hasRequiredFields = false
  ;

  UpdateJobReq._() : super();
  factory UpdateJobReq() => create();
  factory UpdateJobReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UpdateJobReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  UpdateJobReq clone() => UpdateJobReq()..mergeFromMessage(this);
  UpdateJobReq copyWith(void Function(UpdateJobReq) updates) => super.copyWith((message) => updates(message as UpdateJobReq));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static UpdateJobReq create() => UpdateJobReq._();
  UpdateJobReq createEmptyInstance() => create();
  static $pb.PbList<UpdateJobReq> createRepeated() => $pb.PbList<UpdateJobReq>();
  @$core.pragma('dart2js:noInline')
  static UpdateJobReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UpdateJobReq>(create);
  static UpdateJobReq _defaultInstance;

  @$pb.TagNumber(1)
  Job get job => $_getN(0);
  @$pb.TagNumber(1)
  set job(Job v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasJob() => $_has(0);
  @$pb.TagNumber(1)
  void clearJob() => clearField(1);
  @$pb.TagNumber(1)
  Job ensureJob() => $_ensure(0);
}

class UpdateJobRes extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('UpdateJobRes', package: const $pb.PackageName('model'), createEmptyInstance: create)
    ..aOM<Job>(1, 'job', subBuilder: Job.create)
    ..hasRequiredFields = false
  ;

  UpdateJobRes._() : super();
  factory UpdateJobRes() => create();
  factory UpdateJobRes.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UpdateJobRes.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  UpdateJobRes clone() => UpdateJobRes()..mergeFromMessage(this);
  UpdateJobRes copyWith(void Function(UpdateJobRes) updates) => super.copyWith((message) => updates(message as UpdateJobRes));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static UpdateJobRes create() => UpdateJobRes._();
  UpdateJobRes createEmptyInstance() => create();
  static $pb.PbList<UpdateJobRes> createRepeated() => $pb.PbList<UpdateJobRes>();
  @$core.pragma('dart2js:noInline')
  static UpdateJobRes getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UpdateJobRes>(create);
  static UpdateJobRes _defaultInstance;

  @$pb.TagNumber(1)
  Job get job => $_getN(0);
  @$pb.TagNumber(1)
  set job(Job v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasJob() => $_has(0);
  @$pb.TagNumber(1)
  void clearJob() => clearField(1);
  @$pb.TagNumber(1)
  Job ensureJob() => $_ensure(0);
}

class ReadJobReq extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('ReadJobReq', package: const $pb.PackageName('model'), createEmptyInstance: create)
    ..aOS(1, 'id')
    ..hasRequiredFields = false
  ;

  ReadJobReq._() : super();
  factory ReadJobReq() => create();
  factory ReadJobReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ReadJobReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  ReadJobReq clone() => ReadJobReq()..mergeFromMessage(this);
  ReadJobReq copyWith(void Function(ReadJobReq) updates) => super.copyWith((message) => updates(message as ReadJobReq));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ReadJobReq create() => ReadJobReq._();
  ReadJobReq createEmptyInstance() => create();
  static $pb.PbList<ReadJobReq> createRepeated() => $pb.PbList<ReadJobReq>();
  @$core.pragma('dart2js:noInline')
  static ReadJobReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ReadJobReq>(create);
  static ReadJobReq _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);
}

class ReadJobRes extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('ReadJobRes', package: const $pb.PackageName('model'), createEmptyInstance: create)
    ..aOM<Job>(1, 'job', subBuilder: Job.create)
    ..hasRequiredFields = false
  ;

  ReadJobRes._() : super();
  factory ReadJobRes() => create();
  factory ReadJobRes.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ReadJobRes.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  ReadJobRes clone() => ReadJobRes()..mergeFromMessage(this);
  ReadJobRes copyWith(void Function(ReadJobRes) updates) => super.copyWith((message) => updates(message as ReadJobRes));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ReadJobRes create() => ReadJobRes._();
  ReadJobRes createEmptyInstance() => create();
  static $pb.PbList<ReadJobRes> createRepeated() => $pb.PbList<ReadJobRes>();
  @$core.pragma('dart2js:noInline')
  static ReadJobRes getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ReadJobRes>(create);
  static ReadJobRes _defaultInstance;

  @$pb.TagNumber(1)
  Job get job => $_getN(0);
  @$pb.TagNumber(1)
  set job(Job v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasJob() => $_has(0);
  @$pb.TagNumber(1)
  void clearJob() => clearField(1);
  @$pb.TagNumber(1)
  Job ensureJob() => $_ensure(0);
}

class DeleteJobReq extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('DeleteJobReq', package: const $pb.PackageName('model'), createEmptyInstance: create)
    ..aOS(1, 'id')
    ..hasRequiredFields = false
  ;

  DeleteJobReq._() : super();
  factory DeleteJobReq() => create();
  factory DeleteJobReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DeleteJobReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  DeleteJobReq clone() => DeleteJobReq()..mergeFromMessage(this);
  DeleteJobReq copyWith(void Function(DeleteJobReq) updates) => super.copyWith((message) => updates(message as DeleteJobReq));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static DeleteJobReq create() => DeleteJobReq._();
  DeleteJobReq createEmptyInstance() => create();
  static $pb.PbList<DeleteJobReq> createRepeated() => $pb.PbList<DeleteJobReq>();
  @$core.pragma('dart2js:noInline')
  static DeleteJobReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DeleteJobReq>(create);
  static DeleteJobReq _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);
}

class DeleteJobRes extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('DeleteJobRes', package: const $pb.PackageName('model'), createEmptyInstance: create)
    ..aOB(1, 'success')
    ..hasRequiredFields = false
  ;

  DeleteJobRes._() : super();
  factory DeleteJobRes() => create();
  factory DeleteJobRes.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DeleteJobRes.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  DeleteJobRes clone() => DeleteJobRes()..mergeFromMessage(this);
  DeleteJobRes copyWith(void Function(DeleteJobRes) updates) => super.copyWith((message) => updates(message as DeleteJobRes));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static DeleteJobRes create() => DeleteJobRes._();
  DeleteJobRes createEmptyInstance() => create();
  static $pb.PbList<DeleteJobRes> createRepeated() => $pb.PbList<DeleteJobRes>();
  @$core.pragma('dart2js:noInline')
  static DeleteJobRes getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DeleteJobRes>(create);
  static DeleteJobRes _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get success => $_getBF(0);
  @$pb.TagNumber(1)
  set success($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSuccess() => $_has(0);
  @$pb.TagNumber(1)
  void clearSuccess() => clearField(1);
}

class ListJobsReq extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('ListJobsReq', package: const $pb.PackageName('model'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  ListJobsReq._() : super();
  factory ListJobsReq() => create();
  factory ListJobsReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ListJobsReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  ListJobsReq clone() => ListJobsReq()..mergeFromMessage(this);
  ListJobsReq copyWith(void Function(ListJobsReq) updates) => super.copyWith((message) => updates(message as ListJobsReq));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ListJobsReq create() => ListJobsReq._();
  ListJobsReq createEmptyInstance() => create();
  static $pb.PbList<ListJobsReq> createRepeated() => $pb.PbList<ListJobsReq>();
  @$core.pragma('dart2js:noInline')
  static ListJobsReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ListJobsReq>(create);
  static ListJobsReq _defaultInstance;
}

class ListJobsRes extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('ListJobsRes', package: const $pb.PackageName('model'), createEmptyInstance: create)
    ..aOM<Job>(1, 'job', subBuilder: Job.create)
    ..hasRequiredFields = false
  ;

  ListJobsRes._() : super();
  factory ListJobsRes() => create();
  factory ListJobsRes.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ListJobsRes.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  ListJobsRes clone() => ListJobsRes()..mergeFromMessage(this);
  ListJobsRes copyWith(void Function(ListJobsRes) updates) => super.copyWith((message) => updates(message as ListJobsRes));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ListJobsRes create() => ListJobsRes._();
  ListJobsRes createEmptyInstance() => create();
  static $pb.PbList<ListJobsRes> createRepeated() => $pb.PbList<ListJobsRes>();
  @$core.pragma('dart2js:noInline')
  static ListJobsRes getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ListJobsRes>(create);
  static ListJobsRes _defaultInstance;

  @$pb.TagNumber(1)
  Job get job => $_getN(0);
  @$pb.TagNumber(1)
  set job(Job v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasJob() => $_has(0);
  @$pb.TagNumber(1)
  void clearJob() => clearField(1);
  @$pb.TagNumber(1)
  Job ensureJob() => $_ensure(0);
}

