import 'package:bloc/bloc.dart';
import 'package:flutter_bloc_test/domain/users/list_state.dart';
import 'package:flutter_bloc_test/domain/users/users_repository.dart';
import 'package:rxdart/rxdart.dart';

enum ListEvent { load }

class ListBloc extends Bloc<ListEvent, ListState> {
  final UsersRepository _usersRepository;

  BehaviorSubject<ListState> _subject = BehaviorSubject<ListState>();

  ListBloc(this._usersRepository);

  @override
  ListState get initialState => Idle();

  @override
  Stream<ListState> mapEventToState(ListState currentState, ListEvent event) {
    if (event == ListEvent.load) {
      _subject.sink.add(Loading());

      _usersRepository.loadUsers().listen((data) {
        _subject.sink.add(Loaded.from(data));
      }, onError: (error) {});
    }

    return _subject.stream;
  }
}
