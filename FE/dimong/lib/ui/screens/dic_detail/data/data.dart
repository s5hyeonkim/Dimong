import 'package:dimong/core/domain/dino.dart';
import 'package:dio/dio.dart';
import 'dart:convert';
import 'package:dimong/core/api/api.dart';
import 'package:dimong/core/utils/api_routes.dart';

class DetailApiClient {
  final dio = DataServerDio.instance();

  Future<SendInfoResponse> sendId(int? id) async {
    try {
      final response = await dio.get(Paths.dinoDetail, queryParameters: {"dinosaurId": id});
      print("when response in data: $response");
      print("status: ${response.statusCode}");
      print(response.runtimeType);
      final dinosaursJson =  response.data;
      print(dinosaursJson);
      final sendInfoResponse = dinosaursJson
          .map((dinosaurJson) => SendInfoResponse.fromJson(dinosaurJson))
          .toList();
      return sendInfoResponse;
    } catch (e) {
      // Handle the error as needed
      throw e;
    }
  }
}