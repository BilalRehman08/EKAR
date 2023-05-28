import 'package:ekar_project/model/vehicle_attributes.dart';
import 'package:ekar_project/model/vehicle_colors.dart';
import 'package:ekar_project/model/vehicle_equipment.dart';
import 'package:ekar_project/model/vehicle_input.dart';
import 'package:ekar_project/model/vehicle_warranties.dart';

class VehicleModel {
  bool? success;
  Input? input;
  Attributes? attributes;
  List<Colors>? colors;
  Equipment? equipment;
  List<Warranties>? warranties;
  String? timestamp;

  VehicleModel(
      {this.success,
      this.input,
      this.attributes,
      this.colors,
      this.equipment,
      this.warranties,
      this.timestamp});

  VehicleModel.fromJson(Map<String, dynamic> json) {
    success = json['success'];
    input = json['input'] != null ? Input.fromJson(json['input']) : null;
    attributes = json['attributes'] != null
        ? Attributes.fromJson(json['attributes'])
        : null;
    if (json['colors'] != null) {
      colors = <Colors>[];
      json['colors'].forEach((v) {
        colors!.add(Colors.fromJson(v));
      });
    }
    equipment = json['equipment'] != null
        ? Equipment.fromJson(json['equipment'])
        : null;
    if (json['warranties'] != null) {
      warranties = <Warranties>[];
      json['warranties'].forEach((v) {
        warranties!.add(Warranties.fromJson(v));
      });
    }
    timestamp = json['timestamp'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['success'] = success;
    if (input != null) {
      data['input'] = input!.toJson();
    }
    if (attributes != null) {
      data['attributes'] = attributes!.toJson();
    }
    if (colors != null) {
      data['colors'] = colors!.map((v) => v.toJson()).toList();
    }
    if (equipment != null) {
      data['equipment'] = equipment!.toJson();
    }
    if (warranties != null) {
      data['warranties'] = warranties!.map((v) => v.toJson()).toList();
    }
    data['timestamp'] = timestamp;
    return data;
  }
}
