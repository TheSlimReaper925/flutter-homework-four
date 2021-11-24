import 'package:flutter_bloc/flutter_bloc.dart';

class ImagesCubit extends Cubit<String> {
  ImagesCubit(String initialState)
      : super(
            "https://s3.amazonaws.com/cdn-origin-etr.akc.org/wp-content/uploads/2019/12/03202400/Yellow-Labrador-Retriever.jpg");

  void changePicture(String image) => emit(image);
}
