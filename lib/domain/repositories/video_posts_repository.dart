import 'package:vertical_videos/domain/entities/video_post.dart';

abstract class VideoPostsRepository {
  Future<List<VideoPost>> getTrendingVideosByPage(int page);
  Future<List<VideoPost>> getFavoriteVideosByUser(int userId);
}
