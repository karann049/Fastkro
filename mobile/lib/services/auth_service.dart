import 'package:firebase_auth/firebase_auth.dart';

class AuthService {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  Future<void> sendOTP({
    required String phone,
    required Function(String) codeSent,
    required Function(String) verificationFailed,
  }) async {

    await _auth.verifyPhoneNumber(

      phoneNumber: phone,

      verificationCompleted: (PhoneAuthCredential credential) async {

        await _auth.signInWithCredential(credential);

      },

      verificationFailed: (FirebaseAuthException e) {

        verificationFailed(e.message ?? "OTP Failed");

      },

      codeSent: (String verificationId, int? resendToken) {

        codeSent(verificationId);

      },

      codeAutoRetrievalTimeout: (String verificationId) {},

    );
  }
}