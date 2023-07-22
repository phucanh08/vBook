part of 'strings.g.dart';

// Path: <root>
class _StringsVi implements BaseTranslations<AppLocale, _StringsVi> {

	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	_StringsVi.build({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = TranslationMetadata(
		    locale: AppLocale.vi,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ) {
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <vi>.
	@override final TranslationMetadata<AppLocale, _StringsVi> $meta;

	/// Access flat map
	dynamic operator[](String key) => $meta.getTranslation(key);

	late final _StringsVi _root = this; // ignore: unused_field

	// Translations
	late final _StringsCommonVi common = _StringsCommonVi._(_root);
	late final _StringsHomeVi home = _StringsHomeVi._(_root);
	late final _StringsCommunityVi community = _StringsCommunityVi._(_root);
	late final _StringsCatalogVi catalog = _StringsCatalogVi._(_root);
	late final _StringsCoreVi core = _StringsCoreVi._(_root);
	late final _StringsExtensionVi extension = _StringsExtensionVi._(_root);
	late final _StringsSysVi sys = _StringsSysVi._(_root);
}

// Path: common
class _StringsCommonVi {
	_StringsCommonVi._(this._root);

	final _StringsVi _root; // ignore: unused_field

	// Translations
	String get ok => 'Đồng ý';
	String get cancel => 'Hủy';
	String get retry => 'Thử lại';
	String get download => 'Tải xuống';
}

// Path: home
class _StringsHomeVi {
	_StringsHomeVi._(this._root);

	final _StringsVi _root; // ignore: unused_field

	// Translations
	String get shelf_book => 'Kệ sách';
	String get discover => 'Khám phá';
	String get community => 'Cộng đồng';
	String get individual => 'Cá nhân';
	late final _StringsHomeHistoryVi history = _StringsHomeHistoryVi._(_root);
}

// Path: community
class _StringsCommunityVi {
	_StringsCommunityVi._(this._root);

	final _StringsVi _root; // ignore: unused_field

	// Translations
	String get chat => 'Chat';
	String get share_book => 'Chia sẻ truyện';
	String get discuss => 'Thảo luận';
	String get suggestions_and_bug_reports => 'Góp ý & báo lỗi';
}

// Path: catalog
class _StringsCatalogVi {
	_StringsCatalogVi._(this._root);

	final _StringsVi _root; // ignore: unused_field

	// Translations
	String get add_to_shelf => 'Thêm vào kệ';
	String get title => 'Mục lục';
}

// Path: core
class _StringsCoreVi {
	_StringsCoreVi._(this._root);

	final _StringsVi _root; // ignore: unused_field

	// Translations
	late final _StringsCoreNavigationVi navigation = _StringsCoreNavigationVi._(_root);
	late final _StringsCoreErrorsVi errors = _StringsCoreErrorsVi._(_root);
}

// Path: extension
class _StringsExtensionVi {
	_StringsExtensionVi._(this._root);

	final _StringsVi _root; // ignore: unused_field

	// Translations
	late final _StringsExtensionUpdateVi update = _StringsExtensionUpdateVi._(_root);
	late final _StringsExtensionLibraryVi library = _StringsExtensionLibraryVi._(_root);
}

// Path: sys
class _StringsSysVi {
	_StringsSysVi._(this._root);

	final _StringsVi _root; // ignore: unused_field

	// Translations
	late final _StringsSysRemoteVi remote = _StringsSysRemoteVi._(_root);
}

// Path: home.history
class _StringsHomeHistoryVi {
	_StringsHomeHistoryVi._(this._root);

	final _StringsVi _root; // ignore: unused_field

	// Translations
	String get title => 'Lịch sử';
	String get older => 'CŨ HƠN';
}

// Path: core.navigation
class _StringsCoreNavigationVi {
	_StringsCoreNavigationVi._(this._root);

	final _StringsVi _root; // ignore: unused_field

	// Translations
	late final _StringsCoreNavigationBottomVi bottom = _StringsCoreNavigationBottomVi._(_root);
}

// Path: core.errors
class _StringsCoreErrorsVi {
	_StringsCoreErrorsVi._(this._root);

	final _StringsVi _root; // ignore: unused_field

	// Translations
	late final _StringsCoreErrorsFormVi form = _StringsCoreErrorsFormVi._(_root);
	late final _StringsCoreErrorsOthersVi others = _StringsCoreErrorsOthersVi._(_root);
}

// Path: extension.update
class _StringsExtensionUpdateVi {
	_StringsExtensionUpdateVi._(this._root);

	final _StringsVi _root; // ignore: unused_field

	// Translations
	String get title => 'Bản cập nhật';
}

// Path: extension.library
class _StringsExtensionLibraryVi {
	_StringsExtensionLibraryVi._(this._root);

	final _StringsVi _root; // ignore: unused_field

	// Translations
	String get title => 'Thư viện';
}

// Path: sys.remote
class _StringsSysRemoteVi {
	_StringsSysRemoteVi._(this._root);

	final _StringsVi _root; // ignore: unused_field

	// Translations
	String get no_internet_exception => 'noInternetException';
	String get unknown_exception => 'unknownException';
	String get cancellation_exception => 'cancellationException';
	String get token_expired => 'tokenExpired';
	String get bad_certificate => 'Fail https requests for older devices.';
}

// Path: core.navigation.bottom
class _StringsCoreNavigationBottomVi {
	_StringsCoreNavigationBottomVi._(this._root);

	final _StringsVi _root; // ignore: unused_field

	// Translations
	String get home => 'Trang chủ';
	String get setting => 'Cài đặt';
}

// Path: core.errors.form
class _StringsCoreErrorsFormVi {
	_StringsCoreErrorsFormVi._(this._root);

	final _StringsVi _root; // ignore: unused_field

	// Translations
	String max_length({required Object field, required Object count}) => '${field} cannot be more than ${count} characters.';
	String min_length({required Object field, required Object count}) => '${field} cannot be less than ${count} characters.';
	String required({required Object field}) => '${field} is required.';
	String get email => 'You entered an invalid email address.';
}

// Path: core.errors.others
class _StringsCoreErrorsOthersVi {
	_StringsCoreErrorsOthersVi._(this._root);

	final _StringsVi _root; // ignore: unused_field

	// Translations
	String get no_item_found => 'There is no data to show.';
	String get something_went_wrong => 'Something went wrong and data couldn\'t loaded.';
	String get an_unknown_error => 'An unknown error happened.';
	String get no_internet_connection => 'Internet connectivity is not available.';
	String get server_failure => 'Server failure encountered.';
	String get communication_error => 'There was an error with our communication with the servers.';
}
