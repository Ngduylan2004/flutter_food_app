import 'package:flutter_bloc/flutter_bloc.dart';

part 'forum_event.dart';
part 'forum_state.dart';

class ForumBloc extends Bloc<ForumEvent, ForumState> {
  ForumBloc() : super(ForumState()) {
    on<ForumEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
