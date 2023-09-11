// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:data/data.dart' as _i34;
import 'package:data/src/mappers/base_error_response_mapper/firebase_storage_error_response_mapper.dart'
    as _i9;
import 'package:data/src/mappers/base_error_response_mapper/goong_error_response_mapper.dart'
    as _i10;
import 'package:data/src/mappers/base_error_response_mapper/json_array_error_response_mapper.dart'
    as _i12;
import 'package:data/src/mappers/base_error_response_mapper/json_object_error_response_mapper.dart'
    as _i14;
import 'package:data/src/mappers/base_error_response_mapper/line_error_response_mapper.dart'
    as _i16;
import 'package:data/src/mappers/base_error_response_mapper/twitter_error_response_mapper.dart'
    as _i29;
import 'package:data/src/mappers/base_success_response_mapper/data_json_array_response_mapper.dart'
    as _i5;
import 'package:data/src/mappers/base_success_response_mapper/data_json_object_reponse_mapper.dart'
    as _i6;
import 'package:data/src/mappers/base_success_response_mapper/json_array_response_mapper.dart'
    as _i13;
import 'package:data/src/mappers/base_success_response_mapper/json_object_reponse_mapper.dart'
    as _i15;
import 'package:data/src/mappers/base_success_response_mapper/records_json_array_response_mapper.dart'
    as _i22;
import 'package:data/src/mappers/base_success_response_mapper/results_json_array_response_mapper.dart'
    as _i26;
import 'package:data/src/mappers/chapter/mapper.dart' as _i3;
import 'package:data/src/mappers/detail_chapter/mapper.dart' as _i7;
import 'package:data/src/mappers/home/mapper.dart' as _i11;
import 'package:data/src/mappers/novel/mapper.dart' as _i17;
import 'package:data/src/mappers/novel_detail/mapper.dart' as _i8;
import 'package:data/src/mappers/page/mapper.dart' as _i19;
import 'package:data/src/mappers/plugin/mapper.dart' as _i20;
import 'package:data/src/repositorie_impls/novel/repository_impl.dart' as _i33;
import 'package:data/src/repositorie_impls/plugin/repository_impl.dart' as _i32;
import 'package:data/src/repositorie_impls/tts/repository_impl.dart' as _i28;
import 'package:data/src/sources/base/client/rest_client.dart' as _i25;
import 'package:data/src/sources/base/middleware/connectivity_interceptor.dart'
    as _i4;
import 'package:data/src/sources/base/middleware/response_interceptor.dart'
    as _i23;
import 'package:data/src/sources/data_client.dart' as _i35;
import 'package:data/src/sources/local/local.dart' as _i18;
import 'package:data/src/sources/local/novel/storage.dart' as _i31;
import 'package:data/src/sources/local/plugin/storage.dart' as _i21;
import 'package:data/src/sources/vbook_extensions/bachngocsach/plugin.dart'
    as _i30;
import 'package:domain/domain.dart' as _i27;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:shared/shared.dart' as _i24;

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
    final dataClient = _$DataClient();
    gh.factory<_i3.ChapterDataMapper>(() => _i3.ChapterDataMapper());
    gh.factory<_i4.ConnectivityInterceptor>(
        () => _i4.ConnectivityInterceptor());
    gh.factory<_i5.DataJsonArrayResponseMapper<dynamic>>(
        () => _i5.DataJsonArrayResponseMapper<dynamic>());
    gh.factory<_i6.DataJsonObjectResponseMapper<dynamic>>(
        () => _i6.DataJsonObjectResponseMapper<dynamic>());
    gh.factory<_i7.DetailChapterDataMapper>(
        () => _i7.DetailChapterDataMapper());
    gh.factory<_i8.DetailNovelDataMapper>(() => _i8.DetailNovelDataMapper());
    gh.factory<_i9.FirebaseStorageErrorResponseMapper>(
        () => _i9.FirebaseStorageErrorResponseMapper());
    gh.factory<_i10.GoongErrorResponseMapper>(
        () => _i10.GoongErrorResponseMapper());
    gh.factory<_i11.HomeDataMapper>(() => _i11.HomeDataMapper());
    gh.factory<_i12.JsonArrayErrorResponseMapper>(
        () => _i12.JsonArrayErrorResponseMapper());
    gh.factory<_i13.JsonArrayResponseMapper<dynamic>>(
        () => _i13.JsonArrayResponseMapper<dynamic>());
    gh.factory<_i14.JsonObjectErrorResponseMapper>(
        () => _i14.JsonObjectErrorResponseMapper());
    gh.factory<_i15.JsonObjectResponseMapper<dynamic>>(
        () => _i15.JsonObjectResponseMapper<dynamic>());
    gh.factory<_i16.LineErrorResponseMapper>(
        () => _i16.LineErrorResponseMapper());
    gh.factory<_i17.NovelDataMapper>(() => _i17.NovelDataMapper());
    gh.singleton<_i18.ObjectBox>(
      dataClient.localStorage(),
      instanceName: 'LocalStorage',
    );
    gh.factory<_i19.PageDataMapper>(() => _i19.PageDataMapper());
    gh.factory<_i20.Plugin1DataMapper>(() => _i20.Plugin1DataMapper());
    gh.factory<_i20.Plugin2DataMapper>(() => _i20.Plugin2DataMapper());
    gh.factory<_i20.PluginDataMapper>(() => _i20.PluginDataMapper());
    gh.factory<_i21.PluginStorage>(() =>
        _i21.PluginStorage(gh<_i18.ObjectBox>(instanceName: 'LocalStorage')));
    gh.factory<_i22.RecordsJsonArrayResponseMapper<dynamic>>(
        () => _i22.RecordsJsonArrayResponseMapper<dynamic>());
    gh.factory<_i23.ResponseInterceptor<dynamic, dynamic>>(
        () => _i23.ResponseInterceptor<dynamic, dynamic>(
              successResponseMapperType: gh<_i24.SuccessResponseMapperType>(),
              errorResponseMapperType: gh<_i24.ErrorResponseMapperType>(),
              decoder: gh<_i24.Decoder>(),
            ));
    gh.singleton<_i25.RestApiClient>(
      dataClient.currentApiClient(),
      instanceName: 'currentApiClient',
    );
    gh.factory<_i26.ResultsJsonArrayResponseMapper<dynamic>>(
        () => _i26.ResultsJsonArrayResponseMapper<dynamic>());
    gh.singleton<_i27.TTSRepository>(_i28.TTSRepositoryImpl());
    gh.factory<_i29.TwitterErrorResponseMapper>(
        () => _i29.TwitterErrorResponseMapper());
    gh.factory<_i30.BachNgocSachApi>(() => _i30.BachNgocSachApi(
        gh<_i25.RestApiClient>(instanceName: 'currentApiClient')));
    gh.factory<_i31.NovelStorage>(() => _i31.NovelStorageImpl(
        gh<_i18.ObjectBox>(instanceName: 'LocalStorage')));
    gh.factory<_i27.PluginRepository>(
        () => _i32.PluginRepositoryImpl(gh<_i21.PluginStorage>()));
    gh.factory<_i27.NovelRepository>(() => _i33.PluginRepositoryImpl(
          gh<_i34.HomeDataMapper>(),
          gh<_i19.PageDataMapper>(),
          gh<_i34.NovelDataMapper>(),
          gh<_i31.NovelStorage>(),
        ));
    return this;
  }
}

class _$DataClient extends _i35.DataClient {}
