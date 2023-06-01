extension StringExtensions on String {
  String plus(String other) {
    return this + other;
  }

  bool equalsIgnoreCase(String secondString) => toLowerCase().contains(secondString.toLowerCase());

  // This function converts the string to lowercase, then perform the conversion
  String toLowerCaseNonAccentVietnamese() {
    String data = toLowerCase();
    data = data.replaceAll(RegExp(r'/à|á|ạ|ả|ã|â|ầ|ấ|ậ|ẩ|ẫ|ă|ằ|ắ|ặ|ẳ|ẵ/g'), 'a');
    data = data.replaceAll(RegExp(r'/è|é|ẹ|ẻ|ẽ|ê|ề|ế|ệ|ể|ễ/g'), 'e');
    data = data.replaceAll(RegExp(r'/ì|í|ị|ỉ|ĩ/g'), 'i');
    data = data.replaceAll(RegExp(r'/ò|ó|ọ|ỏ|õ|ô|ồ|ố|ộ|ổ|ỗ|ơ|ờ|ớ|ợ|ở|ỡ/g'), 'o');
    data = data.replaceAll(RegExp(r'/ù|ú|ụ|ủ|ũ|ư|ừ|ứ|ự|ử|ữ/g'), 'u');
    data = data.replaceAll(RegExp(r'/ỳ|ý|ỵ|ỷ|ỹ/g'), 'y');
    data = data.replaceAll(RegExp(r'/đ/g'), 'd');
    // Some system encode vietnamese combining accent as individual utf-8 characters
    data = data.replaceAll(RegExp(r'/\u0300|\u0301|\u0303|\u0309|\u0323/g'), '');
    data = data.replaceAll(RegExp(r'/\u02C6|\u0306|\u031B/g'), '');

    return data;
  }

  // This function keeps the casing unchanged for str, then perform the conversion
  String toNonAccentVietnamese() {
    String data = this;
    data = data.replaceAll(RegExp(r'/A|Á|À|Ã|Ạ|Â|Ấ|Ầ|Ẫ|Ậ|Ă|Ắ|Ằ|Ẵ|Ặ/g'), 'A');
    data = data.replaceAll(RegExp(r'/à|á|ạ|ả|ã|â|ầ|ấ|ậ|ẩ|ẫ|ă|ằ|ắ|ặ|ẳ|ẵ/g'), 'a');
    data = data.replaceAll(RegExp(r'/E|É|È|Ẽ|Ẹ|Ê|Ế|Ề|Ễ|Ệ/g'), 'E');
    data = data.replaceAll(RegExp(r'/è|é|ẹ|ẻ|ẽ|ê|ề|ế|ệ|ể|ễ/g'), 'e');
    data = data.replaceAll(RegExp(r'/I|Í|Ì|Ĩ|Ị/g'), 'I');
    data = data.replaceAll(RegExp(r'/ì|í|ị|ỉ|ĩ/g'), 'i');
    data = data.replaceAll(RegExp(r'/O|Ó|Ò|Õ|Ọ|Ô|Ố|Ồ|Ỗ|Ộ|Ơ|Ớ|Ờ|Ỡ|Ợ/g'), 'O');
    data = data.replaceAll(RegExp(r'/ò|ó|ọ|ỏ|õ|ô|ồ|ố|ộ|ổ|ỗ|ơ|ờ|ớ|ợ|ở|ỡ/g'), 'o');
    data = data.replaceAll(RegExp(r'/U|Ú|Ù|Ũ|Ụ|Ư|Ứ|Ừ|Ữ|Ự/g'), 'U');
    data = data.replaceAll(RegExp(r'/ù|ú|ụ|ủ|ũ|ư|ừ|ứ|ự|ử|ữ/g'), 'u');
    data = data.replaceAll(RegExp(r'/Y|Ý|Ỳ|Ỹ|Ỵ/g'), 'Y');
    data = data.replaceAll(RegExp(r'/ỳ|ý|ỵ|ỷ|ỹ/g'), 'y');
    data = data.replaceAll(RegExp(r'/Đ/g'), 'D');
    data = data.replaceAll(RegExp(r'/đ/g'), 'd');
    // Some system encode vietnamese combining accent as individual utf-8 characters
    data = data.replaceAll(RegExp(r'/\u0300|\u0301|\u0303|\u0309|\u0323/g'), '');
    data = data.replaceAll(RegExp(r'/\u02C6|\u0306|\u031B/g'), '');

    return data;
  }
}
