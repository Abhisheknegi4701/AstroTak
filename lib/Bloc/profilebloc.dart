import 'dart:async';

import 'package:astrotak/datarepo.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

enum ProfileStatus { basic, familyandfriend }

abstract class ProfileEvent extends Equatable {
  @override
  // TODO: implement props
  List<Object?> get props => [];
}

class BasicProfileEvent extends ProfileEvent {}

class FamilyandFriendsEvent extends ProfileEvent {}

abstract class ProfileState extends Equatable {
  @override
  // TODO: implement props
  List<Object?> get props => [];
}

class BasicProfileState extends ProfileState {}

class FamilyAndFriendProfileState extends ProfileState {}

class ProfileBloc extends Bloc<ProfileEvent, ProfileState> {
  datarepo? data;
  ProfileBloc(data) : super(BasicProfileState()) {
    on<BasicProfileEvent>(_onBasicProfile);
    on<FamilyandFriendsEvent>(_onFamilyAndFriendProfile);
  }

  Future<FutureOr<void>> _onBasicProfile(
      BasicProfileEvent event, Emitter<ProfileState> emit) async {
    emit(BasicProfileState());
  }

  FutureOr<void> _onFamilyAndFriendProfile(
      FamilyandFriendsEvent event, Emitter<ProfileState> emit) {
    emit(FamilyAndFriendProfileState());
  }
}
