import 'package:injectable/injectable.dart';

import '../../../../objectbox.g.dart';
import '../../../entities/entities.dart';
import '../local.dart';

abstract class NovelStorage {
  Future<List<Novel>> getAll();

  Future<Novel?> get(String sourceId, String novelEndpoint);

  Future<bool> save(Novel novel);

  Future<bool> remove(String sourceId, String novelEndpoint);
}

@Injectable(as: NovelStorage)
class NovelStorageImpl implements NovelStorage {
  final Box<Novel> _novelBox = ObjectBox.novelBox();

  @override
  Future<bool> save(Novel novel) async {
    await _novelBox.putAsync(novel);

    return true;
  }

  @override
  Future<List<Novel>> getAll() async {
    final query = _novelBox.query().order(Novel_.updatedAt).build();
    final result = query.find();
    query.close();

    return result.toList();
  }

  @override
  Future<bool> remove(String sourceId, String novelEndpoint) async {
    final novel = await get(sourceId, novelEndpoint);

    return novel != null ? _novelBox.remove(novel.id) : false;
  }

  @override
  Future<Novel?> get(String sourceId, String novelEndpoint) async {
    final query = _novelBox
        .query(Novel_.sourceId.equals(sourceId).and(
              Novel_.novelEndpoint.equals(novelEndpoint),
            ))
        .build();
    final novels = query.find();

    return novels.firstOrNull;
  }
}
