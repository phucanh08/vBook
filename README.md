<div align="center"> <a href="https://github.com/anncwb/vue-vben-admin"> <img alt="VbenAdmin Logo" width="200" height="200" src="https://anncwb.github.io/anncwb/images/logo.png"> </a> <br> <br>

[![license](https://img.shields.io/github/license/anncwb/vue-vben-admin.svg)](LICENSE)

<h1>VBook</h1>
</div>

**Tiếng Việt**


- [Giới thiệu (Introduction)](#giới-thiệu)
- [Tính năng (Feature)](#tính-năng)
- [Bắt đầu (Getting Started)](#bắt-đầu )
  - [Yêu cầu (Requirements)](#yêu-cầu)
  - [Cài đặt (Install)](#cài-đặt)
  - [Cấu hình và chạy app (Config and run app)](#cấu-hình-và-chạy-app)
- [Tam Trụ](#tam-trụ)
  - [Quản lý State](#quản-lý-state)
    - [Quản lý Reactive State](#quản-lý-reactive-state)
    - [Thêm thông tin về quản lý state](#thêm-thông-tin-về-quản-lý-state)
  - [Quản lý route](#quản-lý-route)
    - [Thêm thông tin về quản lý route](#thêm-thông-tin-về-quản-lý-route)
  - [Quản lý dependency](#quản-lý-dependency)
    - [Thêm thông tin về quản lý dependency](#thêm-thông-tin-về-quản-lý-dependency)
- [Utils](#utils)
  - [Internationalization](#internationalization)
    - [Dịch thuật](#dịch-thuật)
      - [Sử dụng bản dịch thuật](#sử-dụng-bản-dịch-thuật)
    - [Locales](#locales)
      - [Đổi locale](#đổi-locale)
      - [System locale](#system-locale)
  - [Đổi Theme](#đổi-theme)
  - [GetConnect](#getconnect)
    - [Cấu hình mặc định](#cấu-hình-mặc-định)
    - [Cấu hình tùy chỉnh](#cấu-hình-tùy-chỉnh)
  - [GetPage Middleware](#getpage-middleware)
    - [Ưu tiên](#ưu-tiên)
    - [Chuyển hướng](#chuyển-hướng)
    - [onPageCalled](#onpagecalled)
    - [OnBindingsStart](#onbindingsstart)
    - [OnPageBuildStart](#onpagebuildstart)
    - [OnPageBuilt](#onpagebuilt)
    - [OnPageDispose](#onpagedispose)
  - [APIs nâng cao khác](#apis-nâng-cao-khác)
    - [Cấu hình thủ công và cài đặt chung tuỳ chọn](#cấu-hình-thủ-công-và-cài-đặt-chung-tuỳ-chọn)
    - [Local State Widgets](#local-state-widgets)
      - [ValueBuilder](#valuebuilder)
      - [ObxValue](#obxvalue)
  - [Mẹo hữu ích](#mẹo-hữu-ích)
    - [GetView](#getview)
    - [GetResponsiveView](#getresponsiveview)
      - [Hướng dẫn sử dụng trước khi dùng](#hướng-dẫn-sử-dụng-trước-khi-dùng)
    - [GetWidget](#getwidget)
    - [GetxService](#getxservice)

# Giới thiệu

A new Flutter project.

# Tính năng

1. Architecture: Clean Architecture
2. State management: [flutter_bloc](https://pub.dev/packages/flutter_bloc)
3. Navigation: [auto_route](https://pub.dev/packages/auto_route)
4. DI: [get_it](https://pub.dev/packages/get_it), [injectable](https://pub.dev/packages/injectable)
5. REST API: [dio](https://pub.dev/packages/dio)
6. GraphQL: [artemis](https://pub.dev/packages/artemis), [graphql_flutter](https://pub.dev/packages/graphql_flutter)
7. Database: [objectbox](https://pub.dev/packages/objectbox)
8. Shared Preferences: [encrypted_shared_preferences](https://pub.dev/packages/encrypted_shared_preferences)
9. Data class: [freezed](https://pub.dev/packages/freezed)
10. Lint: [dart_code_metrics](https://pub.dev/packages/dart_code_metrics), [flutter_lints](https://pub.dev/packages/flutter_lints)
11. Unit Test: [mocktail](https://pub.dev/packages/mocktail), [bloc_test](https://pub.dev/packages/bloc_test)
12. Paging: [infinite_scroll_pagination](https://pub.dev/packages/infinite_scroll_pagination)
13. Utils: [rxdart](https://pub.dev/packages/rxdart), [dartx](https://pub.dev/packages/dartx), [async](https://pub.dev/packages/async)
14. Assets generator: [flutter_gen_runner](https://pub.dev/packages/flutter_gen_runner), [flutter_launcher_icons](https://pub.dev/packages/flutter_launcher_icons), [flutter_native_splash](https://pub.dev/packages/flutter_native_splash)


# Bắt đầu

## Yêu cầu

- Dart: 2.18.5
- Flutter SDK: 3.7.1
- Melos: 2.8.0
- CocoaPods: 1.11.

## Cài đặt

- (Bổ sung sau)

## Cấu hình và chạy app

- (Bổ sung sau)