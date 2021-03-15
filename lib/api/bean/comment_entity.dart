import 'package:hooyim/generated/json/base/json_convert_content.dart';
import 'package:hooyim/generated/json/base/json_field.dart';

class CommentEntity with JsonConvert<CommentEntity> {
	String status;
	String message;
	CommentResult result;
}

class CommentResult with JsonConvert<CommentResult> {
	List<CommentResultData> data;
	CommentResultParams params;
	CommentResultPagination pagination;
}

class CommentResultData with JsonConvert<CommentResultData> {
	int pid;
	int state;
	@JSONField(name: "is_top")
	bool isTop;
	int likes;
	@JSONField(name: "_id")
	String sId;
	int id;
	@JSONField(name: "post_id")
	int postId;
	String content;
	String agent;
	@JSONField(name: "ip_location")
	CommentResultDataIpLocation ipLocation;
	String ip;
	@JSONField(name: "extends")
	List<dynamic> xExtends;
	@JSONField(name: "create_at")
	String createAt;
	CommentResultDataAuthor author;
	@JSONField(name: "__v")
	int iV;
	@JSONField(name: "update_at")
	String updateAt;
}

class CommentResultDataIpLocation with JsonConvert<CommentResultDataIpLocation> {
	String country;
	List<int> range;
	String city;
}

class CommentResultDataAuthor with JsonConvert<CommentResultDataAuthor> {
	String name;
	String email;
}

class CommentResultParams with JsonConvert<CommentResultParams> {
	CommentResultParamsQuerys querys;
	CommentResultParamsOptions options;
	CommentResultParamsParams params;
	bool isAuthenticated;
}

class CommentResultParamsQuerys with JsonConvert<CommentResultParamsQuerys> {
	int state;
	@JSONField(name: "post_id")
	String postId;
}

class CommentResultParamsOptions with JsonConvert<CommentResultParamsOptions> {
	CommentResultParamsOptionsSort sort;
	int page;
	int limit;
}

class CommentResultParamsOptionsSort with JsonConvert<CommentResultParamsOptionsSort> {
	@JSONField(name: "_id")
	int iId;
}

class CommentResultParamsParams with JsonConvert<CommentResultParamsParams> {
	String url;
}

class CommentResultPagination with JsonConvert<CommentResultPagination> {
	int total;
	@JSONField(name: "current_page")
	int currentPage;
	@JSONField(name: "total_page")
	int totalPage;
	@JSONField(name: "per_page")
	int perPage;
}
