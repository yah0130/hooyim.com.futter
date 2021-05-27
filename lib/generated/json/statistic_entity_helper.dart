import 'package:hooyim/api/bean/statistic_entity.dart';

statisticEntityFromJson(StatisticEntity data, Map<String, dynamic> json) {
	if (json['status'] != null) {
		data.status = json['status'].toString();
	}
	if (json['message'] != null) {
		data.message = json['message'].toString();
	}
	if (json['result'] != null) {
		data.result = StatisticResult().fromJson(json['result']);
	}
	return data;
}

Map<String, dynamic> statisticEntityToJson(StatisticEntity entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['status'] = entity.status;
	data['message'] = entity.message;
	data['result'] = entity.result.toJson();
	return data;
}

statisticResultFromJson(StatisticResult data, Map<String, dynamic> json) {
	if (json['tags'] != null) {
		data.tags = json['tags'] is String
				? int.tryParse(json['tags'])
				: json['tags'].toInt();
	}
	if (json['views'] != null) {
		data.views = json['views'] is String
				? int.tryParse(json['views'])
				: json['views'].toInt();
	}
	if (json['articles'] != null) {
		data.articles = json['articles'] is String
				? int.tryParse(json['articles'])
				: json['articles'].toInt();
	}
	if (json['comments'] != null) {
		data.comments = json['comments'] is String
				? int.tryParse(json['comments'])
				: json['comments'].toInt();
	}
	return data;
}

Map<String, dynamic> statisticResultToJson(StatisticResult entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['tags'] = entity.tags;
	data['views'] = entity.views;
	data['articles'] = entity.articles;
	data['comments'] = entity.comments;
	return data;
}