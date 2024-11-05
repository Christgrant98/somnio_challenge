import 'package:challenge_somnio/core/routes/router_provider.dart';
import 'package:challenge_somnio/features/posts/logic/post_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SomnioApp extends StatelessWidget {
  final PostCubit _postCubit = PostCubit();

  SomnioApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<PostCubit>.value(
          value: _postCubit,
        ),
      ],
      child: MaterialApp.router(
        theme: ThemeData(useMaterial3: true),
        routerConfig: router,
      ),
    );
  }
}
