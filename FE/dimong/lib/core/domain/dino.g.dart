// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dino.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SendPeriodResponse _$SendPeriodResponseFromJson(Map<String, dynamic> json) =>
    SendPeriodResponse(
      dinosaurId: json['dinosaurId'] as int?,
      dinosaurImageUrl: json['dinosaurImageUrl'] as String?,
      dinosaurName: json['dinosaurName'] as String?,
      dinosaurTaste: json['dinosaurTaste'] as String?,
    );

Map<String, dynamic> _$SendPeriodResponseToJson(SendPeriodResponse instance) =>
    <String, dynamic>{
      'dinosaurId': instance.dinosaurId,
      'dinosaurImageUrl': instance.dinosaurImageUrl,
      'dinosaurName': instance.dinosaurName,
      'dinosaurTaste': instance.dinosaurTaste,
    };

SendInfoResponse _$SendInfoResponseFromJson(Map<String, dynamic> json) =>
    SendInfoResponse(
      dinosaurId: json['dinosaurId'] as int,
      dinosaurImageUrl: json['dinosaurImageUrl'] as String,
      dinosaurAudioUrl: json['dinosaurAudioUrl'] as String,
      dinosaurName: json['dinosaurName'] as String,
      dinosaurHabitat: json['dinosaurHabitat'] as String,
      dinosaurTaste: json['dinosaurTaste'] as String,
      geologicAge: json['geologicAge'] as String,
      dinosaurWeight: json['dinosaurWeight'] as String,
      dinosaurLength: json['dinosaurLength'] as String,
      dinosaurNickname: json['dinosaurNickname'] as String,
      dinosaurIntellect: json['dinosaurIntellect'] as int,
      dinosaurAggression: json['dinosaurAggression'] as int,
      dinosaurCharacteristic: json['dinosaurCharacteristic'] as String,
    );

Map<String, dynamic> _$SendInfoResponseToJson(SendInfoResponse instance) =>
    <String, dynamic>{
      'dinosaurId': instance.dinosaurId,
      'dinosaurImageUrl': instance.dinosaurImageUrl,
      'dinosaurAudioUrl': instance.dinosaurAudioUrl,
      'dinosaurName': instance.dinosaurName,
      'dinosaurHabitat': instance.dinosaurHabitat,
      'dinosaurTaste': instance.dinosaurTaste,
      'dinosaurCharacteristic': instance.dinosaurCharacteristic,
      'geologicAge': instance.geologicAge,
      'dinosaurWeight': instance.dinosaurWeight,
      'dinosaurLength': instance.dinosaurLength,
      'dinosaurIntellect': instance.dinosaurIntellect,
      'dinosaurAggression': instance.dinosaurAggression,
      'dinosaurNickname': instance.dinosaurNickname,
    };

SendImageResponse _$SendImageResponseFromJson(Map<String, dynamic> json) =>
    SendImageResponse(
      dinosaurId: json['dinosaurId'] as int?,
      dinosaurName: json['dinosaurName'] as String?,
    );

Map<String, dynamic> _$SendImageResponseToJson(SendImageResponse instance) =>
    <String, dynamic>{
      'dinosaurId': instance.dinosaurId,
      'dinosaurName': instance.dinosaurName,
    };

SendDrawingResponse _$SendDrawingResponseFromJson(Map<String, dynamic> json) =>
    SendDrawingResponse(
      recommendation1: json['recommendation1'],
      recommendation2: json['recommendation2'],
      recommendation3: json['recommendation3'],
    );

Map<String, dynamic> _$SendDrawingResponseToJson(
        SendDrawingResponse instance) =>
    <String, dynamic>{
      'recommendation1': instance.recommendation1,
      'recommendation2': instance.recommendation2,
      'recommendation3': instance.recommendation3,
    };

SendLoginResponse _$SendLoginResponseFromJson(Map<String, dynamic> json) =>
    SendLoginResponse(
      email: json['email'] as String,
      fullName: json['fullName'] as String,
      profileImageUrl: json['profileImageUrl'] as String,
    );

Map<String, dynamic> _$SendLoginResponseToJson(SendLoginResponse instance) =>
    <String, dynamic>{
      'email': instance.email,
      'fullName': instance.fullName,
      'profileImageUrl': instance.profileImageUrl,
    };
