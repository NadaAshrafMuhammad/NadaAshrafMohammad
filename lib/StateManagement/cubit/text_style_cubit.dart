import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'text_style_state.dart';

class TextStyleCubit extends Cubit<TextStyleState> {
  TextStyleCubit() : super(TextStyleInitial());

  fun(){
    emit(TextStylechange());
  }





}
