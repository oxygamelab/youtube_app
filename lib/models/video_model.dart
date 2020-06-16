class Video {
  final String id;
  final String title;
  final String thumbnailUrl;
  final String channelTitle;

  Video({
    this.id,
    this.title,
    this.thumbnailUrl,
    this.channelTitle,
  });

  factory Video.fromMap(Map<String, dynamic> video) {
    return Video(
      id: video['snippet']['resourceId']['videoId'],
      title: video['snippet']['title'],
      thumbnailUrl: video['snippet']['thumbnails']['high']['url'],
      channelTitle: video['snippet']['channelTitle'],
    );
  }
}
