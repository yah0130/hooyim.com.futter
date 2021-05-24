import 'package:hooyim/generated/json/base/json_convert_content.dart';

class UserInfoEntity with JsonConvert<UserInfoEntity> {
	String status;
	String message;
	UserInfoResult result;
}

class UserInfoResult with JsonConvert<UserInfoResult> {
	String name;
	String slogan;
	String gravatar;
}
