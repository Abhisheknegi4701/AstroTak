import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

enum NavbarItem { home, talk, askquestion, reports, chat }

class NavigationState extends Equatable {
  final NavbarItem navbarItem;
  final int index;

  const NavigationState(this.navbarItem, this.index);

  @override
  List<Object> get props => [navbarItem, index];
}

class NavigationCubit extends Cubit<NavigationState> {
  NavigationCubit() : super(const NavigationState(NavbarItem.home, 0));

  void getNavBarItem(NavbarItem navbarItem) {
    switch (navbarItem) {
      case NavbarItem.home:
        emit(const NavigationState(NavbarItem.home, 0));
        break;
      case NavbarItem.talk:
        emit(const NavigationState(NavbarItem.talk, 1));
        break;
      case NavbarItem.askquestion:
        emit(const NavigationState(NavbarItem.askquestion, 2));
        break;
      case NavbarItem.reports:
        emit(const NavigationState(NavbarItem.reports, 3));
        break;
      case NavbarItem.chat:
        emit(const NavigationState(NavbarItem.chat, 4));
        break;
    }
  }
}
