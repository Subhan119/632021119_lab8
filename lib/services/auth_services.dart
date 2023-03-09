import 'package:google_sign_in/google_sign_in.dart';

class GoogleAuthService {


Future<void> signinWitthGoogle() async{
  try {
    final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();
    print('Success');
  } catch (err) {
    print(err);
  }
}

void googleSignOut(){

}

}