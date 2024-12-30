import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_sign_in/google_sign_in.dart';

// import 'package:google_sign_in/google_sign_in.dart';

part 'login_event.dart';
part 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final GoogleSignIn _googleSignIn = GoogleSignIn();

  LoginBloc() : super(LoginEmailState(email: '', password: '')) {
    on<LoginEmailEvent>((event, emit) async {
      try {
        await Future.delayed(const Duration(seconds: 2));
        emit(LoginLoading());
        await _auth.signInWithEmailAndPassword(
            email: event.email, password: event.password);
        emit(LoginSuccess());
      } catch (e) {
        emit(LoginFailure(message: 'Đăng nhập thất bại'));
      }
    });
    // xli đăng nhập bằng gg
    on<LoginGoogleEvent>((event, emit) async {
      try {
        await Future.delayed(const Duration(seconds: 2));
        emit(LoginLoading());
        // ts xoá tk trên firebase r mà khi đn gg thì nó vẫn đăng nhập đc
        // await _googleSignIn.signOut(); // xóa thông tin đăng nhập trước đó
        final userGoogle = await _googleSignIn.signIn();
        if (userGoogle != null) {
          //xác thực thông tin đăng nhập
          final GoogleSignInAuthentication googleAuth =
              await userGoogle.authentication;
          //tạo credential xác thực thông tin trả về idToken và accessToken
          final credential = GoogleAuthProvider.credential(
              idToken: googleAuth.idToken, accessToken: googleAuth.accessToken);
          print(credential);
          //đăng nhập bằng firebase
          await _auth.signInWithCredential(credential);

          emit(LoginGoogleSuccess());
        } else {
          emit(LoginFailure(message: 'Đăng nhập thất bại'));
        }
      } catch (e) {
        emit(LoginFailure(message: 'Đăng nhập thất bại'));
      }
    });
  }
}
