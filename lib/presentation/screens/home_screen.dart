import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_work_4/imagec_cubit.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Animals')),
      body: BlocBuilder<ImagesCubit, String>(
        builder: (context, image) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.network(image),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () => context.read<ImagesCubit>().changePicture(
                        "https://s3.amazonaws.com/cdn-origin-etr.akc.org/wp-content/uploads/2019/12/03202400/Yellow-Labrador-Retriever.jpg"),
                    child: const Text("Dog"),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(25.0),
                  ),
                  ElevatedButton(
                    onPressed: () => context.read<ImagesCubit>().changePicture(
                        "https://static.independent.co.uk/2021/06/16/08/newFile-4.jpg?width=982&height=726&auto=webp&quality=75"),
                    child: const Text("Cat"),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () => context.read<ImagesCubit>().changePicture(
                        "https://d1jyxxz9imt9yb.cloudfront.net/animal/117/meta_image/regular/PhotoCredit-Ashwati_Vipin_Giraffe_DSC_0215a.jpg"),
                    child: const Text("Giraffe"),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(25.0),
                  ),
                  ElevatedButton(
                    onPressed: () => context.read<ImagesCubit>().changePicture(
                        "https://c.files.bbci.co.uk/140D7/production/_119653128_976_tiger_wwf.jpg"),
                    child: const Text("Tiger"),
                  ),
                ],
              ),
            ],
          );
        },
      ),
    );
  }
}
