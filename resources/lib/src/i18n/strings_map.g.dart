part of 'strings.g.dart';

/// Flat map(s) containing all translations.
/// Only for edge cases! For simple maps, use the map function of this library.

extension on _StringsVi {
	dynamic _flatMapFunction(String path) {
		switch (path) {
			case 'common.ok': return 'Đồng ý';
			case 'common.cancel': return 'Hủy';
			case 'common.retry': return 'Thử lại';
			case 'common.download': return 'Tải xuống';
			case 'home.shelf_book': return 'Kệ sách';
			case 'home.discover': return 'Khám phá';
			case 'home.community': return 'Cộng đồng';
			case 'home.individual': return 'Cá nhân';
			case 'home.history.title': return 'Lịch sử';
			case 'home.history.older': return 'CŨ HƠN';
			case 'community.chat': return 'Chat';
			case 'community.share_book': return 'Chia sẻ truyện';
			case 'community.discuss': return 'Thảo luận';
			case 'community.suggestions_and_bug_reports': return 'Góp ý & báo lỗi';
			case 'catalog.add_to_shelf': return 'Thêm vào kệ';
			case 'catalog.title': return 'Mục lục';
			case 'core.navigation.bottom.home': return 'Trang chủ';
			case 'core.navigation.bottom.setting': return 'Cài đặt';
			case 'core.errors.form.max_length': return ({required Object field, required Object count}) => '${field} cannot be more than ${count} characters.';
			case 'core.errors.form.min_length': return ({required Object field, required Object count}) => '${field} cannot be less than ${count} characters.';
			case 'core.errors.form.required': return ({required Object field}) => '${field} is required.';
			case 'core.errors.form.email': return 'You entered an invalid email address.';
			case 'core.errors.others.no_item_found': return 'There is no data to show.';
			case 'core.errors.others.something_went_wrong': return 'Something went wrong and data couldn\'t loaded.';
			case 'core.errors.others.an_unknown_error': return 'An unknown error happened.';
			case 'core.errors.others.no_internet_connection': return 'Internet connectivity is not available.';
			case 'core.errors.others.server_failure': return 'Server failure encountered.';
			case 'core.errors.others.communication_error': return 'There was an error with our communication with the servers.';
			case 'extension.update.title': return 'Bản cập nhật';
			case 'extension.library.title': return 'Thư viện';
			case 'sys.remote.no_internet_exception': return 'noInternetException';
			case 'sys.remote.unknown_exception': return 'unknownException';
			case 'sys.remote.cancellation_exception': return 'cancellationException';
			case 'sys.remote.token_expired': return 'tokenExpired';
			case 'sys.remote.bad_certificate': return 'Fail https requests for older devices.';
			default: return null;
		}
	}
}
