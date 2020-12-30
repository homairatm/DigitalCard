import 'package:firebase_auth/firebase_auth.dart';
import 'package:chat/Model/user_login_auth.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:rxdart/rxdart.dart';

class MockFirebaseAuth extends Mock implements FirebaseAuth{}
class MockFirebaseUser extends Mock implements FirebaseUser{}
class MockAuthResult extends Mock implements AuthResult {}
//Mock
void main() {
  MockFirebaseAuth _auth = MockFirebaseAuth();
  BehaviorSubject<MockFirebaseUser> _user = BehaviorSubject<MockFirebaseUser>();
  when(_auth.onAuthStateChanged).thenAnswer((_){
    return _user;
  });
  UserRepository _repo = UserRepository.instance(auth: _auth);
  group('user repository test', (){
    when(_auth.signInWithEmailAndPassword(email: "homairabracu@gmail.com",password: "password")).thenAnswer((_)async{
      _user.add(MockFirebaseUser());
      return MockAuthResult();
    });
    when(_auth.signInWithEmailAndPassword(email: "mail@mail.com",password: "pass")).thenThrow((){
      return null;
    });

    test("sign in with email and password", () async {
      bool signedIn = await _repo.signIn("homairaracu@gmail.com", "password");
      expect(signedIn, true);
      expect(_repo.status, Status.Authenticated);
    });

    test("sing in fails with incorrect email and password",() async {
      bool signedIn = await _repo.signIn("mail@mail.com", "pass");
      expect(signedIn, false);
      expect(_repo.status, Status.Unauthenticated);
    });

    test('sign out', ()async{
      await _repo.signOut();
      expect(_repo.status, Status.Unauthenticated);
    });
  });
}
