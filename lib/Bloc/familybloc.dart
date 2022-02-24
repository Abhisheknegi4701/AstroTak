import 'dart:async';

import 'package:astrotak/datarepo.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

enum familystatus { add, edit, showlist }

abstract class FamilyEvent extends Equatable {
  @override
  // TODO: implement props
  List<Object?> get props => [];
}

class AddDetailEvent extends FamilyEvent {}

class EditDetailEvent extends FamilyEvent {}

class ShowListEvent extends FamilyEvent {}

abstract class FamilyState extends Equatable {
  @override
  // TODO: implement props
  List<Object?> get props => [];
}

class FamilyAddDetailState extends FamilyState {}

class FamilyEditDetailState extends FamilyState {}

class FamilyShowListState extends FamilyState {}

class FamilyBloc extends Bloc<FamilyEvent, FamilyState> {
  datarepo? data;
  FamilyBloc(data) : super(FamilyShowListState()) {
    on<AddDetailEvent>(_onAddDetail);
    on<EditDetailEvent>(_onEditDetail);
    on<ShowListEvent>(_onlistloading);
  }

  Future<FutureOr<void>> _onAddDetail(
      AddDetailEvent event, Emitter<FamilyState> emit) async {
    emit(FamilyAddDetailState());
  }

  FutureOr<void> _onEditDetail(
      EditDetailEvent event, Emitter<FamilyState> emit) {
    emit(FamilyEditDetailState());
  }

  FutureOr<void> _onlistloading(
      ShowListEvent event, Emitter<FamilyState> emit) {
    emit(FamilyShowListState());
  }
}
