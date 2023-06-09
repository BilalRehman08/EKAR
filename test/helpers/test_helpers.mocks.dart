// Mocks generated by Mockito 5.4.1 from annotations
// in ekar_project/test/helpers/test_helpers.dart.
// Do not manually edit this file.

// @dart=2.19

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i8;

import 'package:ekar_project/api/api_client.dart' as _i3;
import 'package:ekar_project/api/api_services.dart' as _i11;
import 'package:ekar_project/model/vehicle_images.dart' as _i5;
import 'package:ekar_project/model/vehicle_model.dart' as _i4;
import 'package:flutter/material.dart' as _i7;
import 'package:fluttertoast/fluttertoast.dart' as _i9;
import 'package:geolocator/geolocator.dart' as _i12;
import 'package:image_picker/image_picker.dart' as _i10;
import 'package:image_picker_platform_interface/image_picker_platform_interface.dart'
    as _i2;
import 'package:mockito/mockito.dart' as _i1;
import 'package:stacked_services/stacked_services.dart' as _i6;

// ignore_for_file: type=lint
// ignore_for_file: avoid_redundant_argument_values
// ignore_for_file: avoid_setters_without_getters
// ignore_for_file: comment_references
// ignore_for_file: implementation_imports
// ignore_for_file: invalid_use_of_visible_for_testing_member
// ignore_for_file: prefer_const_constructors
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: camel_case_types
// ignore_for_file: subtype_of_sealed_class

class _FakeLostData_0 extends _i1.SmartFake implements _i2.LostData {
  _FakeLostData_0(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeLostDataResponse_1 extends _i1.SmartFake
    implements _i2.LostDataResponse {
  _FakeLostDataResponse_1(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeApiClient_2 extends _i1.SmartFake implements _i3.ApiClient {
  _FakeApiClient_2(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeVehicleModel_3 extends _i1.SmartFake implements _i4.VehicleModel {
  _FakeVehicleModel_3(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeVehicleImages_4 extends _i1.SmartFake implements _i5.VehicleImages {
  _FakeVehicleImages_4(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

/// A class which mocks [NavigationService].
///
/// See the documentation for Mockito's code generation for more information.
class MockNavigationService extends _i1.Mock implements _i6.NavigationService {
  @override
  String get previousRoute => (super.noSuchMethod(
        Invocation.getter(#previousRoute),
        returnValue: '',
        returnValueForMissingStub: '',
      ) as String);
  @override
  String get currentRoute => (super.noSuchMethod(
        Invocation.getter(#currentRoute),
        returnValue: '',
        returnValueForMissingStub: '',
      ) as String);
  @override
  _i7.GlobalKey<_i7.NavigatorState>? nestedNavigationKey(int? index) =>
      (super.noSuchMethod(
        Invocation.method(
          #nestedNavigationKey,
          [index],
        ),
        returnValueForMissingStub: null,
      ) as _i7.GlobalKey<_i7.NavigatorState>?);
  @override
  void config({
    bool? enableLog,
    bool? defaultPopGesture,
    bool? defaultOpaqueRoute,
    Duration? defaultDurationTransition,
    bool? defaultGlobalState,
    _i6.Transition? defaultTransitionStyle,
    String? defaultTransition,
  }) =>
      super.noSuchMethod(
        Invocation.method(
          #config,
          [],
          {
            #enableLog: enableLog,
            #defaultPopGesture: defaultPopGesture,
            #defaultOpaqueRoute: defaultOpaqueRoute,
            #defaultDurationTransition: defaultDurationTransition,
            #defaultGlobalState: defaultGlobalState,
            #defaultTransitionStyle: defaultTransitionStyle,
            #defaultTransition: defaultTransition,
          },
        ),
        returnValueForMissingStub: null,
      );
  @override
  _i8.Future<T?>? navigateWithTransition<T>(
    _i7.Widget? page, {
    bool? opaque,
    String? transition = r'',
    Duration? duration,
    bool? popGesture,
    int? id,
    _i7.Curve? curve,
    bool? fullscreenDialog = false,
    bool? preventDuplicates = true,
    _i6.Transition? transitionClass,
    _i6.Transition? transitionStyle,
    String? routeName,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #navigateWithTransition,
          [page],
          {
            #opaque: opaque,
            #transition: transition,
            #duration: duration,
            #popGesture: popGesture,
            #id: id,
            #curve: curve,
            #fullscreenDialog: fullscreenDialog,
            #preventDuplicates: preventDuplicates,
            #transitionClass: transitionClass,
            #transitionStyle: transitionStyle,
            #routeName: routeName,
          },
        ),
        returnValueForMissingStub: null,
      ) as _i8.Future<T?>?);
  @override
  _i8.Future<T?>? replaceWithTransition<T>(
    _i7.Widget? page, {
    bool? opaque,
    String? transition = r'',
    Duration? duration,
    bool? popGesture,
    int? id,
    _i7.Curve? curve,
    bool? fullscreenDialog = false,
    bool? preventDuplicates = true,
    _i6.Transition? transitionClass,
    _i6.Transition? transitionStyle,
    String? routeName,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #replaceWithTransition,
          [page],
          {
            #opaque: opaque,
            #transition: transition,
            #duration: duration,
            #popGesture: popGesture,
            #id: id,
            #curve: curve,
            #fullscreenDialog: fullscreenDialog,
            #preventDuplicates: preventDuplicates,
            #transitionClass: transitionClass,
            #transitionStyle: transitionStyle,
            #routeName: routeName,
          },
        ),
        returnValueForMissingStub: null,
      ) as _i8.Future<T?>?);
  @override
  bool back<T>({
    dynamic result,
    int? id,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #back,
          [],
          {
            #result: result,
            #id: id,
          },
        ),
        returnValue: false,
        returnValueForMissingStub: false,
      ) as bool);
  @override
  void popUntil(
    _i7.RoutePredicate? predicate, {
    int? id,
  }) =>
      super.noSuchMethod(
        Invocation.method(
          #popUntil,
          [predicate],
          {#id: id},
        ),
        returnValueForMissingStub: null,
      );
  @override
  void popRepeated(int? popTimes) => super.noSuchMethod(
        Invocation.method(
          #popRepeated,
          [popTimes],
        ),
        returnValueForMissingStub: null,
      );
  @override
  _i8.Future<T?>? navigateTo<T>(
    String? routeName, {
    dynamic arguments,
    int? id,
    bool? preventDuplicates = true,
    Map<String, String>? parameters,
    _i7.RouteTransitionsBuilder? transition,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #navigateTo,
          [routeName],
          {
            #arguments: arguments,
            #id: id,
            #preventDuplicates: preventDuplicates,
            #parameters: parameters,
            #transition: transition,
          },
        ),
        returnValueForMissingStub: null,
      ) as _i8.Future<T?>?);
  @override
  _i8.Future<T?>? navigateToView<T>(
    _i7.Widget? view, {
    dynamic arguments,
    int? id,
    bool? opaque,
    _i7.Curve? curve,
    Duration? duration,
    bool? fullscreenDialog = false,
    bool? popGesture,
    bool? preventDuplicates = true,
    _i6.Transition? transition,
    _i6.Transition? transitionStyle,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #navigateToView,
          [view],
          {
            #arguments: arguments,
            #id: id,
            #opaque: opaque,
            #curve: curve,
            #duration: duration,
            #fullscreenDialog: fullscreenDialog,
            #popGesture: popGesture,
            #preventDuplicates: preventDuplicates,
            #transition: transition,
            #transitionStyle: transitionStyle,
          },
        ),
        returnValueForMissingStub: null,
      ) as _i8.Future<T?>?);
  @override
  _i8.Future<T?>? replaceWith<T>(
    String? routeName, {
    dynamic arguments,
    int? id,
    bool? preventDuplicates = true,
    Map<String, String>? parameters,
    _i7.RouteTransitionsBuilder? transition,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #replaceWith,
          [routeName],
          {
            #arguments: arguments,
            #id: id,
            #preventDuplicates: preventDuplicates,
            #parameters: parameters,
            #transition: transition,
          },
        ),
        returnValueForMissingStub: null,
      ) as _i8.Future<T?>?);
  @override
  _i8.Future<T?>? clearStackAndShow<T>(
    String? routeName, {
    dynamic arguments,
    int? id,
    Map<String, String>? parameters,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #clearStackAndShow,
          [routeName],
          {
            #arguments: arguments,
            #id: id,
            #parameters: parameters,
          },
        ),
        returnValueForMissingStub: null,
      ) as _i8.Future<T?>?);
  @override
  _i8.Future<T?>? clearStackAndShowView<T>(
    _i7.Widget? view, {
    dynamic arguments,
    int? id,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #clearStackAndShowView,
          [view],
          {
            #arguments: arguments,
            #id: id,
          },
        ),
        returnValueForMissingStub: null,
      ) as _i8.Future<T?>?);
  @override
  _i8.Future<T?>? clearTillFirstAndShow<T>(
    String? routeName, {
    dynamic arguments,
    int? id,
    bool? preventDuplicates = true,
    Map<String, String>? parameters,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #clearTillFirstAndShow,
          [routeName],
          {
            #arguments: arguments,
            #id: id,
            #preventDuplicates: preventDuplicates,
            #parameters: parameters,
          },
        ),
        returnValueForMissingStub: null,
      ) as _i8.Future<T?>?);
  @override
  _i8.Future<T?>? clearTillFirstAndShowView<T>(
    _i7.Widget? view, {
    dynamic arguments,
    int? id,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #clearTillFirstAndShowView,
          [view],
          {
            #arguments: arguments,
            #id: id,
          },
        ),
        returnValueForMissingStub: null,
      ) as _i8.Future<T?>?);
  @override
  _i8.Future<T?>? pushNamedAndRemoveUntil<T>(
    String? routeName, {
    _i7.RoutePredicate? predicate,
    dynamic arguments,
    int? id,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #pushNamedAndRemoveUntil,
          [routeName],
          {
            #predicate: predicate,
            #arguments: arguments,
            #id: id,
          },
        ),
        returnValueForMissingStub: null,
      ) as _i8.Future<T?>?);
}

/// A class which mocks [Fluttertoast].
///
/// See the documentation for Mockito's code generation for more information.
class MockFluttertoast extends _i1.Mock implements _i9.Fluttertoast {}

/// A class which mocks [ImagePicker].
///
/// See the documentation for Mockito's code generation for more information.
class MockImagePicker extends _i1.Mock implements _i10.ImagePicker {
  @override
  _i8.Future<_i2.PickedFile?> getImage({
    required _i2.ImageSource? source,
    double? maxWidth,
    double? maxHeight,
    int? imageQuality,
    _i2.CameraDevice? preferredCameraDevice = _i2.CameraDevice.rear,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #getImage,
          [],
          {
            #source: source,
            #maxWidth: maxWidth,
            #maxHeight: maxHeight,
            #imageQuality: imageQuality,
            #preferredCameraDevice: preferredCameraDevice,
          },
        ),
        returnValue: _i8.Future<_i2.PickedFile?>.value(),
        returnValueForMissingStub: _i8.Future<_i2.PickedFile?>.value(),
      ) as _i8.Future<_i2.PickedFile?>);
  @override
  _i8.Future<List<_i2.PickedFile>?> getMultiImage({
    double? maxWidth,
    double? maxHeight,
    int? imageQuality,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #getMultiImage,
          [],
          {
            #maxWidth: maxWidth,
            #maxHeight: maxHeight,
            #imageQuality: imageQuality,
          },
        ),
        returnValue: _i8.Future<List<_i2.PickedFile>?>.value(),
        returnValueForMissingStub: _i8.Future<List<_i2.PickedFile>?>.value(),
      ) as _i8.Future<List<_i2.PickedFile>?>);
  @override
  _i8.Future<_i2.PickedFile?> getVideo({
    required _i2.ImageSource? source,
    _i2.CameraDevice? preferredCameraDevice = _i2.CameraDevice.rear,
    Duration? maxDuration,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #getVideo,
          [],
          {
            #source: source,
            #preferredCameraDevice: preferredCameraDevice,
            #maxDuration: maxDuration,
          },
        ),
        returnValue: _i8.Future<_i2.PickedFile?>.value(),
        returnValueForMissingStub: _i8.Future<_i2.PickedFile?>.value(),
      ) as _i8.Future<_i2.PickedFile?>);
  @override
  _i8.Future<_i2.LostData> getLostData() => (super.noSuchMethod(
        Invocation.method(
          #getLostData,
          [],
        ),
        returnValue: _i8.Future<_i2.LostData>.value(_FakeLostData_0(
          this,
          Invocation.method(
            #getLostData,
            [],
          ),
        )),
        returnValueForMissingStub:
            _i8.Future<_i2.LostData>.value(_FakeLostData_0(
          this,
          Invocation.method(
            #getLostData,
            [],
          ),
        )),
      ) as _i8.Future<_i2.LostData>);
  @override
  _i8.Future<_i2.XFile?> pickImage({
    required _i2.ImageSource? source,
    double? maxWidth,
    double? maxHeight,
    int? imageQuality,
    _i2.CameraDevice? preferredCameraDevice = _i2.CameraDevice.rear,
    bool? requestFullMetadata = true,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #pickImage,
          [],
          {
            #source: source,
            #maxWidth: maxWidth,
            #maxHeight: maxHeight,
            #imageQuality: imageQuality,
            #preferredCameraDevice: preferredCameraDevice,
            #requestFullMetadata: requestFullMetadata,
          },
        ),
        returnValue: _i8.Future<_i2.XFile?>.value(),
        returnValueForMissingStub: _i8.Future<_i2.XFile?>.value(),
      ) as _i8.Future<_i2.XFile?>);
  @override
  _i8.Future<List<_i2.XFile>> pickMultiImage({
    double? maxWidth,
    double? maxHeight,
    int? imageQuality,
    bool? requestFullMetadata = true,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #pickMultiImage,
          [],
          {
            #maxWidth: maxWidth,
            #maxHeight: maxHeight,
            #imageQuality: imageQuality,
            #requestFullMetadata: requestFullMetadata,
          },
        ),
        returnValue: _i8.Future<List<_i2.XFile>>.value(<_i2.XFile>[]),
        returnValueForMissingStub:
            _i8.Future<List<_i2.XFile>>.value(<_i2.XFile>[]),
      ) as _i8.Future<List<_i2.XFile>>);
  @override
  _i8.Future<_i2.XFile?> pickVideo({
    required _i2.ImageSource? source,
    _i2.CameraDevice? preferredCameraDevice = _i2.CameraDevice.rear,
    Duration? maxDuration,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #pickVideo,
          [],
          {
            #source: source,
            #preferredCameraDevice: preferredCameraDevice,
            #maxDuration: maxDuration,
          },
        ),
        returnValue: _i8.Future<_i2.XFile?>.value(),
        returnValueForMissingStub: _i8.Future<_i2.XFile?>.value(),
      ) as _i8.Future<_i2.XFile?>);
  @override
  _i8.Future<_i2.LostDataResponse> retrieveLostData() => (super.noSuchMethod(
        Invocation.method(
          #retrieveLostData,
          [],
        ),
        returnValue:
            _i8.Future<_i2.LostDataResponse>.value(_FakeLostDataResponse_1(
          this,
          Invocation.method(
            #retrieveLostData,
            [],
          ),
        )),
        returnValueForMissingStub:
            _i8.Future<_i2.LostDataResponse>.value(_FakeLostDataResponse_1(
          this,
          Invocation.method(
            #retrieveLostData,
            [],
          ),
        )),
      ) as _i8.Future<_i2.LostDataResponse>);
}

/// A class which mocks [ApiService].
///
/// See the documentation for Mockito's code generation for more information.
class MockApiService extends _i1.Mock implements _i11.ApiService {
  @override
  _i3.ApiClient get apiClient => (super.noSuchMethod(
        Invocation.getter(#apiClient),
        returnValue: _FakeApiClient_2(
          this,
          Invocation.getter(#apiClient),
        ),
        returnValueForMissingStub: _FakeApiClient_2(
          this,
          Invocation.getter(#apiClient),
        ),
      ) as _i3.ApiClient);
  @override
  _i8.Future<_i4.VehicleModel> getCarSpecs() => (super.noSuchMethod(
        Invocation.method(
          #getCarSpecs,
          [],
        ),
        returnValue: _i8.Future<_i4.VehicleModel>.value(_FakeVehicleModel_3(
          this,
          Invocation.method(
            #getCarSpecs,
            [],
          ),
        )),
        returnValueForMissingStub:
            _i8.Future<_i4.VehicleModel>.value(_FakeVehicleModel_3(
          this,
          Invocation.method(
            #getCarSpecs,
            [],
          ),
        )),
      ) as _i8.Future<_i4.VehicleModel>);
  @override
  _i8.Future<_i5.VehicleImages> getCarImages({
    required String? year,
    required String? make,
    required String? model,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #getCarImages,
          [],
          {
            #year: year,
            #make: make,
            #model: model,
          },
        ),
        returnValue: _i8.Future<_i5.VehicleImages>.value(_FakeVehicleImages_4(
          this,
          Invocation.method(
            #getCarImages,
            [],
            {
              #year: year,
              #make: make,
              #model: model,
            },
          ),
        )),
        returnValueForMissingStub:
            _i8.Future<_i5.VehicleImages>.value(_FakeVehicleImages_4(
          this,
          Invocation.method(
            #getCarImages,
            [],
            {
              #year: year,
              #make: make,
              #model: model,
            },
          ),
        )),
      ) as _i8.Future<_i5.VehicleImages>);
}

/// A class which mocks [Geolocator].
///
/// See the documentation for Mockito's code generation for more information.
class MockGeolocator extends _i1.Mock implements _i12.Geolocator {}
