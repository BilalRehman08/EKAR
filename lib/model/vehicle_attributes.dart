class Attributes {
  String? year;
  String? make;
  String? model;
  String? trim;
  String? style;
  String? type;
  String? size;
  String? category;
  String? madeIn;
  String? madeInCity;
  String? doors;
  String? fuelType;
  String? fuelCapacity;
  String? cityMileage;
  String? highwayMileage;
  String? engine;
  String? engineSize;
  String? engineCylinders;
  String? transmission;
  String? transmissionShort;
  String? transmissionType;
  String? transmissionSpeeds;
  String? drivetrain;
  String? antiBrakeSystem;
  String? steeringType;
  String? curbWeight;
  String? grossVehicleWeightRating;
  String? overallHeight;
  String? overallLength;
  String? overallWidth;
  String? wheelbaseLength;
  String? standardSeating;
  String? invoicePrice;
  String? deliveryCharges;
  String? manufacturerSuggestedRetailPrice;
  String? productionSeqNumber;
  String? frontBrakeType;
  String? rearBrakeType;
  String? turningDiameter;
  String? frontSuspension;
  String? rearSuspension;
  String? frontSpringType;
  String? rearSpringType;
  String? tires;
  String? frontHeadroom;
  String? rearHeadroom;
  String? frontLegroom;
  String? rearLegroom;
  String? frontShoulderRoom;
  String? rearShoulderRoom;
  String? frontHipRoom;
  String? rearHipRoom;
  List<String>? interiorTrim;
  List<String>? exteriorColor;
  String? curbWeightManual;
  String? groundClearance;
  String? trackFront;
  String? trackRear;
  String? cargoLength;
  String? widthAtWheelwell;
  String? widthAtWall;
  String? depth;
  String? optionalSeating;
  String? passengerVolume;
  String? cargoVolume;
  String? standardTowing;
  String? maximumTowing;
  String? standardPayload;
  String? maximumPayload;
  String? maximumGvwr;

  Attributes(
      {this.year,
      this.make,
      this.model,
      this.trim,
      this.style,
      this.type,
      this.size,
      this.category,
      this.madeIn,
      this.madeInCity,
      this.doors,
      this.fuelType,
      this.fuelCapacity,
      this.cityMileage,
      this.highwayMileage,
      this.engine,
      this.engineSize,
      this.engineCylinders,
      this.transmission,
      this.transmissionShort,
      this.transmissionType,
      this.transmissionSpeeds,
      this.drivetrain,
      this.antiBrakeSystem,
      this.steeringType,
      this.curbWeight,
      this.grossVehicleWeightRating,
      this.overallHeight,
      this.overallLength,
      this.overallWidth,
      this.wheelbaseLength,
      this.standardSeating,
      this.invoicePrice,
      this.deliveryCharges,
      this.manufacturerSuggestedRetailPrice,
      this.productionSeqNumber,
      this.frontBrakeType,
      this.rearBrakeType,
      this.turningDiameter,
      this.frontSuspension,
      this.rearSuspension,
      this.frontSpringType,
      this.rearSpringType,
      this.tires,
      this.frontHeadroom,
      this.rearHeadroom,
      this.frontLegroom,
      this.rearLegroom,
      this.frontShoulderRoom,
      this.rearShoulderRoom,
      this.frontHipRoom,
      this.rearHipRoom,
      this.interiorTrim,
      this.exteriorColor,
      this.curbWeightManual,
      this.groundClearance,
      this.trackFront,
      this.trackRear,
      this.cargoLength,
      this.widthAtWheelwell,
      this.widthAtWall,
      this.depth,
      this.optionalSeating,
      this.passengerVolume,
      this.cargoVolume,
      this.standardTowing,
      this.maximumTowing,
      this.standardPayload,
      this.maximumPayload,
      this.maximumGvwr});

  Attributes.fromJson(Map<String, dynamic> json) {
    year = json['year'];
    make = json['make'];
    model = json['model'];
    trim = json['trim'];
    style = json['style'];
    type = json['type'];
    size = json['size'];
    category = json['category'];
    madeIn = json['made_in'];
    madeInCity = json['made_in_city'];
    doors = json['doors'];
    fuelType = json['fuel_type'];
    fuelCapacity = json['fuel_capacity'];
    cityMileage = json['city_mileage'];
    highwayMileage = json['highway_mileage'];
    engine = json['engine'];
    engineSize = json['engine_size'];
    engineCylinders = json['engine_cylinders'];
    transmission = json['transmission'];
    transmissionShort = json['transmission_short'];
    transmissionType = json['transmission_type'];
    transmissionSpeeds = json['transmission_speeds'];
    drivetrain = json['drivetrain'];
    antiBrakeSystem = json['anti_brake_system'];
    steeringType = json['steering_type'];
    curbWeight = json['curb_weight'];
    grossVehicleWeightRating = json['gross_vehicle_weight_rating'];
    overallHeight = json['overall_height'];
    overallLength = json['overall_length'];
    overallWidth = json['overall_width'];
    wheelbaseLength = json['wheelbase_length'];
    standardSeating = json['standard_seating'];
    invoicePrice = json['invoice_price'];
    deliveryCharges = json['delivery_charges'];
    manufacturerSuggestedRetailPrice =
        json['manufacturer_suggested_retail_price'];
    productionSeqNumber = json['production_seq_number'];
    frontBrakeType = json['front_brake_type'];
    rearBrakeType = json['rear_brake_type'];
    turningDiameter = json['turning_diameter'];
    frontSuspension = json['front_suspension'];
    rearSuspension = json['rear_suspension'];
    frontSpringType = json['front_spring_type'];
    rearSpringType = json['rear_spring_type'];
    tires = json['tires'];
    frontHeadroom = json['front_headroom'];
    rearHeadroom = json['rear_headroom'];
    frontLegroom = json['front_legroom'];
    rearLegroom = json['rear_legroom'];
    frontShoulderRoom = json['front_shoulder_room'];
    rearShoulderRoom = json['rear_shoulder_room'];
    frontHipRoom = json['front_hip_room'];
    rearHipRoom = json['rear_hip_room'];
    interiorTrim = json['interior_trim'].cast<String>();
    exteriorColor = json['exterior_color'].cast<String>();
    curbWeightManual = json['curb_weight_manual'];
    groundClearance = json['ground_clearance'];
    trackFront = json['track_front'];
    trackRear = json['track_rear'];
    cargoLength = json['cargo_length'];
    widthAtWheelwell = json['width_at_wheelwell'];
    widthAtWall = json['width_at_wall'];
    depth = json['depth'];
    optionalSeating = json['optional_seating'];
    passengerVolume = json['passenger_volume'];
    cargoVolume = json['cargo_volume'];
    standardTowing = json['standard_towing'];
    maximumTowing = json['maximum_towing'];
    standardPayload = json['standard_payload'];
    maximumPayload = json['maximum_payload'];
    maximumGvwr = json['maximum_gvwr'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['year'] = year;
    data['make'] = make;
    data['model'] = model;
    data['trim'] = trim;
    data['style'] = style;
    data['type'] = type;
    data['size'] = size;
    data['category'] = category;
    data['made_in'] = madeIn;
    data['made_in_city'] = madeInCity;
    data['doors'] = doors;
    data['fuel_type'] = fuelType;
    data['fuel_capacity'] = fuelCapacity;
    data['city_mileage'] = cityMileage;
    data['highway_mileage'] = highwayMileage;
    data['engine'] = engine;
    data['engine_size'] = engineSize;
    data['engine_cylinders'] = engineCylinders;
    data['transmission'] = transmission;
    data['transmission_short'] = transmissionShort;
    data['transmission_type'] = transmissionType;
    data['transmission_speeds'] = transmissionSpeeds;
    data['drivetrain'] = drivetrain;
    data['anti_brake_system'] = antiBrakeSystem;
    data['steering_type'] = steeringType;
    data['curb_weight'] = curbWeight;
    data['gross_vehicle_weight_rating'] = grossVehicleWeightRating;
    data['overall_height'] = overallHeight;
    data['overall_length'] = overallLength;
    data['overall_width'] = overallWidth;
    data['wheelbase_length'] = wheelbaseLength;
    data['standard_seating'] = standardSeating;
    data['invoice_price'] = invoicePrice;
    data['delivery_charges'] = deliveryCharges;
    data['manufacturer_suggested_retail_price'] =
        manufacturerSuggestedRetailPrice;
    data['production_seq_number'] = productionSeqNumber;
    data['front_brake_type'] = frontBrakeType;
    data['rear_brake_type'] = rearBrakeType;
    data['turning_diameter'] = turningDiameter;
    data['front_suspension'] = frontSuspension;
    data['rear_suspension'] = rearSuspension;
    data['front_spring_type'] = frontSpringType;
    data['rear_spring_type'] = rearSpringType;
    data['tires'] = tires;
    data['front_headroom'] = frontHeadroom;
    data['rear_headroom'] = rearHeadroom;
    data['front_legroom'] = frontLegroom;
    data['rear_legroom'] = rearLegroom;
    data['front_shoulder_room'] = frontShoulderRoom;
    data['rear_shoulder_room'] = rearShoulderRoom;
    data['front_hip_room'] = frontHipRoom;
    data['rear_hip_room'] = rearHipRoom;
    data['interior_trim'] = interiorTrim;
    data['exterior_color'] = exteriorColor;
    data['curb_weight_manual'] = curbWeightManual;
    data['ground_clearance'] = groundClearance;
    data['track_front'] = trackFront;
    data['track_rear'] = trackRear;
    data['cargo_length'] = cargoLength;
    data['width_at_wheelwell'] = widthAtWheelwell;
    data['width_at_wall'] = widthAtWall;
    data['depth'] = depth;
    data['optional_seating'] = optionalSeating;
    data['passenger_volume'] = passengerVolume;
    data['cargo_volume'] = cargoVolume;
    data['standard_towing'] = standardTowing;
    data['maximum_towing'] = maximumTowing;
    data['standard_payload'] = standardPayload;
    data['maximum_payload'] = maximumPayload;
    data['maximum_gvwr'] = maximumGvwr;
    return data;
  }
}
