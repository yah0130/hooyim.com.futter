import 'package:hooyim/generated/json/base/json_convert_content.dart';
import 'package:hooyim/generated/json/base/json_field.dart';

class ArticleDetailEntity with JsonConvert<ArticleDetailEntity> {
	String status;
	String message;
	ArticleDetailResult result;
}

class ArticleDetailResult with JsonConvert<ArticleDetailResult> {
	List<String> keywords;
	int state;
	int public;
	int origin;
	List<ArticleDetailResultTag> tag;
	List<ArticleDetailResultCategory> category;
	@JSONField(name: "_id")
	String sId;
	String title;
	String description;
	String content;
	String thumb;
	@JSONField(name: "extends")
	List<dynamic> xExtends;
	ArticleDetailResultMeta meta;
	@JSONField(name: "create_at")
	String createAt;
	@JSONField(name: "update_at")
	String updateAt;
	int id;
	@JSONField(name: "__v")
	int iV;
	@JSONField(name: "t_content")
	String tContent;
	List<ArticleDetailResultRelated> related;
}

class ArticleDetailResultTag with JsonConvert<ArticleDetailResultTag> {
	@JSONField(name: "_id")
	String sId;
	String name;
	String slug;
	String description;
	@JSONField(name: "extends")
	List<ArticleDetailResultTagExtend> xExtends;
	@JSONField(name: "create_at")
	String createAt;
	@JSONField(name: "update_at")
	String updateAt;
	int id;
	@JSONField(name: "__v")
	int iV;
}

class ArticleDetailResultTagExtend with JsonConvert<ArticleDetailResultTagExtend> {
	@JSONField(name: "_id")
	String sId;
	String name;
	String value;
}

class ArticleDetailResultCategory with JsonConvert<ArticleDetailResultCategory> {
	dynamic pid;
	@JSONField(name: "_id")
	String sId;
	String name;
	String slug;
	String description;
	@JSONField(name: "extends")
	List<ArticleDetailResultCategoryExtend> xExtends;
	@JSONField(name: "create_at")
	String createAt;
	@JSONField(name: "update_at")
	String updateAt;
	int id;
	@JSONField(name: "__v")
	int iV;
}

class ArticleDetailResultCategoryExtend with JsonConvert<ArticleDetailResultCategoryExtend> {
	@JSONField(name: "_id")
	String sId;
	String name;
	String value;
}

class ArticleDetailResultMeta with JsonConvert<ArticleDetailResultMeta> {
	int likes;
	int views;
	int comments;
	@JSONField(name: "_id")
	String sId;
}

class ArticleDetailResultRelated with JsonConvert<ArticleDetailResultRelated> {
	String title;
	String description;
	String thumb;
	ArticleDetailResultRelatedMeta meta;
	@JSONField(name: "create_at")
	String createAt;
	@JSONField(name: "update_at")
	String updateAt;
	int id;
}

class ArticleDetailResultRelatedMeta with JsonConvert<ArticleDetailResultRelatedMeta> {
	int likes;
	int views;
	int comments;
	@JSONField(name: "_id")
	String sId;
}
