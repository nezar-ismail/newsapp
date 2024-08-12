// ignore_for_file: camel_case_types

class servicsedata {
  final String? image;
  final String title;
  final String? subtitle;
  final String url;

  servicsedata({
    required this.url,
    required this.image,
    required this.title,
    required this.subtitle,
  });
  factory servicsedata.fromjson(json) {
    return servicsedata(
      url: json['url'],
      image: json['urlToImage'],
      title: json['title'],
      subtitle: json['description'],
    );
  }
}
