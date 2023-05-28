class Input {
  String? key;
  String? vin;

  Input({this.key, this.vin});

  Input.fromJson(Map<String, dynamic> json) {
    key = json['key'];
    vin = json['vin'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['key'] = key;
    data['vin'] = vin;
    return data;
  }
}
