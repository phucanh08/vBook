// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:domain/src/use_cases/novel/get_catalog_usecase.dart' as _i3;
import 'package:domain/src/use_cases/novel/get_detail_chapter_usecase.dart'
    as _i4;
import 'package:domain/src/use_cases/novel/get_detail_novel_usecase.dart'
    as _i5;
import 'package:domain/src/use_cases/novel/get_history_usecase.dart' as _i6;
import 'package:domain/src/use_cases/novel/get_list_home_usecase.dart' as _i7;
import 'package:domain/src/use_cases/novel/get_list_novel_in_home_usecase.dart'
    as _i10;
import 'package:domain/src/use_cases/novel/get_shelf_usecase.dart' as _i11;
import 'package:domain/src/use_cases/novel/save_novel_usecase.dart' as _i14;
import 'package:domain/src/use_cases/plugin/get_list_library_plugin_usecase.dart'
    as _i8;
import 'package:domain/src/use_cases/plugin/get_list_local_plugin_usecase.dart'
    as _i9;
import 'package:domain/src/use_cases/plugin/remove_local_plugin_usecase.dart'
    as _i12;
import 'package:domain/src/use_cases/plugin/save_local_plugin_usecase.dart'
    as _i13;
import 'package:domain/src/use_cases/tts/speak_use_case.dart' as _i15;
import 'package:domain/src/use_cases/tts/stop_use_case.dart' as _i16;
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
    gh.factory<_i3.GetCatalogUseCase>(() => _i3.GetCatalogUseCase());
    gh.factory<_i4.GetDetailChapterUseCase>(
        () => _i4.GetDetailChapterUseCase());
    gh.factory<_i5.GetDetailNovelUseCase>(() => _i5.GetDetailNovelUseCase());
    gh.factory<_i6.GetHistoryUseCase>(() => _i6.GetHistoryUseCase());
    gh.factory<_i7.GetListHomeUseCase>(() => _i7.GetListHomeUseCase());
    gh.factory<_i8.GetListLibraryPluginUseCase>(
        () => _i8.GetListLibraryPluginUseCase());
    gh.factory<_i9.GetListLocalPluginUseCase>(
        () => _i9.GetListLocalPluginUseCase());
    gh.factory<_i10.GetListNovelInHomeUseCase>(
        () => _i10.GetListNovelInHomeUseCase());
    gh.factory<_i11.GetShelfUseCase>(() => _i11.GetShelfUseCase());
    gh.factory<_i12.RemoveLocalPluginUseCase>(
        () => _i12.RemoveLocalPluginUseCase());
    gh.factory<_i13.SaveLocalPluginUseCase>(
        () => _i13.SaveLocalPluginUseCase());
    gh.factory<_i14.SaveNovelUseCase>(() => _i14.SaveNovelUseCase());
    gh.factory<_i15.SpeakUseCase>(() => _i15.SpeakUseCase());
    gh.factory<_i16.StopUseCase>(() => _i16.StopUseCase());
    return this;
  }
}
