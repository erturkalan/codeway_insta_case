import 'models/story_model.dart';
import 'models/user_model.dart';

List<User> users = [
  User(
    id: 0,
    name: "erturkalan",
    profileImageUrl: "https://i.picsum.photos/id/1003/1181/1772.jpg?hmac=oN9fHMXiqe9Zq2RM6XT-RVZkojgPnECWwyEF1RvvTZk",
    storyGroup: [],
  ),
  User(
    id: 1,
    name: "AhmetYılmaz",
    profileImageUrl: "https://i.picsum.photos/id/1012/3973/2639.jpg?hmac=s2eybz51lnKy2ZHkE2wsgc6S81fVD1W2NKYOSh8bzDc",
    storyGroup: [],
  ),
  User(
    id: 2,
    name: "Selinn",
    profileImageUrl: "https://i.picsum.photos/id/1027/2848/4272.jpg?hmac=EAR-f6uEqI1iZJjB6-NzoZTnmaX0oI0th3z8Y78UpKM",
    storyGroup: [],
  ),
  User(
    id: 3,
    name: "Gözdeee",
    profileImageUrl: "https://i.picsum.photos/id/1039/6945/4635.jpg?hmac=tdgHDygif2JPCTFMM7KcuOAbwEU11aucKJ8eWcGD9_Q",
    storyGroup: [],
  ),
  User(
    id: 4,
    name: "Kerem12",
    profileImageUrl: "https://i.picsum.photos/id/1062/5092/3395.jpg?hmac=o9m7qeU51uOLfXvepXcTrk2ZPiSBJEkiiOp-Qvxja-k",
    storyGroup: [],
  ),
  User(
    id: 5,
    name: "justMerve",
    profileImageUrl: "https://i.picsum.photos/id/20/3670/2462.jpg?hmac=CmQ0ln-k5ZqkdtLvVO23LjVAEabZQx2wOaT4pyeG10I",
    storyGroup: [],
  ),
  User(
    id: 6,
    name: "nihan_hür",
    profileImageUrl: "https://i.picsum.photos/id/237/3500/2095.jpg?hmac=y2n_cflHFKpQwLOL1SSCtVDqL8NmOnBzEW7LYKZ-z_o",
    storyGroup: [],
  ),
];

List<Story> stories = [
  Story(
    media: const ImageMedia(
      url: "https://i.picsum.photos/id/101/2621/1747.jpg?hmac=cu15YGotS0gIYdBbR1he5NtBLZAAY6aIY5AbORRAngs",
    ),
    userId: 0,
  ),
  Story(
    media: const VideoMedia(
      url: "https://storage.googleapis.com/gtv-videos-bucket/sample/ForBiggerMeltdowns.mp4",
    ),
    userId: 0,
  ),
  Story(
    media: const VideoMedia(
      url: "https://storage.googleapis.com/gtv-videos-bucket/sample/ForBiggerFun.mp4",
    ),
    userId: 0,
  ),
  Story(
    media: const ImageMedia(
      url: "https://i.picsum.photos/id/1004/5616/3744.jpg?hmac=Or7EJnz-ky5bsKa9_frdDcDCR9VhCP8kMnbZV6-WOrY",
    ),
    userId: 0,
  ),
  Story(
    media: const ImageMedia(
      url: "https://i.picsum.photos/id/239/1739/1391.jpg?hmac=-Zh20gMdOuV7tHr4wGEUqACAxdvb7gkDlKKS9MIE1TU",
    ),
    userId: 1,
  ),
  Story(
    media: const ImageMedia(
      url: "https://i.picsum.photos/id/244/4288/2848.jpg?hmac=R6j9PBP4aBk2vcEIoOPU4R_nuknizryn2Vq8GGtWTrM",
    ),
    userId: 2,
  ),
  Story(
    media: const VideoMedia(
      url: "https://storage.googleapis.com/gtv-videos-bucket/sample/ForBiggerBlazes.mp4",
    ),
    userId: 2,
  ),
  Story(
    media: const VideoMedia(
      url: "https://storage.googleapis.com/gtv-videos-bucket/sample/ForBiggerFun.mp4",
    ),
    userId: 3,
  ),
  Story(
    media: const ImageMedia(
      url: "https://i.picsum.photos/id/292/3852/2556.jpg?hmac=cPYEh0I48Xpek2DPFLxTBhlZnKVhQCJsbprR-Awl9lo",
    ),
    userId: 4,
  ),
  Story(
    media: const ImageMedia(
      url: "https://i.picsum.photos/id/297/5781/3728.jpg?hmac=4HGWZ3nklfEUGnppH8pYRgsAxXRPI65Wk5EtF5uVxuM",
    ),
    userId: 5,
  ),
  Story(
    media: const ImageMedia(
      url: "https://i.picsum.photos/id/294/3753/2309.jpg?hmac=yB4obvMipvgd-_0fpi9MbFKF4b0EDPf59CgjeGWgugE",
    ),
    userId: 5,
  ),
  Story(
    media: const ImageMedia(
      url: "https://i.picsum.photos/id/318/3264/2448.jpg?hmac=zkYZ29-Ww_A4O_kZ3gjlpFQuEYELWgeM6aI_CMG01BU",
    ),
    userId: 5,
  ),
  Story(
    media: const ImageMedia(
      url: "https://i.picsum.photos/id/348/3872/2592.jpg?hmac=I51bqSjuTk6zKHgtJDpMLY3kSSfAXdB8AHGmWf-Eq1Q",
    ),
    userId: 5,
  ),
  Story(
    media: const VideoMedia(
      url: "https://storage.googleapis.com/gtv-videos-bucket/sample/BigBuckBunny.mp4",
    ),
    userId: 6,
  ),
];
