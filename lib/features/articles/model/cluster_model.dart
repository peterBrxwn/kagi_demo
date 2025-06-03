// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

// Project imports:
import 'package:kagi_demo/features/articles/model/article_model.dart';
import 'package:kagi_demo/features/articles/model/domain_model.dart';
import 'package:kagi_demo/features/articles/model/perspective_model.dart';
import 'package:kagi_demo/features/articles/model/suggested_qna_model.dart';

part 'cluster_model.freezed.dart';
part 'cluster_model.g.dart';

@freezed
sealed class ClusterModel with _$ClusterModel {
  // ignore: invalid_annotation_target
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory ClusterModel({
    int? clusterNumber,
    int? uniqueDomains,
    int? numberOfTitles,
    String? category,
    String? title,
    String? shortSummary,
    String? didYouKnow,
    List<String>? talkingPoints,
    String? quote,
    String? quoteAuthor,
    String? quoteSourceUrl,
    String? quoteSourceDomain,
    String? location,
    List<PerspectiveModel>? perspectives,
    String? emoji,
    String? geopoliticalContext,
    String? historicalBackground,
    @StringListConverter() List<String>? internationalReactions,
    String? humanitarianImpact,
    String? economicImplications,
    @StringListConverter() List<String>? timeline,
    String? futureOutlook,
    List<String>? keyPlayers,
    @StringListConverter() List<String>? technicalDetails,
    String? businessAngleText,
    List<String>? businessAnglePoints,
    @StringListConverter() List<String>? userActionItems,
    List<String>? scientificSignificance,
    List<String>? travelAdvisory,
    String? destinationHighlights,
    String? culinarySignificance,
    List<String>? performanceStatistics,
    String? leagueStandings,
    String? diyTips,
    String? designPrinciples,
    String? userExperienceImpact,
    List<String>? gameplayMechanics,
    List<String>? industryImpact,
    String? technicalSpecifications,
    List<SuggestedQnAModel>? suggestedQna,
    List<ArticleModel>? articles,
    List<DomainModel>? domains,
  }) = _ClusterModel;

  factory ClusterModel.fromJson(Map<String, dynamic> json) =>
      _$ClusterModelFromJson(json);
}

// Custom JsonConverter to handle values that can be empty strings or lists
class StringListConverter implements JsonConverter<List<String>?, dynamic> {
  const StringListConverter();

  @override
  List<String>? fromJson(dynamic json) {
    if (json is String && json.isEmpty) {
      return [];
    } else if (json is List) {
      return json.cast<String>();
    }
    return null;
  }

  @override
  dynamic toJson(List<String>? object) {
    return object;
  }
}
