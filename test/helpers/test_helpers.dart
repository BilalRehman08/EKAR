import 'package:ekar_project/api/api_services.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:geolocator/geolocator.dart';
import 'package:image_picker/image_picker.dart';
import 'package:mockito/annotations.dart';
import 'package:stacked_services/stacked_services.dart';

@GenerateMocks([], customMocks: [
  MockSpec<NavigationService>(onMissingStub: OnMissingStub.returnDefault),
  MockSpec<Fluttertoast>(onMissingStub: OnMissingStub.returnDefault),
  MockSpec<ImagePicker>(onMissingStub: OnMissingStub.returnDefault),
  MockSpec<ApiService>(onMissingStub: OnMissingStub.returnDefault),
  MockSpec<Geolocator>(onMissingStub: OnMissingStub.returnDefault),
])
class TestMocks {}
