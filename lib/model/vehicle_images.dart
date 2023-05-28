class VehicleImages {
  Query? query;
  List<Images>? images;
  bool? success;
  String? error;

  VehicleImages({this.query, this.images, this.success, this.error});

  VehicleImages.fromJson(Map<String, dynamic> json) {
    query = json['query'] != null ? Query.fromJson(json['query']) : null;
    if (json['images'] != null) {
      images = <Images>[];
      json['images'].forEach((v) {
        images!.add(Images.fromJson(v));
      });
    }
    success = json['success'];
    error = json['error'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (query != null) {
      data['query'] = query!.toJson();
    }
    if (images != null) {
      data['images'] = images!.map((v) => v.toJson()).toList();
    }
    data['success'] = success;
    data['error'] = error;
    return data;
  }
}

class Query {
  String? make;
  String? model;
  String? year;
  String? format;

  Query({this.make, this.model, this.year, this.format});

  Query.fromJson(Map<String, dynamic> json) {
    make = json['make'];
    model = json['model'];
    year = json['year'];
    format = json['format'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['make'] = make;
    data['model'] = model;
    data['year'] = year;
    data['format'] = format;
    return data;
  }
}

class Images {
  String? mime;
  String? link;
  String? contextLink;
  int? height;
  int? width;
  int? byteSize;
  String? thumbnailLink;
  int? thumbnailHeight;
  int? thumbnailWidth;
  String? hostPageDomainFriendlyName;
  String? accentColor;
  String? datePublished;

  Images(
      {this.mime,
      this.link,
      this.contextLink,
      this.height,
      this.width,
      this.byteSize,
      this.thumbnailLink,
      this.thumbnailHeight,
      this.thumbnailWidth,
      this.hostPageDomainFriendlyName,
      this.accentColor,
      this.datePublished});

  Images.fromJson(Map<String, dynamic> json) {
    mime = json['mime'];
    link = json['link'];
    contextLink = json['contextLink'];
    height = json['height'];
    width = json['width'];
    byteSize = json['byteSize'];
    thumbnailLink = json['thumbnailLink'];
    thumbnailHeight = json['thumbnailHeight'];
    thumbnailWidth = json['thumbnailWidth'];
    hostPageDomainFriendlyName = json['hostPageDomainFriendlyName'];
    accentColor = json['accentColor'];
    datePublished = json['datePublished'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['mime'] = mime;
    data['link'] = link;
    data['contextLink'] = contextLink;
    data['height'] = height;
    data['width'] = width;
    data['byteSize'] = byteSize;
    data['thumbnailLink'] = thumbnailLink;
    data['thumbnailHeight'] = thumbnailHeight;
    data['thumbnailWidth'] = thumbnailWidth;
    data['hostPageDomainFriendlyName'] = hostPageDomainFriendlyName;
    data['accentColor'] = accentColor;
    data['datePublished'] = datePublished;
    return data;
  }
}
