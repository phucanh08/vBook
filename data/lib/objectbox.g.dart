// GENERATED CODE - DO NOT MODIFY BY HAND
// This code was generated by ObjectBox. To update it run the generator again:
// With a Flutter package, run `flutter pub run build_runner build`.
// With a Dart package, run `dart run build_runner build`.
// See also https://docs.objectbox.io/getting-started#generate-objectbox-code

// ignore_for_file: camel_case_types, depend_on_referenced_packages
// coverage:ignore-file

import 'dart:typed_data';

import 'package:flat_buffers/flat_buffers.dart' as fb;
import 'package:objectbox/internal.dart'; // generated code can access "internal" functionality
import 'package:objectbox/objectbox.dart';
import 'package:objectbox_flutter_libs/objectbox_flutter_libs.dart';

import 'src/entities/novel/entity.dart';
import 'src/entities/plugin/entity.dart';

export 'package:objectbox/objectbox.dart'; // so that callers only have to import this file

final _entities = <ModelEntity>[
  ModelEntity(
      id: const IdUid(1, 5534362832389956800),
      name: 'Plugin',
      lastPropertyId: const IdUid(13, 2296144677275731218),
      flags: 0,
      properties: <ModelProperty>[
        ModelProperty(
            id: const IdUid(2, 6620233372318528541),
            name: 'name',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(3, 2248839487383124890),
            name: 'author',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(4, 3848128466824745880),
            name: 'path',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(5, 708083938847965391),
            name: 'version',
            type: 6,
            flags: 0),
        ModelProperty(
            id: const IdUid(6, 5153213107011281179),
            name: 'source',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(7, 6270520202237799713),
            name: 'icon',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(8, 6802058081920087315),
            name: 'description',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(9, 4620249671700176074),
            name: 'type',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(10, 3475054066017125914),
            name: 'locale',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(11, 604880964117908969),
            name: 'tag',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(12, 5572938427828949489),
            name: 'updatedAt',
            type: 6,
            flags: 0),
        ModelProperty(
            id: const IdUid(13, 2296144677275731218),
            name: 'id',
            type: 6,
            flags: 1)
      ],
      relations: <ModelRelation>[],
      backlinks: <ModelBacklink>[]),
  ModelEntity(
      id: const IdUid(2, 8676234059551527790),
      name: 'Novel',
      lastPropertyId: const IdUid(21, 1387242580634304986),
      flags: 0,
      properties: <ModelProperty>[
        ModelProperty(
            id: const IdUid(1, 1783065107719841325),
            name: 'id',
            type: 6,
            flags: 1),
        ModelProperty(
            id: const IdUid(2, 4731953859975656956),
            name: 'updatedAt',
            type: 10,
            flags: 0),
        ModelProperty(
            id: const IdUid(3, 1872393371831935127),
            name: 'name',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(13, 656006951416001693),
            name: 'sourceName',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(14, 5865567547723892664),
            name: 'imgUrl',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(15, 7748068567327826336),
            name: 'totalChapters',
            type: 6,
            flags: 0),
        ModelProperty(
            id: const IdUid(16, 7431919398946552156),
            name: 'currentChapter',
            type: 6,
            flags: 0),
        ModelProperty(
            id: const IdUid(17, 3084253780744591768),
            name: 'timeRead',
            type: 6,
            flags: 0),
        ModelProperty(
            id: const IdUid(18, 5733208387419764806),
            name: 'inShelf',
            type: 1,
            flags: 0),
        ModelProperty(
            id: const IdUid(19, 8845417261312993241),
            name: 'novelEndpoint',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(20, 5025687259785313246),
            name: 'sourceId',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(21, 1387242580634304986),
            name: 'currentChapterName',
            type: 9,
            flags: 0)
      ],
      relations: <ModelRelation>[],
      backlinks: <ModelBacklink>[])
];

/// Open an ObjectBox store with the model declared in this file.
Future<Store> openStore(
        {String? directory,
        int? maxDBSizeInKB,
        int? fileMode,
        int? maxReaders,
        bool queriesCaseSensitiveDefault = true,
        String? macosApplicationGroup}) async =>
    Store(getObjectBoxModel(),
        directory: directory ?? (await defaultStoreDirectory()).path,
        maxDBSizeInKB: maxDBSizeInKB,
        fileMode: fileMode,
        maxReaders: maxReaders,
        queriesCaseSensitiveDefault: queriesCaseSensitiveDefault,
        macosApplicationGroup: macosApplicationGroup);

/// ObjectBox model definition, pass it to [Store] - Store(getObjectBoxModel())
ModelDefinition getObjectBoxModel() {
  final model = ModelInfo(
      entities: _entities,
      lastEntityId: const IdUid(2, 8676234059551527790),
      lastIndexId: const IdUid(0, 0),
      lastRelationId: const IdUid(0, 0),
      lastSequenceId: const IdUid(0, 0),
      retiredEntityUids: const [],
      retiredIndexUids: const [],
      retiredPropertyUids: const [
        7256397035240773215,
        2822240455735112046,
        4320755730379911189,
        1197222319089340395,
        6176317590871688743,
        5432321514710167754,
        4564333491803113505,
        4764724404251497919,
        5138646220433900189,
        6054327899192585446
      ],
      retiredRelationUids: const [],
      modelVersion: 5,
      modelVersionParserMinimum: 5,
      version: 1);

  final bindings = <Type, EntityDefinition>{
    Plugin: EntityDefinition<Plugin>(
        model: _entities[0],
        toOneRelations: (Plugin object) => [],
        toManyRelations: (Plugin object) => {},
        getId: (Plugin object) => object.id,
        setId: (Plugin object, int id) {
          object.id = id;
        },
        objectToFB: (Plugin object, fb.Builder fbb) {
          final nameOffset = fbb.writeString(object.name);
          final authorOffset = fbb.writeString(object.author);
          final pathOffset = fbb.writeString(object.path);
          final sourceOffset = fbb.writeString(object.source);
          final iconOffset = fbb.writeString(object.icon);
          final descriptionOffset = fbb.writeString(object.description);
          final typeOffset = fbb.writeString(object.type);
          final localeOffset = fbb.writeString(object.locale);
          final tagOffset =
              object.tag == null ? null : fbb.writeString(object.tag!);
          fbb.startTable(14);
          fbb.addOffset(1, nameOffset);
          fbb.addOffset(2, authorOffset);
          fbb.addOffset(3, pathOffset);
          fbb.addInt64(4, object.version);
          fbb.addOffset(5, sourceOffset);
          fbb.addOffset(6, iconOffset);
          fbb.addOffset(7, descriptionOffset);
          fbb.addOffset(8, typeOffset);
          fbb.addOffset(9, localeOffset);
          fbb.addOffset(10, tagOffset);
          fbb.addInt64(11, object.updatedAt);
          fbb.addInt64(12, object.id);
          fbb.finish(fbb.endTable());
          return object.id;
        },
        objectFromFB: (Store store, ByteData fbData) {
          final buffer = fb.BufferContext(fbData);
          final rootOffset = buffer.derefObject(0);

          final object = Plugin(
              updatedAt:
                  const fb.Int64Reader().vTableGet(buffer, rootOffset, 26, 0),
              name: const fb.StringReader(asciiOptimization: true)
                  .vTableGet(buffer, rootOffset, 6, ''),
              author: const fb.StringReader(asciiOptimization: true)
                  .vTableGet(buffer, rootOffset, 8, ''),
              path: const fb.StringReader(asciiOptimization: true)
                  .vTableGet(buffer, rootOffset, 10, ''),
              version:
                  const fb.Int64Reader().vTableGet(buffer, rootOffset, 12, 0),
              source: const fb.StringReader(asciiOptimization: true)
                  .vTableGet(buffer, rootOffset, 14, ''),
              icon: const fb.StringReader(asciiOptimization: true)
                  .vTableGet(buffer, rootOffset, 16, ''),
              description: const fb.StringReader(asciiOptimization: true)
                  .vTableGet(buffer, rootOffset, 18, ''),
              type:
                  const fb.StringReader(asciiOptimization: true).vTableGet(buffer, rootOffset, 20, ''),
              locale: const fb.StringReader(asciiOptimization: true).vTableGet(buffer, rootOffset, 22, ''),
              tag: const fb.StringReader(asciiOptimization: true).vTableGetNullable(buffer, rootOffset, 24),
              id: const fb.Int64Reader().vTableGet(buffer, rootOffset, 28, 0));

          return object;
        }),
    Novel: EntityDefinition<Novel>(
        model: _entities[1],
        toOneRelations: (Novel object) => [],
        toManyRelations: (Novel object) => {},
        getId: (Novel object) => object.id,
        setId: (Novel object, int id) {
          object.id = id;
        },
        objectToFB: (Novel object, fb.Builder fbb) {
          final nameOffset = fbb.writeString(object.name);
          final sourceNameOffset = fbb.writeString(object.sourceName);
          final imgUrlOffset = fbb.writeString(object.imgUrl);
          final novelEndpointOffset = fbb.writeString(object.novelEndpoint);
          final sourceIdOffset = fbb.writeString(object.sourceId);
          final currentChapterNameOffset =
              fbb.writeString(object.currentChapterName);
          fbb.startTable(22);
          fbb.addInt64(0, object.id);
          fbb.addInt64(1, object.updatedAt.millisecondsSinceEpoch);
          fbb.addOffset(2, nameOffset);
          fbb.addOffset(12, sourceNameOffset);
          fbb.addOffset(13, imgUrlOffset);
          fbb.addInt64(14, object.totalChapters);
          fbb.addInt64(15, object.currentChapter);
          fbb.addInt64(16, object.timeRead);
          fbb.addBool(17, object.inShelf);
          fbb.addOffset(18, novelEndpointOffset);
          fbb.addOffset(19, sourceIdOffset);
          fbb.addOffset(20, currentChapterNameOffset);
          fbb.finish(fbb.endTable());
          return object.id;
        },
        objectFromFB: (Store store, ByteData fbData) {
          final buffer = fb.BufferContext(fbData);
          final rootOffset = buffer.derefObject(0);

          final object = Novel(
              updatedAt: DateTime.fromMillisecondsSinceEpoch(
                  const fb.Int64Reader().vTableGet(buffer, rootOffset, 6, 0)),
              name: const fb.StringReader(asciiOptimization: true)
                  .vTableGet(buffer, rootOffset, 8, ''),
              novelEndpoint: const fb.StringReader(asciiOptimization: true)
                  .vTableGet(buffer, rootOffset, 40, ''),
              sourceId: const fb.StringReader(asciiOptimization: true)
                  .vTableGet(buffer, rootOffset, 42, ''),
              sourceName: const fb.StringReader(asciiOptimization: true)
                  .vTableGet(buffer, rootOffset, 28, ''),
              imgUrl: const fb.StringReader(asciiOptimization: true)
                  .vTableGet(buffer, rootOffset, 30, ''),
              totalChapters:
                  const fb.Int64Reader().vTableGet(buffer, rootOffset, 32, 0),
              currentChapter:
                  const fb.Int64Reader().vTableGet(buffer, rootOffset, 34, 0),
              currentChapterName: const fb.StringReader(asciiOptimization: true).vTableGet(buffer, rootOffset, 44, ''),
              timeRead: const fb.Int64Reader().vTableGet(buffer, rootOffset, 36, 0),
              inShelf: const fb.BoolReader().vTableGet(buffer, rootOffset, 38, false),
              id: const fb.Int64Reader().vTableGet(buffer, rootOffset, 4, 0));

          return object;
        })
  };

  return ModelDefinition(model, bindings);
}

/// [Plugin] entity fields to define ObjectBox queries.
class Plugin_ {
  /// see [Plugin.name]
  static final name = QueryStringProperty<Plugin>(_entities[0].properties[0]);

  /// see [Plugin.author]
  static final author = QueryStringProperty<Plugin>(_entities[0].properties[1]);

  /// see [Plugin.path]
  static final path = QueryStringProperty<Plugin>(_entities[0].properties[2]);

  /// see [Plugin.version]
  static final version =
      QueryIntegerProperty<Plugin>(_entities[0].properties[3]);

  /// see [Plugin.source]
  static final source = QueryStringProperty<Plugin>(_entities[0].properties[4]);

  /// see [Plugin.icon]
  static final icon = QueryStringProperty<Plugin>(_entities[0].properties[5]);

  /// see [Plugin.description]
  static final description =
      QueryStringProperty<Plugin>(_entities[0].properties[6]);

  /// see [Plugin.type]
  static final type = QueryStringProperty<Plugin>(_entities[0].properties[7]);

  /// see [Plugin.locale]
  static final locale = QueryStringProperty<Plugin>(_entities[0].properties[8]);

  /// see [Plugin.tag]
  static final tag = QueryStringProperty<Plugin>(_entities[0].properties[9]);

  /// see [Plugin.updatedAt]
  static final updatedAt =
      QueryIntegerProperty<Plugin>(_entities[0].properties[10]);

  /// see [Plugin.id]
  static final id = QueryIntegerProperty<Plugin>(_entities[0].properties[11]);
}

/// [Novel] entity fields to define ObjectBox queries.
class Novel_ {
  /// see [Novel.id]
  static final id = QueryIntegerProperty<Novel>(_entities[1].properties[0]);

  /// see [Novel.updatedAt]
  static final updatedAt =
      QueryIntegerProperty<Novel>(_entities[1].properties[1]);

  /// see [Novel.name]
  static final name = QueryStringProperty<Novel>(_entities[1].properties[2]);

  /// see [Novel.sourceName]
  static final sourceName =
      QueryStringProperty<Novel>(_entities[1].properties[3]);

  /// see [Novel.imgUrl]
  static final imgUrl = QueryStringProperty<Novel>(_entities[1].properties[4]);

  /// see [Novel.totalChapters]
  static final totalChapters =
      QueryIntegerProperty<Novel>(_entities[1].properties[5]);

  /// see [Novel.currentChapter]
  static final currentChapter =
      QueryIntegerProperty<Novel>(_entities[1].properties[6]);

  /// see [Novel.timeRead]
  static final timeRead =
      QueryIntegerProperty<Novel>(_entities[1].properties[7]);

  /// see [Novel.inShelf]
  static final inShelf =
      QueryBooleanProperty<Novel>(_entities[1].properties[8]);

  /// see [Novel.novelEndpoint]
  static final novelEndpoint =
      QueryStringProperty<Novel>(_entities[1].properties[9]);

  /// see [Novel.sourceId]
  static final sourceId =
      QueryStringProperty<Novel>(_entities[1].properties[10]);

  /// see [Novel.currentChapterName]
  static final currentChapterName =
      QueryStringProperty<Novel>(_entities[1].properties[11]);
}