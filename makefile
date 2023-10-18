ifeq ($(OS),Windows_NT)
    BUILD_CMD=.\build_and_run_app.bat
    METRICS_CMD=.\tools\dart_code_metrics.bat
    COMMIT_CHECK_CMD=.\tools\check_commit_message.bat
else
    BUILD_CMD=./build_and_run_app.sh
    METRICS_CMD=./tools/dart_code_metrics.sh
    COMMIT_CHECK_CMD=./tools/check_commit_message.sh
endif

update_app_icon:
	cd app && flutter pub run flutter_launcher_icons:main -f app_icon/app-icon.yaml

update_splash:
	cd app && flutter pub run flutter_native_splash:create --path=splash/splash.yaml

remove_splash:
	cd app && flutter pub run flutter_native_splash:remove --path=splash/splash.yaml

l10n:
	@flutter pub global run melos run l10n

slang:
	@flutter pub global run melos run slang

test:
	@flutter pub global run melos run test

test_app:
	@flutter pub global run melos run test_app

test_domain:
	@flutter pub global run melos run test_domain

test_data:
	@flutter pub global run melos run test_data

test_shared:
	@flutter pub global run melos run test_shared

clean:
	@flutter pub global run melos clean

pub_get:
	@flutter pub global run melos bootstrap

format:
	@flutter pub global run melos run format

analyze:
	@flutter pub global run melos run analyze

analyze_app:
	@flutter pub global run melos run analyze_app

analyze_data:
	@flutter pub global run melos run analyze_data

analyze_domain:
	@flutter pub global run melos run analyze_domain

analyze_shared:
	@flutter pub global run melos run analyze_shared

lint:
	@flutter pub global run melos run lint

metrics:
	@flutter pub global run melos run metrics

metrics_app:
	@flutter pub global run melos run metrics_app

metrics_data:
	@flutter pub global run melos run metrics_data

metrics_domain:
	@flutter pub global run melos run metrics_domain

metrics_shared:
	@flutter pub global run melos run metrics_shared

format_lint:
	@flutter pub global run melos run format_lint

test_coverage:
	@flutter pub global run melos run test_coverage

check_unused_files:
	@flutter pub global run melos run check_unused_files

sync:
	@flutter pub global run melos bootstrap
	@flutter pub global run melos run slang
	@flutter pub global run melos run force_build_all

build_all:
	@flutter pub global run melos run build_all
build_app:
	@flutter pub global run melos run build_app
build_domain:
	@flutter pub global run melos run build_domain
build_data:
	@flutter pub global run melos run build_data
build_resources:
	@flutter pub global run melos run build_resources
build_shared:
	@flutter pub global run melos run build_shared
force_build_all:
	@flutter pub global run melos run force_build_all
force_build_app:
	@flutter pub global run melos run force_build_app
force_build_domain:
	@flutter pub global run melos run force_build_domain
force_build_data:
	@flutter pub global run melos run force_build_data
force_build_resources:
	@flutter pub global run melos run force_build_resources
force_build_shared:
	@flutter pub global run melos run force_build_shared
watch_all:
	@flutter pub global run melos run watch_all
watch_app:
	@flutter pub global run melos run watch_app
watch_domain:
	@flutter pub global run melos run watch_domain
watch_data:
	@flutter pub global run melos run watch_data
watch_shared:
	@flutter pub global run melos run watch_shared
force_watch_all:
	@flutter pub global run melos run force_watch_all
force_watch_app:
	@flutter pub global run melos run force_watch_app
force_watch_domain:
	@flutter pub global run melos run force_watch_domain
force_watch_data:
	@flutter pub global run melos run force_watch_data
force_watch_shared:
	@flutter pub global run melos run force_watch_shared

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
	@flutter pub global run melos run pub_get_data
pub_get_domain:
	@flutter pub global run melos run pub_get_domain
pub_get_app:
	@flutter pub global run melos run pub_get_app
pub_get_shared:
	@flutter pub global run melos run pub_get_shared

dart_code_metrics_presets:
	$(METRICS_CMD)

check_commit_message:
	$(COMMIT_CHECK_CMD) "$(shell git log --format=%B -n 1 --no-merges $(BITBUCKET_COMMIT))"

gen_env:
	dart pub get --directory=tools/gen_env
	dart run tools/gen_env/lib/main.dart

pub_upgrade:
	flutter pub global run melos pub_upgrade
	
pub_sync:
	cd tools && ./sync_all_pub_versions.sh
	flutter pub global run melos bootstrap

dart_fix:
	dart fix --apply
