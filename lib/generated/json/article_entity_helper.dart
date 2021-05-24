import 'package:hooyim/api/bean/article_entity.dart';

articleEntityFromJson(ArticleEntity data, Map<String, dynamic> json) {
	if (json['status'] != null) {
		data.status = json['status'].toString();
	}
	if (json['message'] != null) {
		data.message = json['message'].toString();
	}
	if (json['result'] != null) {
		data.result = ArticleResult().fromJson(json['result']);
	}
	return data;
}

Map<String, dynamic> articleEntityToJson(ArticleEntity entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['status'] = entity.status;
	data['message'] = entity.message;
	data['result'] = entity.result?.toJson();
	return data;
}

articleResultFromJson(ArticleResult data, Map<String, dynamic> json) {
	if (json['data'] != null) {
		data.data = (json['data'] as List).map((v) => ArticleResultData().fromJson(v)).toList();
	}
	if (json['params'] != null) {
		data.params = ArticleResultParams().fromJson(json['params']);
	}
	if (json['pagination'] != null) {
		data.pagination = ArticleResultPagination().fromJson(json['pagination']);
	}
	return data;
}

Map<String, dynamic> articleResultToJson(ArticleResult entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['data'] =  entity.data?.map((v) => v.toJson())?.toList();
	data['params'] = entity.params?.toJson();
	data['pagination'] = entity.pagination?.toJson();
	return data;
}

articleResultDataFromJson(ArticleResultData data, Map<String, dynamic> json) {
	if (json['keywords'] != null) {
		data.keywords = (json['keywords'] as List).map((v) => v.toString()).toList().cast<String>();
	}
	if (json['state'] != null) {
		data.state = json['state'] is String
				? int.tryParse(json['state'])
				: json['state'].toInt();
	}
	if (json['public'] != null) {
		data.public = json['public'] is String
				? int.tryParse(json['public'])
				: json['public'].toInt();
	}
	if (json['origin'] != null) {
		data.origin = json['origin'] is String
				? int.tryParse(json['origin'])
				: json['origin'].toInt();
	}
	if (json['tag'] != null) {
		data.tag = (json['tag'] as List).map((v) => ArticleResultDataTag().fromJson(v)).toList();
	}
	if (json['category'] != null) {
		data.category = (json['category'] as List).map((v) => ArticleResultDataCategory().fromJson(v)).toList();
	}
	if (json['_id'] != null) {
		data.sId = json['_id'].toString();
	}
	if (json['title'] != null) {
		data.title = json['title'].toString();
	}
	if (json['description'] != null) {
		data.description = json['description'].toString();
	}
	if (json['thumb'] != null) {
		data.thumb = json['thumb'].toString();
	}
	if (json['extends'] != null) {
		data.xExtends = (json['extends'] as List).map((v) => v).toList().cast<dynamic>();
	}
	if (json['meta'] != null) {
		data.meta = ArticleResultDataMeta().fromJson(json['meta']);
	}
	if (json['create_at'] != null) {
		data.createAt = json['create_at'].toString();
	}
	if (json['update_at'] != null) {
		data.updateAt = json['update_at'].toString();
	}
	if (json['id'] != null) {
		data.id = json['id'] is String
				? int.tryParse(json['id'])
				: json['id'].toInt();
	}
	if (json['__v'] != null) {
		data.iV = json['__v'] is String
				? int.tryParse(json['__v'])
				: json['__v'].toInt();
	}
	return data;
}

Map<String, dynamic> articleResultDataToJson(ArticleResultData entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['keywords'] = entity.keywords;
	data['state'] = entity.state;
	data['public'] = entity.public;
	data['origin'] = entity.origin;
	data['tag'] =  entity.tag?.map((v) => v.toJson())?.toList();
	data['category'] =  entity.category?.map((v) => v.toJson())?.toList();
	data['_id'] = entity.sId;
	data['title'] = entity.title;
	data['description'] = entity.description;
	data['thumb'] = entity.thumb;
	data['extends'] = entity.xExtends;
	data['meta'] = entity.meta?.toJson();
	data['create_at'] = entity.createAt;
	data['update_at'] = entity.updateAt;
	data['id'] = entity.id;
	data['__v'] = entity.iV;
	return data;
}

articleResultDataTagFromJson(ArticleResultDataTag data, Map<String, dynamic> json) {
	if (json['_id'] != null) {
		data.sId = json['_id'].toString();
	}
	if (json['name'] != null) {
		data.name = json['name'].toString();
	}
	if (json['slug'] != null) {
		data.slug = json['slug'].toString();
	}
	if (json['description'] != null) {
		data.description = json['description'].toString();
	}
	if (json['extends'] != null) {
		data.xExtends = (json['extends'] as List).map((v) => ArticleResultDataTagExtend().fromJson(v)).toList();
	}
	if (json['create_at'] != null) {
		data.createAt = json['create_at'].toString();
	}
	if (json['update_at'] != null) {
		data.updateAt = json['update_at'].toString();
	}
	if (json['id'] != null) {
		data.id = json['id'] is String
				? int.tryParse(json['id'])
				: json['id'].toInt();
	}
	if (json['__v'] != null) {
		data.iV = json['__v'] is String
				? int.tryParse(json['__v'])
				: json['__v'].toInt();
	}
	return data;
}

Map<String, dynamic> articleResultDataTagToJson(ArticleResultDataTag entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['_id'] = entity.sId;
	data['name'] = entity.name;
	data['slug'] = entity.slug;
	data['description'] = entity.description;
	data['extends'] =  entity.xExtends?.map((v) => v.toJson())?.toList();
	data['create_at'] = entity.createAt;
	data['update_at'] = entity.updateAt;
	data['id'] = entity.id;
	data['__v'] = entity.iV;
	return data;
}

articleResultDataTagExtendFromJson(ArticleResultDataTagExtend data, Map<String, dynamic> json) {
	if (json['_id'] != null) {
		data.sId = json['_id'].toString();
	}
	if (json['name'] != null) {
		data.name = json['name'].toString();
	}
	if (json['value'] != null) {
		data.value = json['value'].toString();
	}
	return data;
}

Map<String, dynamic> articleResultDataTagExtendToJson(ArticleResultDataTagExtend entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['_id'] = entity.sId;
	data['name'] = entity.name;
	data['value'] = entity.value;
	return data;
}

articleResultDataCategoryFromJson(ArticleResultDataCategory data, Map<String, dynamic> json) {
	if (json['pid'] != null) {
		data.pid = json['pid'];
	}
	if (json['_id'] != null) {
		data.sId = json['_id'].toString();
	}
	if (json['name'] != null) {
		data.name = json['name'].toString();
	}
	if (json['slug'] != null) {
		data.slug = json['slug'].toString();
	}
	if (json['description'] != null) {
		data.description = json['description'].toString();
	}
	if (json['extends'] != null) {
		data.xExtends = (json['extends'] as List).map((v) => ArticleResultDataCategoryExtend().fromJson(v)).toList();
	}
	if (json['create_at'] != null) {
		data.createAt = json['create_at'].toString();
	}
	if (json['update_at'] != null) {
		data.updateAt = json['update_at'].toString();
	}
	if (json['id'] != null) {
		data.id = json['id'] is String
				? int.tryParse(json['id'])
				: json['id'].toInt();
	}
	if (json['__v'] != null) {
		data.iV = json['__v'] is String
				? int.tryParse(json['__v'])
				: json['__v'].toInt();
	}
	return data;
}

Map<String, dynamic> articleResultDataCategoryToJson(ArticleResultDataCategory entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['pid'] = entity.pid;
	data['_id'] = entity.sId;
	data['name'] = entity.name;
	data['slug'] = entity.slug;
	data['description'] = entity.description;
	data['extends'] =  entity.xExtends?.map((v) => v.toJson())?.toList();
	data['create_at'] = entity.createAt;
	data['update_at'] = entity.updateAt;
	data['id'] = entity.id;
	data['__v'] = entity.iV;
	return data;
}

articleResultDataCategoryExtendFromJson(ArticleResultDataCategoryExtend data, Map<String, dynamic> json) {
	if (json['_id'] != null) {
		data.sId = json['_id'].toString();
	}
	if (json['name'] != null) {
		data.name = json['name'].toString();
	}
	if (json['value'] != null) {
		data.value = json['value'].toString();
	}
	return data;
}

Map<String, dynamic> articleResultDataCategoryExtendToJson(ArticleResultDataCategoryExtend entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['_id'] = entity.sId;
	data['name'] = entity.name;
	data['value'] = entity.value;
	return data;
}

articleResultDataMetaFromJson(ArticleResultDataMeta data, Map<String, dynamic> json) {
	if (json['likes'] != null) {
		data.likes = json['likes'] is String
				? int.tryParse(json['likes'])
				: json['likes'].toInt();
	}
	if (json['views'] != null) {
		data.views = json['views'] is String
				? int.tryParse(json['views'])
				: json['views'].toInt();
	}
	if (json['comments'] != null) {
		data.comments = json['comments'] is String
				? int.tryParse(json['comments'])
				: json['comments'].toInt();
	}
	if (json['_id'] != null) {
		data.sId = json['_id'].toString();
	}
	return data;
}

Map<String, dynamic> articleResultDataMetaToJson(ArticleResultDataMeta entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['likes'] = entity.likes;
	data['views'] = entity.views;
	data['comments'] = entity.comments;
	data['_id'] = entity.sId;
	return data;
}

articleResultParamsFromJson(ArticleResultParams data, Map<String, dynamic> json) {
	if (json['querys'] != null) {
		data.querys = ArticleResultParamsQuerys().fromJson(json['querys']);
	}
	if (json['options'] != null) {
		data.options = ArticleResultParamsOptions().fromJson(json['options']);
	}
	if (json['params'] != null) {
		data.params = ArticleResultParamsParams().fromJson(json['params']);
	}
	if (json['isAuthenticated'] != null) {
		data.isAuthenticated = json['isAuthenticated'];
	}
	return data;
}

Map<String, dynamic> articleResultParamsToJson(ArticleResultParams entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['querys'] = entity.querys?.toJson();
	data['options'] = entity.options?.toJson();
	data['params'] = entity.params?.toJson();
	data['isAuthenticated'] = entity.isAuthenticated;
	return data;
}

articleResultParamsQuerysFromJson(ArticleResultParamsQuerys data, Map<String, dynamic> json) {
	if (json['state'] != null) {
		data.state = json['state'] is String
				? int.tryParse(json['state'])
				: json['state'].toInt();
	}
	if (json['public'] != null) {
		data.public = json['public'] is String
				? int.tryParse(json['public'])
				: json['public'].toInt();
	}
	return data;
}

Map<String, dynamic> articleResultParamsQuerysToJson(ArticleResultParamsQuerys entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['state'] = entity.state;
	data['public'] = entity.public;
	return data;
}

articleResultParamsOptionsFromJson(ArticleResultParamsOptions data, Map<String, dynamic> json) {
	if (json['sort'] != null) {
		data.sort = ArticleResultParamsOptionsSort().fromJson(json['sort']);
	}
	if (json['page'] != null) {
		data.page = json['page'] is String
				? int.tryParse(json['page'])
				: json['page'].toInt();
	}
	if (json['populate'] != null) {
		data.populate = (json['populate'] as List).map((v) => v.toString()).toList().cast<String>();
	}
	if (json['select'] != null) {
		data.select = json['select'].toString();
	}
	return data;
}

Map<String, dynamic> articleResultParamsOptionsToJson(ArticleResultParamsOptions entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['sort'] = entity.sort?.toJson();
	data['page'] = entity.page;
	data['populate'] = entity.populate;
	data['select'] = entity.select;
	return data;
}

articleResultParamsOptionsSortFromJson(ArticleResultParamsOptionsSort data, Map<String, dynamic> json) {
	if (json['_id'] != null) {
		data.iId = json['_id'] is String
				? int.tryParse(json['_id'])
				: json['_id'].toInt();
	}
	return data;
}

Map<String, dynamic> articleResultParamsOptionsSortToJson(ArticleResultParamsOptionsSort entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['_id'] = entity.iId;
	return data;
}

articleResultParamsParamsFromJson(ArticleResultParamsParams data, Map<String, dynamic> json) {
	if (json['url'] != null) {
		data.url = json['url'].toString();
	}
	return data;
}

Map<String, dynamic> articleResultParamsParamsToJson(ArticleResultParamsParams entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['url'] = entity.url;
	return data;
}

articleResultPaginationFromJson(ArticleResultPagination data, Map<String, dynamic> json) {
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

Map<String, dynamic> articleResultPaginationToJson(ArticleResultPagination entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['total'] = entity.total;
	data['current_page'] = entity.currentPage;
	data['total_page'] = entity.totalPage;
	data['per_page'] = entity.perPage;
	return data;
}