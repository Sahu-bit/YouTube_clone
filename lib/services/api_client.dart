import 'package:dio/dio.dart';

class ApiClient{
  final Dio _dio = Dio();
  Future<dynamic> getVideos() async {
    // ignore: constant_identifier_names
    const URL = 'https://youtube.googleapis.com/youtube/v3/videos?part=snippet%2CcontentDetails%2Cstatistics%2Cplayer&chart=mostPopular&maxResults=500&regionCode=IN&key=AIzaSyANk6cdzxnjKQJCRZ3uOv-cCTm4Tlq3YlU';
  final Response response = await _dio.get(URL);
  //print(response.data);
  //print(response.data.runtimeType);
  return response.data['items'];
  }
}