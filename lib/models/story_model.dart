enum MediaType { image, video }

abstract class Media {
  final String url;
  final MediaType type;

  const Media({
    required this.url,
    required this.type,
  });
}

class VideoMedia extends Media {
  const VideoMedia({
    required String url,
  }) : super(
          url: url,
          type: MediaType.video,
        );
}

class ImageMedia extends Media {
  const ImageMedia({
    required String url,
  }) : super(
          url: url,
          type: MediaType.image,
        );
}

class Story {
  final Media media;
  final int userId;
  bool isSeen;

  Story({
    required this.media,
    required this.userId,
    this.isSeen = false,
  });
}
