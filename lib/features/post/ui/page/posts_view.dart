import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_project/features/post/posts_cubit.dart';
import 'package:flutter_project/model/post.dart';
import 'package:flutter_project/translations/locale_keys.g.dart';
import 'package:like_button/like_button.dart';

class PostsView extends StatelessWidget {
  const PostsView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(LocaleKeys.news.tr()),
        backgroundColor: Color(0xff036B56),
      ),
      body: BlocBuilder<PostsCubit, List<Post>>(
        builder: (context, state) {
          if (state.isEmpty) {
            return Center(
              child: CircularProgressIndicator(),
            );
          }
          return ListView.builder(
              itemCount: state.length,
              itemBuilder: ((context, index) {
                Post post = state[index];
                return Card(
                  child: ListTile(
                    leading: CircleAvatar(
                      backgroundColor: Colors.white,
                      child: LikeButton(
                        size: 20,
                        animationDuration: Duration(milliseconds: 700),
                      ),
                    ),
                    title: Text(
                      post.title,
                      maxLines: 1,
                    ),
                    subtitle: Text(post.body),
                  ),
                );
              }));
        },
      ),
    );
  }
}
