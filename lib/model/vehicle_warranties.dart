class Warranties {
  String? type;
  String? miles;
  String? months;

  Warranties({this.type, this.miles, this.months});

  Warranties.fromJson(Map<String, dynamic> json) {
    type = json['type'];
    miles = json['miles'];
    months = json['months'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['type'] = type;
    data['miles'] = miles;
    data['months'] = months;
    return data;
  }
}
