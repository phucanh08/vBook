ifeq ($(OS),Windows_NT)
    BUILD_CMD=.\build_and_run_app.bat
    METRICS_CMD=.\tools\custom_lint.bat
    COMMIT_CHECK_CMD=.\tools\check_commit_message.bat
    SYNC_ALL_PUB_VERSIONS=.\tools\sync_all_pub_versions.bat
else
    BUILD_CMD=./build_and_run_app.sh
    METRICS_CMD=./tools/custom_lint.sh
    COMMIT_CHECK_CMD=./tools/check_commit_message.sh
    SYNC_ALL_PUB_VERSIONS=.\tools\sync_all_pub_versions.sh
endif

update_app_icon:
	cd app && dart run flutter_launcher_icons:main -f app_icon/app-icon.yaml

update_splash:
	cd app && dart run flutter_native_splash:create --path=splash/splash.yaml

remove_splash:
	cd app && dart run flutter_native_splash:remove --path=splash/splash.yaml

l10n:
	@dart pub global run melos run l10n

slang:
	@dart pub global run melos run slang

test:
	@dart pub global run melos run test
test_app:
	@dart pub global run melos run test_app
test_domain:
	@dart pub global run melos run test_domain
test_data:
	@dart pub global run melos run test_data
test_shared:
	@dart pub global run melos run test_shared

clean:
	@dart pub global run melos clean

pub_get:
	@dart pub global run melos bootstrap

format:
	@dart pub global run melos run format

analyze:
	@dart pub global run melos run analyze
analyze_app:
	@dart pub global run melos run analyze_app
analyze_data:
	@dart pub global run melos run analyze_data
analyze_domain:
	@dart pub global run melos run analyze_domain
analyze_shared:
	@dart pub global run melos run analyze_shared

lint:
	@dart pub global run melos run lint

metrics:
	@dart pub global run melos run metrics
metrics_app:
	@dart pub global run melos run metrics_app
metrics_data:
	@dart pub global run melos run metrics_data
metrics_domain:
	@dart pub global run melos run metrics_domain
metrics_shared:
	@dart pub global run melos run metrics_shared

format_lint:
	@dart pub global run melos run format_lint

test_coverage:
	@dart pub global run melos run test_coverage

check_unused_files:
	@dart pub global run melos run check_unused_files

sync:
	@dart pub global run melos bootstrap
	@dart pub global run melos run slang
	@dart pub global run melos run force_build_all

build_all:
	@dart pub global run melos run build_all
build_app:
	@dart pub global run melos run build_app
build_domain:
	@dart pub global run melos run build_domain
build_data:
	@dart pub global run melos run build_data
build_resources:
	@dart pub global run melos run build_resources
build_shared:
	@dart pub global run melos run build_shared

force_build_all:
	@dart pub global run melos run force_build_all
force_build_app:
	@dart pub global run melos run force_build_app
force_build_domain:
	@dart pub global run melos run force_build_domain
force_build_data:
	@dart pub global run melos run force_build_data
force_build_resources:
	@dart pub global run melos run force_build_resources
force_build_shared:
	@dart pub global run melos run force_build_shared

watch_all:
	@dart pub global run melos run watch_all
watch_app:
	@dart pub global run melos run watch_app
watch_domain:
	@dart pub global run melos run watch_domain
watch_data:
	@dart pub global run melos run watch_data
watch_shared:
	@dart pub global run melos run watch_shared

force_watch_all:
	@dart pub global run melos run force_watch_all
force_watch_app:
	@dart pub global run melos run force_watch_app
force_watch_domain:
	@dart pub global run melos run force_watch_domain
force_watch_data:
	@dart pub global run melos run force_watch_data
force_watch_shared:
	@dart pub global run melos run force_watch_shared

run_dev:
	cd tools && $(BUILD_CMD) develop run
run_qa:
	cd tools && $(BUILD_CMD) qa run
run_stg:
	cd tools && $(BUILD_CMD) staging run

run_prod:
	cd tools && $(BUILD_CMD) production run
build_dev_apk:
	cd tools && $(BUILD_CMD) develop build apk
build_qa_apk:
	cd tools && $(BUILD_CMD) qa build apk
build_stg_apk:
	cd tools && $(BUILD_CMD) staging build apk
build_prod_apk:
	cd tools && $(BUILD_CMD) production build apk

build_dev_bundle:
	cd tools && $(BUILD_CMD) develop build appbundle
build_qa_bundle:
	cd tools && $(BUILD_CMD) qa build appbundle
build_stg_bundle:
	cd tools && $(BUILD_CMD) staging build appbundle
build_prod_bundle:
	cd tools && $(BUILD_CMD) production build appbundle

build_dev_ios:
	cd tools && $(BUILD_CMD) develop build ios
build_qa_ios:
	cd tools && $(BUILD_CMD) qa build ios
build_stg_ios:
	cd tools && $(BUILD_CMD) staging build ios
build_prod_ios:
	cd tools && $(BUILD_CMD) production build ios

build_dev_ipa:
	cd tools && $(BUILD_CMD) develop build ipa --export-options-plist=ios/exportOptions.plist
build_qa_ipa:
	cd tools && $(BUILD_CMD) qa build ipa --export-options-plist=ios/exportOptions.plist
build_stg_ipa:
	cd tools && $(BUILD_CMD) staging build ipa --export-options-plist=ios/exportOptions.plist
build_prod_ipa:
	cd tools && $(BUILD_CMD) production build ipa --export-options-plist=ios/exportOptions.plist

pub_get_data:
	@dart pub global run melos run pub_get_data
pub_get_domain:
	@dart pub global run melos run pub_get_domain
pub_get_app:
	@dart pub global run melos run pub_get_app
pub_get_shared:
	@dart pub global run melos run pub_get_shared

custom_lint:
	$(METRICS_CMD)

check_commit_message:
	$(COMMIT_CHECK_CMD) "$(shell git log --format=%B -n 1 --no-merges $(BITBUCKET_COMMIT))"

gen_env:
	dart pub get --directory=tools/gen_env
	dart run tools/gen_env/lib/main.dart

pub_upgrade:
	dart pub global run melos pub_upgrade
	
pub_sync:
	$(SYNC_ALL_PUB_VERSIONS)
	dart pub global run melos bootstrap

dart_fix:
	dart fix --apply
