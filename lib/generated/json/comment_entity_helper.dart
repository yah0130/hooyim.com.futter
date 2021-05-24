import 'package:hooyim/api/bean/comment_entity.dart';

commentEntityFromJson(CommentEntity data, Map<String, dynamic> json) {
	if (json['status'] != null) {
		data.status = json['status'].toString();
	}
	if (json['message'] != null) {
		data.message = json['message'].toString();
	}
	if (json['result'] != null) {
		data.result = CommentResult().fromJson(json['result']);
	}
	return data;
}

Map<String, dynamic> commentEntityToJson(CommentEntity entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['status'] = entity.status;
	data['message'] = entity.message;
	data['result'] = entity.result?.toJson();
	return data;
}

commentResultFromJson(CommentResult data, Map<String, dynamic> json) {
	if (json['data'] != null) {
		data.data = (json['data'] as List).map((v) => CommentResultData().fromJson(v)).toList();
	}
	if (json['params'] != null) {
		data.params = CommentResultParams().fromJson(json['params']);
	}
	if (json['pagination'] != null) {
		data.pagination = CommentResultPagination().fromJson(json['pagination']);
	}
	return data;
}

Map<String, dynamic> commentResultToJson(CommentResult entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['data'] =  entity.data?.map((v) => v.toJson())?.toList();
	data['params'] = entity.params?.toJson();
	data['pagination'] = entity.pagination?.toJson();
	return data;
}

commentResultDataFromJson(CommentResultData data, Map<String, dynamic> json) {
	if (json['pid'] != null) {
		data.pid = json['pid'] is String
				? int.tryParse(json['pid'])
				: json['pid'].toInt();
	}
	if (json['state'] != null) {
		data.state = json['state'] is String
				? int.tryParse(json['state'])
				: json['state'].toInt();
	}
	if (json['is_top'] != null) {
		data.isTop = json['is_top'];
	}
	if (json['likes'] != null) {
		data.likes = json['likes'] is String
				? int.tryParse(json['likes'])
				: json['likes'].toInt();
	}
	if (json['_id'] != null) {
		data.sId = json['_id'].toString();
	}
	if (json['id'] != null) {
		data.id = json['id'] is String
				? int.tryParse(json['id'])
				: json['id'].toInt();
	}
	if (json['post_id'] != null) {
		data.postId = json['post_id'] is String
				? int.tryParse(json['post_id'])
				: json['post_id'].toInt();
	}
	if (json['content'] != null) {
		data.content = json['content'].toString();
	}
	if (json['agent'] != null) {
		data.agent = json['agent'].toString();
	}
	if (json['ip_location'] != null) {
		data.ipLocation = CommentResultDataIpLocation().fromJson(json['ip_location']);
	}
	if (json['ip'] != null) {
		data.ip = json['ip'].toString();
	}
	if (json['extends'] != null) {
		data.xExtends = (json['extends'] as List).map((v) => v).toList().cast<dynamic>();
	}
	if (json['create_at'] != null) {
		data.createAt = json['create_at'].toString();
	}
	if (json['author'] != null) {
		data.author = CommentResultDataAuthor().fromJson(json['author']);
	}
	if (json['__v'] != null) {
		data.iV = json['__v'] is String
				? int.tryParse(json['__v'])
				: json['__v'].toInt();
	}
	if (json['update_at'] != null) {
		data.updateAt = json['update_at'].toString();
	}
	return data;
}

Map<String, dynamic> commentResultDataToJson(CommentResultData entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['pid'] = entity.pid;
	data['state'] = entity.state;
	data['is_top'] = entity.isTop;
	data['likes'] = entity.likes;
	data['_id'] = entity.sId;
	data['id'] = entity.id;
	data['post_id'] = entity.postId;
	data['content'] = entity.content;
	data['agent'] = entity.agent;
	data['ip_location'] = entity.ipLocation?.toJson();
	data['ip'] = entity.ip;
	data['extends'] = entity.xExtends;
	data['create_at'] = entity.createAt;
	data['author'] = entity.author?.toJson();
	data['__v'] = entity.iV;
	data['update_at'] = entity.updateAt;
	return data;
}

commentResultDataIpLocationFromJson(CommentResultDataIpLocation data, Map<String, dynamic> json) {
	if (json['country'] != null) {
		data.country = json['country'].toString();
	}
	if (json['range'] != null) {
		data.range = (json['range'] as List).map((v) => v is String
				? int.tryParse(v)
				: v.toInt()).toList().cast<int>();
	}
	if (json['city'] != null) {
		data.city = json['city'].toString();
	}
	return data;
}

Map<String, dynamic> commentResultDataIpLocationToJson(CommentResultDataIpLocation entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['country'] = entity.country;
	data['range'] = entity.range;
	data['city'] = entity.city;
	return data;
}

commentResultDataAuthorFromJson(CommentResultDataAuthor data, Map<String, dynamic> json) {
	if (json['name'] != null) {
		data.name = json['name'].toString();
	}
	if (json['email'] != null) {
		data.email = json['email'].toString();
	}
	return data;
}

Map<String, dynamic> commentResultDataAuthorToJson(CommentResultDataAuthor entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['name'] = entity.name;
	data['email'] = entity.email;
	return data;
}

commentResultParamsFromJson(CommentResultParams data, Map<String, dynamic> json) {
	if (json['querys'] != null) {
		data.querys = CommentResultParamsQuerys().fromJson(json['querys']);
	}
	if (json['options'] != null) {
		data.options = CommentResultParamsOptions().fromJson(json['options']);
	}
	if (json['params'] != null) {
		data.params = CommentResultParamsParams().fromJson(json['params']);
	}
	if (json['isAuthenticated'] != null) {
		data.isAuthenticated = json['isAuthenticated'];
	}
	return data;
}

Map<String, dynamic> commentResultParamsToJson(CommentResultParams entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['querys'] = entity.querys?.toJson();
	data['options'] = entity.options?.toJson();
	data['params'] = entity.params?.toJson();
	data['isAuthenticated'] = entity.isAuthenticated;
	return data;
}

commentResultParamsQuerysFromJson(CommentResultParamsQuerys data, Map<String, dynamic> json) {
	if (json['state'] != null) {
		data.state = json['state'] is String
				? int.tryParse(json['state'])
				: json['state'].toInt();
	}
	if (json['post_id'] != null) {
		data.postId = json['post_id'].toString();
	}
	return data;
}

Map<String, dynamic> commentResultParamsQuerysToJson(CommentResultParamsQuerys entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['state'] = entity.state;
	data['post_id'] = entity.postId;
	return data;
}

commentResultParamsOptionsFromJson(CommentResultParamsOptions data, Map<String, dynamic> json) {
	if (json['sort'] != null) {
		data.sort = CommentResultParamsOptionsSort().fromJson(json['sort']);
	}
	if (json['page'] != null) {
		data.page = json['page'] is String
				? int.tryParse(json['page'])
				: json['page'].toInt();
	}
	if (json['limit'] != null) {
		data.limit = json['limit'] is String
				? int.tryParse(json['limit'])
				: json['limit'].toInt();
	}
	return data;
}

Map<String, dynamic> commentResultParamsOptionsToJson(CommentResultParamsOptions entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['sort'] = entity.sort?.toJson();
	data['page'] = entity.page;
	data['limit'] = entity.limit;
	return data;
}

commentResultParamsOptionsSortFromJson(CommentResultParamsOptionsSort data, Map<String, dynamic> json) {
	if (json['_id'] != null) {
		data.iId = json['_id'] is String
				? int.tryParse(json['_id'])
				: json['_id'].toInt();
	}
	return data;
}

Map<String, dynamic> commentResultParamsOptionsSortToJson(CommentResultParamsOptionsSort entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['_id'] = entity.iId;
	return data;
}

commentResultParamsParamsFromJson(CommentResultParamsParams data, Map<String, dynamic> json) {
	if (json['url'] != null) {
		data.url = json['url'].toString();
	}
	return data;
}

Map<String, dynamic> commentResultParamsParamsToJson(CommentResultParamsParams entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['url'] = entity.url;
	return data;
}

commentResultPaginationFromJson(CommentResultPagination data, Map<String, dynamic> json) {
	if (json['total'] != null) {
		data.total = json['total'] is String
				? int.tryParse(json['total'])
				: json['total'].toInt();
	}
	if (json['current_page'] != null) {
		data.currentPage = json['current_page'] is String
				? int.tryParse(json['current_page'])
				: json['current_page'].toInt();
	}
	if (json['total_page'] != null) {
		data.totalPage = json['total_page'] is String
				? int.tryParse(json['total_page'])
				: json['total_page'].toInt();
	}
	if (json['per_page'] != null) {
		data.perPage = json['per_page'] is String
				? int.tryParse(json['per_page'])
				: json['per_page'].toInt();
	}
	return data;
}

Map<String, dynamic> commentResultPaginationToJson(CommentResultPagination entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['total'] = entity.total;
	data['current_page'] = entity.currentPage;
	data['total_page'] = entity.totalPage;
	data['per_page'] = entity.perPage;
	return data;
}