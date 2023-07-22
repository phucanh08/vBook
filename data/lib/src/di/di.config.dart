// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:data/data.dart' as _i15;
import 'package:data/src/mappers/chapter/mapper.dart' as _i4;
import 'package:data/src/mappers/detail_chapter/mapper.dart' as _i5;
import 'package:data/src/mappers/home/mapper.dart' as _i7;
import 'package:data/src/mappers/novel/mapper.dart' as _i8;
import 'package:data/src/mappers/novel_detail/mapper.dart' as _i6;
import 'package:data/src/mappers/page/mapper.dart' as _i10;
import 'package:data/src/mappers/plugin/mapper.dart' as _i11;
import 'package:data/src/repositorie_impls/novel/repository_impl.dart' as _i14;
import 'package:data/src/repositorie_impls/plugin/repository_impl.dart' as _i16;
import 'package:data/src/sources/local/novel/storage.dart' as _i9;
import 'package:data/src/sources/local/plugin/storage.dart' as _i12;
import 'package:data/src/sources/vbook_extensions/bachngocsach/plugin.dart'
    as _i3;
import 'package:domain/domain.dart' as _i13;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

extension GetItInjectableX on _i1.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    gh.factory<_i3.BachNgocSachApi>(() => _i3.BachNgocSachApi());
    gh.factory<_i4.ChapterDataMapper>(() => _i4.ChapterDataMapper());
    gh.factory<_i5.DetailChapterDataMapper>(
        () => _i5.DetailChapterDataMapper());
    gh.factory<_i6.DetailNovelDataMapper>(() => _i6.DetailNovelDataMapper());
    gh.factory<_i7.HomeDataMapper>(() => _i7.HomeDataMapper());
    gh.factory<_i8.NovelDataMapper>(() => _i8.NovelDataMapper());
    gh.factory<_i9.NovelStorage>(() => _i9.NovelStorageImpl());
    gh.factory<_i10.PageDataMapper>(() => _i10.PageDataMapper());
    gh.factory<_i11.Plugin1DataMapper>(() => _i11.Plugin1DataMapper());
    gh.factory<_i11.Plugin2DataMapper>(() => _i11.Plugin2DataMapper());
    gh.factory<_i11.PluginDataMapper>(() => _i11.PluginDataMapper());
    gh.factory<_i12.PluginStorage>(() => _i12.PluginStorage());
    gh.factory<_i13.NovelRepository>(() => _i14.PluginRepositoryImpl(
          gh<_i15.HomeDataMapper>(),
          gh<_i10.PageDataMapper>(),
          gh<_i15.NovelDataMapper>(),
          gh<_i9.NovelStorage>(),
        ));
    gh.factory<_i13.PluginRepository>(
        () => _i16.PluginRepositoryImpl(gh<_i12.PluginStorage>()));
    return this;
  }
}
