import 'dart:async';

import 'package:astrotak/dataobj.dart';
import 'package:astrotak/datarepo.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

enum Astrostatus {
  questionLoading,
  questionLoaded,
  questionnotLoaded,
  profileClick
}

abstract class Astroevent extends Equatable {
  @override
  // TODO: implement props
  List<Object?> get props => [];
}

class Fetchastroquestionloading extends Astroevent {}

class Fetchastroquestionloaded extends Astroevent {
  List<Question> questiionlist = [];

  Fetchastroquestionloaded(questionlist);

  @override
  // TODO: implement props
  List<Object?> get props => [questiionlist];
}

class Fetchastroquestionnotloaded extends Astroevent {}

class ProfileClickevent extends Astroevent {}

abstract class Astrostate extends Equatable {
  @override
  // TODO: implement props
  List<Object?> get props => [];
}

class Astroquestionloading extends Astrostate {}

class Astroquestionloaded extends Astrostate {
  List<Question> questiionlist = [];

  Astroquestionloaded(questionlist);
  @override
  // TODO: implement props
  List<Object?> get props => [questiionlist];
}

class Astroquestionnotloaded extends Astrostate {}

class ProfileClickstate extends Astrostate {}

class Astrobloc extends Bloc<Astroevent, Astrostate> {
  datarepo? data;
  Astrobloc({required this.data})
      : super(Astroquestionloaded(data!.getquestion())) {
    on<Fetchastroquestionloading>(_onquestionLoading);
    on<Fetchastroquestionloaded>(_onquestionloaded);
    on<Fetchastroquestionnotloaded>(_onquestionnotloaded);
    on<ProfileClickevent>(_onProfileClick);
  }

  Future<FutureOr<void>> _onquestionLoading(
      Fetchastroquestionloading event, Emitter<Astrostate> emit) async {
    emit(Astroquestionloading());
  }

  FutureOr<void> _onquestionloaded(
      Fetchastroquestionloaded event, Emitter<Astrostate> emit) async {
    List<Question> questionlist = await data!.getquestion();
    if (questionlist.isNotEmpty) {
      emit(Astroquestionloaded(questionlist));
    } else {
      emit(Astroquestionnotloaded());
    }
  }

  FutureOr<void> _onquestionnotloaded(
      Fetchastroquestionnotloaded event, Emitter<Astrostate> emit) {
    emit(Astroquestionnotloaded());
  }

  FutureOr<void> _onProfileClick(
      ProfileClickevent event, Emitter<Astrostate> emit) {
    emit(ProfileClickstate());
  }
}
