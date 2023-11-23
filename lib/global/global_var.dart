import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

String userName = "";
String userPhone = "";
String userID = FirebaseAuth.instance.currentUser!.uid;
String googleMapKey = "AIzaSyByupk_LXb0kN_Z1vTEi4be1ug8xb53zac";
String serverKeyFCM = "key=AAAA-DQn6MA:APA91bEb72IJFHZlzWksgy29XYZIsgoBCjdP_EcAXcNBRFecrhzKtkSTC3ljjyLtD0PR0IaSGRTQO6sa3OdBGE_VGw0nFUv-x9oGeyBOjbioh-Xw6r6lpm5qJOeEdwqyW0s-jGw_U2jn";
const CameraPosition googlePlexInitialPosition = CameraPosition(
  target: LatLng(37.42796133580664, -122.085749655962),
  zoom: 14.4746,
);