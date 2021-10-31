import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(HomeInitial());
  static HomeCubit get(context)=>  BlocProvider.of(context);
  //=====Home Icon =========
  bool tapHomeSelected = true;

  //==========Group Icon  =============
  bool tapMissionSelected = false;

  //============= Video Icon ===========
  bool tapTalabatSelected = false;

  //=========== Page Icon =========
  bool tapAccountSelected = false;




  toggleTabs({
    bool home = false,
    bool mission = false,
    bool talabat = false,
    bool account = false,

  }) {
    tapHomeSelected = home;
    tapMissionSelected = mission;
    tapTalabatSelected = talabat;
    tapAccountSelected = account;
    emit(HomeInitial());
  }

}
