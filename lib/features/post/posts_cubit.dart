import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_project/services/data_service.dart';

import '../../model/post.dart';

class PostsCubit extends Cubit<List<Post>> {
  final _dataService = DataService();
  PostsCubit() : super([]);

  void get posts async => emit(await _dataService.getPosts());
}
