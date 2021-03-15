import 'package:hooyim/generated/json/base/json_convert_content.dart';
import 'package:hooyim/generated/json/base/json_field.dart';

class ArticleEntity with JsonConvert<ArticleEntity> {
	String status;
	String message;
	ArticleResult result;
}

class ArticleResult with JsonConvert<ArticleResult> {
	List<ArticleResultData> data;
	ArticleResultParams params;
	ArticleResultPagination pagination;
}

class ArticleResultData with JsonConvert<ArticleResultData> {
	List<String> keywords;
	int state;
	int public;
	int origin;
	List<ArticleResultDataTag> tag;
	List<ArticleResultDataCategory> category;
	@JSONField(name: "_id")
	String sId;
	String title;
	String description;
	String thumb;
	@JSONField(name: "extends")
	List<dynamic> xExtends;
	ArticleResultDataMeta meta;
	@JSONField(name: "create_at")
	String createAt;
	@JSONField(name: "update_at")
	String updateAt;
	int id;
	@JSONField(name: "__v")
	int iV;
}

class ArticleResultDataTag with JsonConvert<ArticleResultDataTag> {
	@JSONField(name: "_id")
	String sId;
	String name;
	String slug;
	String description;
	@JSONField(name: "extends")
	List<ArticleResultDataTagExtend> xExtends;
	@JSONField(name: "create_at")
	String createAt;
	@JSONField(name: "update_at")
	String updateAt;
	int id;
	@JSONField(name: "__v")
	int iV;
}

class ArticleResultDataTagExtend with JsonConvert<ArticleResultDataTagExtend> {
	@JSONField(name: "_id")
	String sId;
	String name;
	String value;
}

class ArticleResultDataCategory with JsonConvert<ArticleResultDataCategory> {
	dynamic pid;
	@JSONField(name: "_id")
	String sId;
	String name;
	String slug;
	String description;
	@JSONField(name: "extends")
	List<ArticleResultDataCategoryExtend> xExtends;
	@JSONField(name: "create_at")
	String createAt;
	@JSONField(name: "update_at")
	String updateAt;
	int id;
	@JSONField(name: "__v")
	int iV;
}

class ArticleResultDataCategoryExtend with JsonConvert<ArticleResultDataCategoryExtend> {
	@JSONField(name: "_id")
	String sId;
	String name;
	String value;
}

class ArticleResultDataMeta with JsonConvert<ArticleResultDataMeta> {
	int likes;
	int views;
	int comments;
	@JSONField(name: "_id")
	String sId;
}

class ArticleResultParams with JsonConvert<ArticleResultParams> {
	ArticleResultParamsQuerys querys;
	ArticleResultParamsOptions options;
	ArticleResultParamsParams params;
	bool isAuthenticated;
}

class ArticleResultParamsQuerys with JsonConvert<ArticleResultParamsQuerys> {
	int state;
	int public;
}

class ArticleResultParamsOptions with JsonConvert<ArticleResultParamsOptions> {
	ArticleResultParamsOptionsSort sort;
	int page;
	List<String> populate;
	String select;
}

class ArticleResultParamsOptionsSort with JsonConvert<ArticleResultParamsOptionsSort> {
	@JSONField(name: "_id")
	int iId;
}

class ArticleResultParamsParams with JsonConvert<ArticleResultParamsParams> {
	String url;
}

class ArticleResultPagination with JsonConvert<ArticleResultPagination> {
	int total;
	@JSONField(name: "current_page")
	int currentPage;
	@JSONField(name: "total_page")
	int totalPage;
	@JSONField(name: "per_page")
	int perPage;
}
