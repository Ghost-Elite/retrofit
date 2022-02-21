
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:dio/dio.dart';
import '../app_details_response.dart';
import '../appinfo.dart';
import '../data_response.dart';
import '../group_response.dart';
import '../player_url.dart';
import '../vod_response.dart';
import '/constants.dart';

part 'apiService.g.dart';

@RestApi(baseUrl: "https://tveapi.acan.group/myapiv2/")
abstract class RestClient {
  factory RestClient(Dio dio, {String baseUrl}) = _RestClient;

  @GET("appdetails/$groupName/json")
  Future<AppDetailsResponse> getAllData();

  @GET("")
  Future<DataResponse> getData();

  @GET("")
  Future<GroupResponse> getGroup();

  @GET("")
  Future<VODResponse> getVideoData();

  @GET("")
  Future<PlayerUrl> getPlayerUrl();

  @GET("")
  Future<AppInfo> getAppInfo();

 /* @GET("guidetv/$groupName")
  Future<List<GuideChannelResponse>> getGuideTVChannel();
  @GET("guidetvchannels/$groupName/{day}/{channelID}/json")
  Future<GuideDataResponse> getGuideData(
      @Path("channelID") String channelID,
      @Path("day") String day,
      );*/
}
