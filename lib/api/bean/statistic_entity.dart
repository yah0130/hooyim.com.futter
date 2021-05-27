import 'package:hooyim/generated/json/base/json_convert_content.dart';

class StatisticEntity with JsonConvert<StatisticEntity> {
	String status;
	String message;
	StatisticResult result;
}

class StatisticResult with JsonConvert<StatisticResult> {
	int tags;
	int views;
	int articles;
	int comments;
}
