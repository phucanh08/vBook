// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:app/app/bloc/app_bloc.dart' as _i3;
import 'package:app/base/bloc/common/common_bloc.dart' as _i11;
import 'package:app/common_view/popup/choose_source/bloc/choose_source_bloc.dart'
    as _i9;
import 'package:app/common_widgets/popup/choose_source/bloc/choose_source_bloc.dart'
    as _i10;
import 'package:app/navigation/base/app_navigation/app_navigation.dart' as _i4;
import 'package:app/navigation/middleware/route_guard.dart' as _i19;
import 'package:app/navigation/routers/app_router.dart' as _i5;
import 'package:app/ui/browser/bloc/browser_bloc.dart' as _i6;
import 'package:app/ui/catalog/bloc/catalog_bloc.dart' as _i7;
import 'package:app/ui/detail_chapter/bloc/detail_chapter_bloc.dart' as _i12;
import 'package:app/ui/detail_novel/bloc/detail_novel_bloc.dart' as _i13;
import 'package:app/ui/discover/bloc/discover_bloc.dart' as _i14;
import 'package:app/ui/discover/tab/bloc/discover_tab_bloc.dart' as _i15;
import 'package:app/ui/extension/bloc/extension_bloc.dart' as _i16;
import 'package:app/ui/home/bloc/home_bloc.dart' as _i17;
import 'package:app/ui/individual/bloc/individual_bloc.dart' as _i18;
import 'package:domain/domain.dart' as _i8;
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
    gh.lazySingleton<_i3.AppBloc>(() => _i3.AppBloc());
    gh.lazySingleton<_i4.AppNavigator>(() => _i4.AppNavigatorImpl());
    gh.singleton<_i5.AppRouter>(_i5.AppRouter());
    gh.factory<_i6.BrowserBloc>(() => _i6.BrowserBloc());
    gh.factory<_i7.CatalogBloc>(() => _i7.CatalogBloc(
          gh<_i8.GetCatalogUseCase>(),
          gh<_i8.SaveNovelUseCase>(),
        ));
    gh.factory<_i9.ChooseSourceBloc>(() => _i9.ChooseSourceBloc());
    gh.factory<_i10.ChooseSourceBloc>(() => _i10.ChooseSourceBloc());
    gh.factory<_i11.CommonBloc>(() => _i11.CommonBloc());
    gh.factory<_i12.DetailChapterBloc>(
        () => _i12.DetailChapterBloc(gh<_i8.GetDetailChapterUseCase>()));
    gh.factory<_i13.DetailNovelBloc>(() => _i13.DetailNovelBloc());
    gh.factory<_i14.DiscoverBloc>(() => _i14.DiscoverBloc(
          gh<_i8.GetListLocalPluginUseCase>(),
          gh<_i8.SaveLocalPluginUseCase>(),
          gh<_i8.GetListHomeUseCase>(),
        ));
    gh.factory<_i15.DiscoverTabBloc>(
        () => _i15.DiscoverTabBloc(gh<_i8.GetListNovelInHomeUseCase>()));
    gh.factory<_i16.ExtensionBloc>(() => _i16.ExtensionBloc(
          gh<_i8.GetListLibraryPluginUseCase>(),
          gh<_i8.GetListLocalPluginUseCase>(),
          gh<_i8.RemoveLocalPluginUseCase>(),
          gh<_i8.SaveLocalPluginUseCase>(),
        ));
    gh.factory<_i17.HomeBloc>(() => _i17.HomeBloc(
          gh<_i8.GetShelfUseCase>(),
          gh<_i8.GetHistoryUseCase>(),
        ));
    gh.factory<_i18.IndividualBloc>(() => _i18.IndividualBloc());
    gh.factory<_i19.RouteGuard>(() => _i19.RouteGuard());
    return this;
  }
}
