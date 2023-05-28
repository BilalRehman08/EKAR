class Colors {
  String? category;
  String? name;

  Colors({this.category, this.name});

  Colors.fromJson(Map<String, dynamic> json) {
    category = json['category'];
    name = json['name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['category'] = category;
    data['name'] = name;
    return data;
  }
}
