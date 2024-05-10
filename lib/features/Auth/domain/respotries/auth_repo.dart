import 'package:flutter/material.dart';

 abstract class AuthRepo {
  Future LoginWithGoogle();
  Future LoginWithFacebook();
  Future CompleteInformation(
      {@required String name,
      @required String PhoneNumber,
      @required String address});
}
