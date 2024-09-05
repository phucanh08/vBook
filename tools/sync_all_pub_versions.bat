@echo off
setlocal enabledelayedexpansion

rem Lấy đường dẫn hiện tại và đường dẫn gốc của dự án
for %%i in (%~dp0..) do set root_project_path=%%~fi

rem Đường dẫn đến các tệp pubspec.yaml
set pubspec_app_path=%root_project_path%\app\pubspec.yaml
set pubspec_data_path=%root_project_path%\data\pubspec.yaml
set pubspec_domain_path=%root_project_path%\domain\pubspec.yaml
set pubspec_shared_path=%root_project_path%\shared\pubspec.yaml
set pubspec_initializer_path=%root_project_path%\initializer\pubspec.yaml
set pubspec_resources_path=%root_project_path%\resources\pubspec.yaml
set pubspec_nals_lints_path=%root_project_path%\nals_lints\pubspec.yaml

set pubspec_versions_path=%root_project_path%\pub_versions.yaml

rem Đọc các cặp key-value từ file YAML
for /f "tokens=1,2 delims=:" %%a in ('type %pubspec_versions_path%') do (
    rem Loại bỏ khoảng trắng đầu và cuối trong key và value
    set "key=%%a"
    set "value=%%b"
    set "key=!key: =!"
    set "value=!value: =!"

    rem Kiểm tra xem key và value có giá trị không
    if defined key (
        if defined value (
            rem Sử dụng biến động để giả lập mảng
            set "version_map_!key!=%%b"
        )
    )
)

rem Gọi hàm replaceVersions cho các tệp pubspec.yaml
call :replaceVersions %pubspec_app_path%
call :replaceVersions %pubspec_data_path%
call :replaceVersions %pubspec_domain_path%
call :replaceVersions %pubspec_shared_path%
call :replaceVersions %pubspec_initializer_path%
call :replaceVersions %pubspec_resources_path%
call :replaceVersions %pubspec_nals_lints_path%

goto :eof

rem Hàm thay thế phiên bản
:replaceVersions
set file_path=%1
set n=1

echo =====%file_path%=====

rem Khởi tạo biến dependencies
set dependencies=false

rem Đọc các dòng từ file
for /f "usebackq delims=" %%a in ("%file_path%") do (
    set "line=%%a"

    rem Kiểm tra nếu dòng chứa thông tin dependency
    if "!line!" neq "" (
        for /f "tokens=1 delims=:" %%b in ("!line!") do (
            set "temp=%%b"
            set "temp=!temp: =!"

            rem So sánh biến đã loại bỏ khoảng trắng với biến ban đầu
            if not "%%b" == "!temp!" (
                if "!dependencies!" == "true" (
                    rem Tìm phiên bản từ mảng version_maps
                    for /f "tokens=1,* delims==" %%c in ('set version_map_') do (
                        if "version_map_!temp!" == "%%c" (
                            set "value=  !temp!:%%d"

                            rem Thay thế phiên bản trong tệp nếu cần thiết
                            if not "!line!" == "!value!" (
                                echo !n!: !line! = !value!

                                call :replaceLineInFile !file_path! !n! !temp! %%d
                            )
                        )
                    )
                )
            ) else (
                if "%%b" == "dependencies" (
                    set dependencies=true
                ) else if "%%b" == "dev_dependencies" (
                    set dependencies=true
                ) else if "%%b" == "dependency_overrides" (
                    set dependencies=true
                ) else (
                    set dependencies=false
                )
            )
        )
    )
    set /a n=n+1
)
goto :eof

rem Hàm thay thế dòng trong tệp
:replaceLineInFile
set file=%1
set linenum=%2
set newline=  %3: %4

(for /f "tokens=1* delims=:" %%a in ('findstr /n "^" %file%') do (
    if %%a equ %linenum% (echo %newline%) else (echo %%b)
)) > "%file%.tmp"
move /y "%file%.tmp" "%file%"
goto :eof
