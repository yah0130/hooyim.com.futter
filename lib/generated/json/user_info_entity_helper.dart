import 'package:hooyim/api/bean/user_info_entity.dart';

userInfoEntityFromJson(UserInfoEntity data, Map<String, dynamic> json) {
	if (json['status'] != null) {
		data.status = json['status'].toString();
	}
	if (json['message'] != null) {
		data.message = json['message'].toString();
	}
	if (json['result'] != null) {
		data.result = UserInfoResult().fromJson(json['result']);
	}
	return data;
}

Map<String, dynamic> userInfoEntityToJson(UserInfoEntity entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['status'] = entity.status;
	data['message'] = entity.message;
	data['result'] = entity.result?.toJson();
	return data;
}

userInfoResultFromJson(UserInfoResult data, Map<String, dynamic> json) {
	if (json['name'] != null) {
		data.name = json['name'].toString();
	}
	if (json['slogan'] != null) {
		data.slogan = json['slogan'].toString();
	}
	if (json['gravatar'] != null) {
		data.gravatar = json['gravatar'].toString();
	}
	return data;
}

Map<String, dynamic> userInfoResultToJson(UserInfoResult entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['name'] = entity.name;
	data['slogan'] = entity.slogan;
	data['gravatar'] = entity.gravatar;
	return data;
}