import 'package:vertical_videos/domain/datasources/video_posts_datasource.dart';
import 'package:vertical_videos/domain/entities/video_post.dart';
import 'package:vertical_videos/infrastructure/models/loca_video_model.dart';
import 'package:vertical_videos/shared/data/local_video_posts.dart';

class LocalVideoDatasource implements VideoPostsDatasource {
  @override
  Future<List<VideoPost>> getFavoriteVideosByUser(int userId) {
    // TODO: implement getFavoriteVideosByUser
    throw UnimplementedError();
  }

  @override
  Future<List<VideoPost>> getTrendingVideosByPage(int page) async {
    await Future.delayed(const Duration(seconds: 2));

    final List<VideoPost> newVideos = videoPosts
        .map((video) => LocalVideoModel.fromJson(video).toVideoPostEntity())
        .toList();

    return newVideos;
  }
}
