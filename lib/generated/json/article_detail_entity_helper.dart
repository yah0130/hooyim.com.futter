import 'package:hooyim/api/bean/article_detail_entity.dart';

articleDetailEntityFromJson(ArticleDetailEntity data, Map<String, dynamic> json) {
	if (json['status'] != null) {
		data.status = json['status'].toString();
	}
	if (json['message'] != null) {
		data.message = json['message'].toString();
	}
	if (json['result'] != null) {
		data.result = ArticleDetailResult().fromJson(json['result']);
	}
	return data;
}

Map<String, dynamic> articleDetailEntityToJson(ArticleDetailEntity entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['status'] = entity.status;
	data['message'] = entity.message;
	data['result'] = entity.result?.toJson();
	return data;
}

articleDetailResultFromJson(ArticleDetailResult data, Map<String, dynamic> json) {
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
		data.tag = (json['tag'] as List).map((v) => ArticleDetailResultTag().fromJson(v)).toList();
	}
	if (json['category'] != null) {
		data.category = (json['category'] as List).map((v) => ArticleDetailResultCategory().fromJson(v)).toList();
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
	if (json['content'] != null) {
		data.content = json['content'].toString();
	}
	if (json['thumb'] != null) {
		data.thumb = json['thumb'].toString();
	}
	if (json['extends'] != null) {
		data.xExtends = (json['extends'] as List).map((v) => v).toList().cast<dynamic>();
	}
	if (json['meta'] != null) {
		data.meta = ArticleDetailResultMeta().fromJson(json['meta']);
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
	if (json['t_content'] != null) {
		data.tContent = json['t_content'].toString();
	}
	if (json['related'] != null) {
		data.related = (json['related'] as List).map((v) => ArticleDetailResultRelated().fromJson(v)).toList();
	}
	return data;
}

Map<String, dynamic> articleDetailResultToJson(ArticleDetailResult entity) {
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
	data['content'] = entity.content;
	data['thumb'] = entity.thumb;
	data['extends'] = entity.xExtends;
	data['meta'] = entity.meta?.toJson();
	data['create_at'] = entity.createAt;
	data['update_at'] = entity.updateAt;
	data['id'] = entity.id;
	data['__v'] = entity.iV;
	data['t_content'] = entity.tContent;
	data['related'] =  entity.related?.map((v) => v.toJson())?.toList();
	return data;
}

articleDetailResultTagFromJson(ArticleDetailResultTag data, Map<String, dynamic> json) {
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
		data.xExtends = (json['extends'] as List).map((v) => ArticleDetailResultTagExtend().fromJson(v)).toList();
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

Map<String, dynamic> articleDetailResultTagToJson(ArticleDetailResultTag entity) {
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

articleDetailResultTagExtendFromJson(ArticleDetailResultTagExtend data, Map<String, dynamic> json) {
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

Map<String, dynamic> articleDetailResultTagExtendToJson(ArticleDetailResultTagExtend entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['_id'] = entity.sId;
	data['name'] = entity.name;
	data['value'] = entity.value;
	return data;
}

articleDetailResultCategoryFromJson(ArticleDetailResultCategory data, Map<String, dynamic> json) {
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
		data.xExtends = (json['extends'] as List).map((v) => ArticleDetailResultCategoryExtend().fromJson(v)).toList();
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

Map<String, dynamic> articleDetailResultCategoryToJson(ArticleDetailResultCategory entity) {
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

articleDetailResultCategoryExtendFromJson(ArticleDetailResultCategoryExtend data, Map<String, dynamic> json) {
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

Map<String, dynamic> articleDetailResultCategoryExtendToJson(ArticleDetailResultCategoryExtend entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['_id'] = entity.sId;
	data['name'] = entity.name;
	data['value'] = entity.value;
	return data;
}

articleDetailResultMetaFromJson(ArticleDetailResultMeta data, Map<String, dynamic> json) {
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

Map<String, dynamic> articleDetailResultMetaToJson(ArticleDetailResultMeta entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['likes'] = entity.likes;
	data['views'] = entity.views;
	data['comments'] = entity.comments;
	data['_id'] = entity.sId;
	return data;
}

articleDetailResultRelatedFromJson(ArticleDetailResultRelated data, Map<String, dynamic> json) {
	if (json['title'] != null) {
		data.title = json['title'].toString();
	}
	if (json['description'] != null) {
		data.description = json['description'].toString();
	}
	if (json['thumb'] != null) {
		data.thumb = json['thumb'].toString();
	}
	if (json['meta'] != null) {
		data.meta = ArticleDetailResultRelatedMeta().fromJson(json['meta']);
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
	return data;
}

Map<String, dynamic> articleDetailResultRelatedToJson(ArticleDetailResultRelated entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['title'] = entity.title;
	data['description'] = entity.description;
	data['thumb'] = entity.thumb;
	data['meta'] = entity.meta?.toJson();
	data['create_at'] = entity.createAt;
	data['update_at'] = entity.updateAt;
	data['id'] = entity.id;
	return data;
}

articleDetailResultRelatedMetaFromJson(ArticleDetailResultRelatedMeta data, Map<String, dynamic> json) {
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

Map<String, dynamic> articleDetailResultRelatedMetaToJson(ArticleDetailResultRelatedMeta entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['likes'] = entity.likes;
	data['views'] = entity.views;
	data['comments'] = entity.comments;
	data['_id'] = entity.sId;
	return data;
}