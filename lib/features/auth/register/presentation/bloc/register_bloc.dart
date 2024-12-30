import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'register_event.dart';
part 'register_state.dart';

class RegisterBloc extends Bloc<RegisterEvent, RegisterState> {
  //lấy đối tượng firebase auth
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;

  RegisterBloc() : super(RegisterState()) {
    on<RegisterEventNextStep>((event, emit) async {
      try {
        final user = await _firebaseAuth.createUserWithEmailAndPassword(
            email: event.email, password: event.password);

        //lấy user từ userCredential

        if (user.user != null) {
          //gọi đến firestore để lưu user vào database
          await FirebaseFirestore.instance
              .collection('users')
              .doc(user.user!.uid)
              .set({
            'fullName': event.fullName,
            'createdAt': FieldValue.serverTimestamp(),
          });
        }
        emit(RegisterSuccess(
          fullName: event.fullName,
          email: event.email,
        ));
      } catch (e) {
        emit(RegisterError(errorMessage: 'đã xảy ra lỗi'));
      }
    });
  }
}
