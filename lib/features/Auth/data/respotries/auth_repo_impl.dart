import 'package:delivery_food_v1/features/Auth/domain/respotries/auth_repo.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

class AhtuRepoImpl extends AuthRepo {
  @override
  Future CompleteInformation(
      {String? name, String? PhoneNumber, String? address}) {
    throw UnimplementedError();
  }

  @override
  Future LoginWithFacebook() {
    throw UnimplementedError();
  }

  @override
  Future LoginWithGoogle() async {
    Future<UserCredential> signInWithGoogle() async {
      // Trigger the authentication
      final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();

      // Obtain the auth details from the request
      final GoogleSignInAuthentication? googleAuth =
          await googleUser?.authentication;

      // Create a new credential
      final credential = GoogleAuthProvider.credential(
        accessToken: googleAuth?.accessToken,
        idToken: googleAuth?.idToken,
      );

      // Once signed in, return the UserCredential
      return await FirebaseAuth.instance.signInWithCredential(credential);

      // TODO: implement LoginWithGoogle
      // throw UnimplementedError();
    }
  }
}
