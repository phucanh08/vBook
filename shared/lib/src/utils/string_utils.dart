extension StringExtensions on String {
  String plus(String other) {
    return this + other;
  }

  bool equalsIgnoreCase(String secondString) => toLowerCase().contains(secondString.toLowerCase());

  // This function converts the string to lowercase, then perform the conversion
  String toLowerCaseNonAccentVietnamese() {
    String data = toLowerCase();
    data = data.replaceAll(RegExp(r'[aáàảãạâấầẩẫậăắằẳẵặ]'), 'a');
    data = data.replaceAll(RegExp(r'[eèéẹẻẽêềếệểễ]'), 'e');
    data = data.replaceAll(RegExp(r'[iíìỉĩị]'), 'i');
    data = data.replaceAll(RegExp(r'[oòóọỏõôồốộổỗơờớợởỡ]'), 'o');
    data = data.replaceAll(RegExp(r'[uùúụủũưừứựửữ]'), 'u');
    data = data.replaceAll(RegExp(r'[yỳýỵỷỹ]'), 'y');
    data = data.replaceAll(RegExp(r'[dđ]'), 'd');
    // Some system encode vietnamese combining accent as individual utf-8 characters
    data = data.replaceAll(RegExp(r'[\u0300\u0301\u0303\u0309\u0323]'), '');
    data = data.replaceAll(RegExp(r'[\u02C6\u0306\u031B]'), '');

    return data;
  }

  // This function keeps the casing unchanged for str, then perform the conversion
  String toNonAccentVietnamese() {
    String data = this;
    data = data.replaceAll(RegExp(r'[AÁÀẢÃẠÂẤẦẨẪẬĂẮẲẰẴẶ]'), 'A');
    data = data.replaceAll(RegExp(r'[aáàảãạâấầẩẫậăắằẳẵặ]'), 'a');
    data = data.replaceAll(RegExp(r'[EÉÈẺẼẸÊẾỀỂỄỆ]'), 'E');
    data = data.replaceAll(RegExp(r'[eèéẹẻẽêềếệểễ]'), 'e');
    data = data.replaceAll(RegExp(r'[IÍÌỈĨỊ]'), 'I');
    data = data.replaceAll(RegExp(r'[iìíịỉĩ]'), 'i');
    data = data.replaceAll(RegExp(r'[OÓÒỎÕỌÔỐỒỔỖỘƠỚỜỞỠỢ]'), 'O');
    data = data.replaceAll(RegExp(r'[oòóọỏõôồốộổỗơờớợởỡ]'), 'o');
    data = data.replaceAll(RegExp(r'[UÚÙỦŨỤƯỨỪỬỮỰ]'), 'U');
    data = data.replaceAll(RegExp(r'[uùúụủũưừứựửữ]'), 'u');
    data = data.replaceAll(RegExp(r'[yÝỲỶỸỴ]'), 'Y');
    data = data.replaceAll(RegExp(r'[Yỳýỵỷỹ]'), 'y');
    data = data.replaceAll(RegExp(r'[DĐ]'), 'D');
    data = data.replaceAll(RegExp(r'[dđ]'), 'd');
    // Some system encode vietnamese combining accent as individual utf-8 characters
    data = data.replaceAll(RegExp(r'[\u0300\u0301\u0303\u0309\u0323]'), '');
    data = data.replaceAll(RegExp(r'[\u02C6\u0306\u031B]'), '');

    return data;
  }
}
