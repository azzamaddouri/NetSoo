import 'package:netsoo/data/model/post.dart';
import 'package:netsoo/data/service/base_service.dart';

class GetPostService extends ServiceBase<List<Post>> {
  @override
  Future<List<Post>> call() async {
    final result = await get('post');
    return List.generate(
      result['data'].length,
      (index) => Post.fromJson(
        result['data'][index],
      ),
    );
  }
}
