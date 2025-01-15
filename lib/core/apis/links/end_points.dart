class EndPoints {
  static const baseUrl = "https://api.alquran.cloud/v1/";
  static const getData = "quran/ar.alafasy";
  static const getDataForSa3d = "quran/en.asad";
  static String search(String word) {
    return "search/${word}/all/en";
  }

  static const signIn = "user/signin";
  static const logOut = "user/logout";
  static const update = "user/update";
  static const checkEmail = "user/check-email";
  static String getEndPointUser(id) {
    return "user/get-user/$id";
  }

  static String get getEndDeleteUser {
    return "user/delete";
  }
}
