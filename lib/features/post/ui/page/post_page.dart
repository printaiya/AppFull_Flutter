import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_project/features/post/posts_cubit.dart';
import 'package:flutter_project/features/post/ui/page/posts_view.dart';

class PostView extends StatelessWidget {
  const PostView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BlocProvider<PostsCubit>(
          create: (context) => PostsCubit()..posts, child: PostsView()),
    );
  }
}
