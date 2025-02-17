import 'package:firebase_auth/firebase_auth.dart';

class PasswordlessLoginServices{
  final FirebaseAuth _auth = FirebaseAuth.instance;
  Future signInWithEmailandLink(userEmail)async{
    var _userEmail=userEmail;
    return await _auth.sendSignInLinkToEmail(
        email: _userEmail,
        actionCodeSettings: ActionCodeSettings(
          url:"https://rehnuma1.page.link/bjYi" ,
          handleCodeInApp: true,
          androidPackageName:"com.example.rehnuma",
          androidMinimumVersion: "1",
        )
    ).then((value){
      print("email sent to $_userEmail");
    });
  }

  void handleLink(Uri link,userEmail) async {
    if (link != null) {

      final UserCredential user = await FirebaseAuth.instance.signInWithEmailLink(
        email:userEmail,
        emailLink:link.toString(),
      );
      if (user != null) {
        print(user.credential);
      }
    } else {
      print("link is null");
    }
  }
}