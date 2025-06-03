// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cluster_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ClusterModel {

 int? get clusterNumber; int? get uniqueDomains; int? get numberOfTitles; String? get category; String? get title; String? get shortSummary; String? get didYouKnow; List<String>? get talkingPoints; String? get quote; String? get quoteAuthor; String? get quoteSourceUrl; String? get quoteSourceDomain; String? get location; List<PerspectiveModel>? get perspectives; String? get emoji; String? get geopoliticalContext; String? get historicalBackground;@StringListConverter() List<String>? get internationalReactions; String? get humanitarianImpact; String? get economicImplications;@StringListConverter() List<String>? get timeline; String? get futureOutlook; List<String>? get keyPlayers;@StringListConverter() List<String>? get technicalDetails; String? get businessAngleText; List<String>? get businessAnglePoints;@StringListConverter() List<String>? get userActionItems; List<String>? get scientificSignificance; List<String>? get travelAdvisory; String? get destinationHighlights; String? get culinarySignificance; List<String>? get performanceStatistics; String? get leagueStandings; String? get diyTips; String? get designPrinciples; String? get userExperienceImpact; List<String>? get gameplayMechanics; List<String>? get industryImpact; String? get technicalSpecifications; List<SuggestedQnAModel>? get suggestedQna; List<ArticleModel>? get articles; List<DomainModel>? get domains;
/// Create a copy of ClusterModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ClusterModelCopyWith<ClusterModel> get copyWith => _$ClusterModelCopyWithImpl<ClusterModel>(this as ClusterModel, _$identity);

  /// Serializes this ClusterModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ClusterModel&&(identical(other.clusterNumber, clusterNumber) || other.clusterNumber == clusterNumber)&&(identical(other.uniqueDomains, uniqueDomains) || other.uniqueDomains == uniqueDomains)&&(identical(other.numberOfTitles, numberOfTitles) || other.numberOfTitles == numberOfTitles)&&(identical(other.category, category) || other.category == category)&&(identical(other.title, title) || other.title == title)&&(identical(other.shortSummary, shortSummary) || other.shortSummary == shortSummary)&&(identical(other.didYouKnow, didYouKnow) || other.didYouKnow == didYouKnow)&&const DeepCollectionEquality().equals(other.talkingPoints, talkingPoints)&&(identical(other.quote, quote) || other.quote == quote)&&(identical(other.quoteAuthor, quoteAuthor) || other.quoteAuthor == quoteAuthor)&&(identical(other.quoteSourceUrl, quoteSourceUrl) || other.quoteSourceUrl == quoteSourceUrl)&&(identical(other.quoteSourceDomain, quoteSourceDomain) || other.quoteSourceDomain == quoteSourceDomain)&&(identical(other.location, location) || other.location == location)&&const DeepCollectionEquality().equals(other.perspectives, perspectives)&&(identical(other.emoji, emoji) || other.emoji == emoji)&&(identical(other.geopoliticalContext, geopoliticalContext) || other.geopoliticalContext == geopoliticalContext)&&(identical(other.historicalBackground, historicalBackground) || other.historicalBackground == historicalBackground)&&const DeepCollectionEquality().equals(other.internationalReactions, internationalReactions)&&(identical(other.humanitarianImpact, humanitarianImpact) || other.humanitarianImpact == humanitarianImpact)&&(identical(other.economicImplications, economicImplications) || other.economicImplications == economicImplications)&&const DeepCollectionEquality().equals(other.timeline, timeline)&&(identical(other.futureOutlook, futureOutlook) || other.futureOutlook == futureOutlook)&&const DeepCollectionEquality().equals(other.keyPlayers, keyPlayers)&&const DeepCollectionEquality().equals(other.technicalDetails, technicalDetails)&&(identical(other.businessAngleText, businessAngleText) || other.businessAngleText == businessAngleText)&&const DeepCollectionEquality().equals(other.businessAnglePoints, businessAnglePoints)&&const DeepCollectionEquality().equals(other.userActionItems, userActionItems)&&const DeepCollectionEquality().equals(other.scientificSignificance, scientificSignificance)&&const DeepCollectionEquality().equals(other.travelAdvisory, travelAdvisory)&&(identical(other.destinationHighlights, destinationHighlights) || other.destinationHighlights == destinationHighlights)&&(identical(other.culinarySignificance, culinarySignificance) || other.culinarySignificance == culinarySignificance)&&const DeepCollectionEquality().equals(other.performanceStatistics, performanceStatistics)&&(identical(other.leagueStandings, leagueStandings) || other.leagueStandings == leagueStandings)&&(identical(other.diyTips, diyTips) || other.diyTips == diyTips)&&(identical(other.designPrinciples, designPrinciples) || other.designPrinciples == designPrinciples)&&(identical(other.userExperienceImpact, userExperienceImpact) || other.userExperienceImpact == userExperienceImpact)&&const DeepCollectionEquality().equals(other.gameplayMechanics, gameplayMechanics)&&const DeepCollectionEquality().equals(other.industryImpact, industryImpact)&&(identical(other.technicalSpecifications, technicalSpecifications) || other.technicalSpecifications == technicalSpecifications)&&const DeepCollectionEquality().equals(other.suggestedQna, suggestedQna)&&const DeepCollectionEquality().equals(other.articles, articles)&&const DeepCollectionEquality().equals(other.domains, domains));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,clusterNumber,uniqueDomains,numberOfTitles,category,title,shortSummary,didYouKnow,const DeepCollectionEquality().hash(talkingPoints),quote,quoteAuthor,quoteSourceUrl,quoteSourceDomain,location,const DeepCollectionEquality().hash(perspectives),emoji,geopoliticalContext,historicalBackground,const DeepCollectionEquality().hash(internationalReactions),humanitarianImpact,economicImplications,const DeepCollectionEquality().hash(timeline),futureOutlook,const DeepCollectionEquality().hash(keyPlayers),const DeepCollectionEquality().hash(technicalDetails),businessAngleText,const DeepCollectionEquality().hash(businessAnglePoints),const DeepCollectionEquality().hash(userActionItems),const DeepCollectionEquality().hash(scientificSignificance),const DeepCollectionEquality().hash(travelAdvisory),destinationHighlights,culinarySignificance,const DeepCollectionEquality().hash(performanceStatistics),leagueStandings,diyTips,designPrinciples,userExperienceImpact,const DeepCollectionEquality().hash(gameplayMechanics),const DeepCollectionEquality().hash(industryImpact),technicalSpecifications,const DeepCollectionEquality().hash(suggestedQna),const DeepCollectionEquality().hash(articles),const DeepCollectionEquality().hash(domains)]);

@override
String toString() {
  return 'ClusterModel(clusterNumber: $clusterNumber, uniqueDomains: $uniqueDomains, numberOfTitles: $numberOfTitles, category: $category, title: $title, shortSummary: $shortSummary, didYouKnow: $didYouKnow, talkingPoints: $talkingPoints, quote: $quote, quoteAuthor: $quoteAuthor, quoteSourceUrl: $quoteSourceUrl, quoteSourceDomain: $quoteSourceDomain, location: $location, perspectives: $perspectives, emoji: $emoji, geopoliticalContext: $geopoliticalContext, historicalBackground: $historicalBackground, internationalReactions: $internationalReactions, humanitarianImpact: $humanitarianImpact, economicImplications: $economicImplications, timeline: $timeline, futureOutlook: $futureOutlook, keyPlayers: $keyPlayers, technicalDetails: $technicalDetails, businessAngleText: $businessAngleText, businessAnglePoints: $businessAnglePoints, userActionItems: $userActionItems, scientificSignificance: $scientificSignificance, travelAdvisory: $travelAdvisory, destinationHighlights: $destinationHighlights, culinarySignificance: $culinarySignificance, performanceStatistics: $performanceStatistics, leagueStandings: $leagueStandings, diyTips: $diyTips, designPrinciples: $designPrinciples, userExperienceImpact: $userExperienceImpact, gameplayMechanics: $gameplayMechanics, industryImpact: $industryImpact, technicalSpecifications: $technicalSpecifications, suggestedQna: $suggestedQna, articles: $articles, domains: $domains)';
}


}

/// @nodoc
abstract mixin class $ClusterModelCopyWith<$Res>  {
  factory $ClusterModelCopyWith(ClusterModel value, $Res Function(ClusterModel) _then) = _$ClusterModelCopyWithImpl;
@useResult
$Res call({
 int? clusterNumber, int? uniqueDomains, int? numberOfTitles, String? category, String? title, String? shortSummary, String? didYouKnow, List<String>? talkingPoints, String? quote, String? quoteAuthor, String? quoteSourceUrl, String? quoteSourceDomain, String? location, List<PerspectiveModel>? perspectives, String? emoji, String? geopoliticalContext, String? historicalBackground,@StringListConverter() List<String>? internationalReactions, String? humanitarianImpact, String? economicImplications,@StringListConverter() List<String>? timeline, String? futureOutlook, List<String>? keyPlayers,@StringListConverter() List<String>? technicalDetails, String? businessAngleText, List<String>? businessAnglePoints,@StringListConverter() List<String>? userActionItems, List<String>? scientificSignificance, List<String>? travelAdvisory, String? destinationHighlights, String? culinarySignificance, List<String>? performanceStatistics, String? leagueStandings, String? diyTips, String? designPrinciples, String? userExperienceImpact, List<String>? gameplayMechanics, List<String>? industryImpact, String? technicalSpecifications, List<SuggestedQnAModel>? suggestedQna, List<ArticleModel>? articles, List<DomainModel>? domains
});




}
/// @nodoc
class _$ClusterModelCopyWithImpl<$Res>
    implements $ClusterModelCopyWith<$Res> {
  _$ClusterModelCopyWithImpl(this._self, this._then);

  final ClusterModel _self;
  final $Res Function(ClusterModel) _then;

/// Create a copy of ClusterModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? clusterNumber = freezed,Object? uniqueDomains = freezed,Object? numberOfTitles = freezed,Object? category = freezed,Object? title = freezed,Object? shortSummary = freezed,Object? didYouKnow = freezed,Object? talkingPoints = freezed,Object? quote = freezed,Object? quoteAuthor = freezed,Object? quoteSourceUrl = freezed,Object? quoteSourceDomain = freezed,Object? location = freezed,Object? perspectives = freezed,Object? emoji = freezed,Object? geopoliticalContext = freezed,Object? historicalBackground = freezed,Object? internationalReactions = freezed,Object? humanitarianImpact = freezed,Object? economicImplications = freezed,Object? timeline = freezed,Object? futureOutlook = freezed,Object? keyPlayers = freezed,Object? technicalDetails = freezed,Object? businessAngleText = freezed,Object? businessAnglePoints = freezed,Object? userActionItems = freezed,Object? scientificSignificance = freezed,Object? travelAdvisory = freezed,Object? destinationHighlights = freezed,Object? culinarySignificance = freezed,Object? performanceStatistics = freezed,Object? leagueStandings = freezed,Object? diyTips = freezed,Object? designPrinciples = freezed,Object? userExperienceImpact = freezed,Object? gameplayMechanics = freezed,Object? industryImpact = freezed,Object? technicalSpecifications = freezed,Object? suggestedQna = freezed,Object? articles = freezed,Object? domains = freezed,}) {
  return _then(_self.copyWith(
clusterNumber: freezed == clusterNumber ? _self.clusterNumber : clusterNumber // ignore: cast_nullable_to_non_nullable
as int?,uniqueDomains: freezed == uniqueDomains ? _self.uniqueDomains : uniqueDomains // ignore: cast_nullable_to_non_nullable
as int?,numberOfTitles: freezed == numberOfTitles ? _self.numberOfTitles : numberOfTitles // ignore: cast_nullable_to_non_nullable
as int?,category: freezed == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as String?,title: freezed == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String?,shortSummary: freezed == shortSummary ? _self.shortSummary : shortSummary // ignore: cast_nullable_to_non_nullable
as String?,didYouKnow: freezed == didYouKnow ? _self.didYouKnow : didYouKnow // ignore: cast_nullable_to_non_nullable
as String?,talkingPoints: freezed == talkingPoints ? _self.talkingPoints : talkingPoints // ignore: cast_nullable_to_non_nullable
as List<String>?,quote: freezed == quote ? _self.quote : quote // ignore: cast_nullable_to_non_nullable
as String?,quoteAuthor: freezed == quoteAuthor ? _self.quoteAuthor : quoteAuthor // ignore: cast_nullable_to_non_nullable
as String?,quoteSourceUrl: freezed == quoteSourceUrl ? _self.quoteSourceUrl : quoteSourceUrl // ignore: cast_nullable_to_non_nullable
as String?,quoteSourceDomain: freezed == quoteSourceDomain ? _self.quoteSourceDomain : quoteSourceDomain // ignore: cast_nullable_to_non_nullable
as String?,location: freezed == location ? _self.location : location // ignore: cast_nullable_to_non_nullable
as String?,perspectives: freezed == perspectives ? _self.perspectives : perspectives // ignore: cast_nullable_to_non_nullable
as List<PerspectiveModel>?,emoji: freezed == emoji ? _self.emoji : emoji // ignore: cast_nullable_to_non_nullable
as String?,geopoliticalContext: freezed == geopoliticalContext ? _self.geopoliticalContext : geopoliticalContext // ignore: cast_nullable_to_non_nullable
as String?,historicalBackground: freezed == historicalBackground ? _self.historicalBackground : historicalBackground // ignore: cast_nullable_to_non_nullable
as String?,internationalReactions: freezed == internationalReactions ? _self.internationalReactions : internationalReactions // ignore: cast_nullable_to_non_nullable
as List<String>?,humanitarianImpact: freezed == humanitarianImpact ? _self.humanitarianImpact : humanitarianImpact // ignore: cast_nullable_to_non_nullable
as String?,economicImplications: freezed == economicImplications ? _self.economicImplications : economicImplications // ignore: cast_nullable_to_non_nullable
as String?,timeline: freezed == timeline ? _self.timeline : timeline // ignore: cast_nullable_to_non_nullable
as List<String>?,futureOutlook: freezed == futureOutlook ? _self.futureOutlook : futureOutlook // ignore: cast_nullable_to_non_nullable
as String?,keyPlayers: freezed == keyPlayers ? _self.keyPlayers : keyPlayers // ignore: cast_nullable_to_non_nullable
as List<String>?,technicalDetails: freezed == technicalDetails ? _self.technicalDetails : technicalDetails // ignore: cast_nullable_to_non_nullable
as List<String>?,businessAngleText: freezed == businessAngleText ? _self.businessAngleText : businessAngleText // ignore: cast_nullable_to_non_nullable
as String?,businessAnglePoints: freezed == businessAnglePoints ? _self.businessAnglePoints : businessAnglePoints // ignore: cast_nullable_to_non_nullable
as List<String>?,userActionItems: freezed == userActionItems ? _self.userActionItems : userActionItems // ignore: cast_nullable_to_non_nullable
as List<String>?,scientificSignificance: freezed == scientificSignificance ? _self.scientificSignificance : scientificSignificance // ignore: cast_nullable_to_non_nullable
as List<String>?,travelAdvisory: freezed == travelAdvisory ? _self.travelAdvisory : travelAdvisory // ignore: cast_nullable_to_non_nullable
as List<String>?,destinationHighlights: freezed == destinationHighlights ? _self.destinationHighlights : destinationHighlights // ignore: cast_nullable_to_non_nullable
as String?,culinarySignificance: freezed == culinarySignificance ? _self.culinarySignificance : culinarySignificance // ignore: cast_nullable_to_non_nullable
as String?,performanceStatistics: freezed == performanceStatistics ? _self.performanceStatistics : performanceStatistics // ignore: cast_nullable_to_non_nullable
as List<String>?,leagueStandings: freezed == leagueStandings ? _self.leagueStandings : leagueStandings // ignore: cast_nullable_to_non_nullable
as String?,diyTips: freezed == diyTips ? _self.diyTips : diyTips // ignore: cast_nullable_to_non_nullable
as String?,designPrinciples: freezed == designPrinciples ? _self.designPrinciples : designPrinciples // ignore: cast_nullable_to_non_nullable
as String?,userExperienceImpact: freezed == userExperienceImpact ? _self.userExperienceImpact : userExperienceImpact // ignore: cast_nullable_to_non_nullable
as String?,gameplayMechanics: freezed == gameplayMechanics ? _self.gameplayMechanics : gameplayMechanics // ignore: cast_nullable_to_non_nullable
as List<String>?,industryImpact: freezed == industryImpact ? _self.industryImpact : industryImpact // ignore: cast_nullable_to_non_nullable
as List<String>?,technicalSpecifications: freezed == technicalSpecifications ? _self.technicalSpecifications : technicalSpecifications // ignore: cast_nullable_to_non_nullable
as String?,suggestedQna: freezed == suggestedQna ? _self.suggestedQna : suggestedQna // ignore: cast_nullable_to_non_nullable
as List<SuggestedQnAModel>?,articles: freezed == articles ? _self.articles : articles // ignore: cast_nullable_to_non_nullable
as List<ArticleModel>?,domains: freezed == domains ? _self.domains : domains // ignore: cast_nullable_to_non_nullable
as List<DomainModel>?,
  ));
}

}


/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _ClusterModel implements ClusterModel {
  const _ClusterModel({this.clusterNumber, this.uniqueDomains, this.numberOfTitles, this.category, this.title, this.shortSummary, this.didYouKnow, final  List<String>? talkingPoints, this.quote, this.quoteAuthor, this.quoteSourceUrl, this.quoteSourceDomain, this.location, final  List<PerspectiveModel>? perspectives, this.emoji, this.geopoliticalContext, this.historicalBackground, @StringListConverter() final  List<String>? internationalReactions, this.humanitarianImpact, this.economicImplications, @StringListConverter() final  List<String>? timeline, this.futureOutlook, final  List<String>? keyPlayers, @StringListConverter() final  List<String>? technicalDetails, this.businessAngleText, final  List<String>? businessAnglePoints, @StringListConverter() final  List<String>? userActionItems, final  List<String>? scientificSignificance, final  List<String>? travelAdvisory, this.destinationHighlights, this.culinarySignificance, final  List<String>? performanceStatistics, this.leagueStandings, this.diyTips, this.designPrinciples, this.userExperienceImpact, final  List<String>? gameplayMechanics, final  List<String>? industryImpact, this.technicalSpecifications, final  List<SuggestedQnAModel>? suggestedQna, final  List<ArticleModel>? articles, final  List<DomainModel>? domains}): _talkingPoints = talkingPoints,_perspectives = perspectives,_internationalReactions = internationalReactions,_timeline = timeline,_keyPlayers = keyPlayers,_technicalDetails = technicalDetails,_businessAnglePoints = businessAnglePoints,_userActionItems = userActionItems,_scientificSignificance = scientificSignificance,_travelAdvisory = travelAdvisory,_performanceStatistics = performanceStatistics,_gameplayMechanics = gameplayMechanics,_industryImpact = industryImpact,_suggestedQna = suggestedQna,_articles = articles,_domains = domains;
  factory _ClusterModel.fromJson(Map<String, dynamic> json) => _$ClusterModelFromJson(json);

@override final  int? clusterNumber;
@override final  int? uniqueDomains;
@override final  int? numberOfTitles;
@override final  String? category;
@override final  String? title;
@override final  String? shortSummary;
@override final  String? didYouKnow;
 final  List<String>? _talkingPoints;
@override List<String>? get talkingPoints {
  final value = _talkingPoints;
  if (value == null) return null;
  if (_talkingPoints is EqualUnmodifiableListView) return _talkingPoints;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override final  String? quote;
@override final  String? quoteAuthor;
@override final  String? quoteSourceUrl;
@override final  String? quoteSourceDomain;
@override final  String? location;
 final  List<PerspectiveModel>? _perspectives;
@override List<PerspectiveModel>? get perspectives {
  final value = _perspectives;
  if (value == null) return null;
  if (_perspectives is EqualUnmodifiableListView) return _perspectives;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override final  String? emoji;
@override final  String? geopoliticalContext;
@override final  String? historicalBackground;
 final  List<String>? _internationalReactions;
@override@StringListConverter() List<String>? get internationalReactions {
  final value = _internationalReactions;
  if (value == null) return null;
  if (_internationalReactions is EqualUnmodifiableListView) return _internationalReactions;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override final  String? humanitarianImpact;
@override final  String? economicImplications;
 final  List<String>? _timeline;
@override@StringListConverter() List<String>? get timeline {
  final value = _timeline;
  if (value == null) return null;
  if (_timeline is EqualUnmodifiableListView) return _timeline;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override final  String? futureOutlook;
 final  List<String>? _keyPlayers;
@override List<String>? get keyPlayers {
  final value = _keyPlayers;
  if (value == null) return null;
  if (_keyPlayers is EqualUnmodifiableListView) return _keyPlayers;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<String>? _technicalDetails;
@override@StringListConverter() List<String>? get technicalDetails {
  final value = _technicalDetails;
  if (value == null) return null;
  if (_technicalDetails is EqualUnmodifiableListView) return _technicalDetails;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override final  String? businessAngleText;
 final  List<String>? _businessAnglePoints;
@override List<String>? get businessAnglePoints {
  final value = _businessAnglePoints;
  if (value == null) return null;
  if (_businessAnglePoints is EqualUnmodifiableListView) return _businessAnglePoints;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<String>? _userActionItems;
@override@StringListConverter() List<String>? get userActionItems {
  final value = _userActionItems;
  if (value == null) return null;
  if (_userActionItems is EqualUnmodifiableListView) return _userActionItems;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<String>? _scientificSignificance;
@override List<String>? get scientificSignificance {
  final value = _scientificSignificance;
  if (value == null) return null;
  if (_scientificSignificance is EqualUnmodifiableListView) return _scientificSignificance;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<String>? _travelAdvisory;
@override List<String>? get travelAdvisory {
  final value = _travelAdvisory;
  if (value == null) return null;
  if (_travelAdvisory is EqualUnmodifiableListView) return _travelAdvisory;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override final  String? destinationHighlights;
@override final  String? culinarySignificance;
 final  List<String>? _performanceStatistics;
@override List<String>? get performanceStatistics {
  final value = _performanceStatistics;
  if (value == null) return null;
  if (_performanceStatistics is EqualUnmodifiableListView) return _performanceStatistics;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override final  String? leagueStandings;
@override final  String? diyTips;
@override final  String? designPrinciples;
@override final  String? userExperienceImpact;
 final  List<String>? _gameplayMechanics;
@override List<String>? get gameplayMechanics {
  final value = _gameplayMechanics;
  if (value == null) return null;
  if (_gameplayMechanics is EqualUnmodifiableListView) return _gameplayMechanics;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<String>? _industryImpact;
@override List<String>? get industryImpact {
  final value = _industryImpact;
  if (value == null) return null;
  if (_industryImpact is EqualUnmodifiableListView) return _industryImpact;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override final  String? technicalSpecifications;
 final  List<SuggestedQnAModel>? _suggestedQna;
@override List<SuggestedQnAModel>? get suggestedQna {
  final value = _suggestedQna;
  if (value == null) return null;
  if (_suggestedQna is EqualUnmodifiableListView) return _suggestedQna;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<ArticleModel>? _articles;
@override List<ArticleModel>? get articles {
  final value = _articles;
  if (value == null) return null;
  if (_articles is EqualUnmodifiableListView) return _articles;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<DomainModel>? _domains;
@override List<DomainModel>? get domains {
  final value = _domains;
  if (value == null) return null;
  if (_domains is EqualUnmodifiableListView) return _domains;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of ClusterModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ClusterModelCopyWith<_ClusterModel> get copyWith => __$ClusterModelCopyWithImpl<_ClusterModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ClusterModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ClusterModel&&(identical(other.clusterNumber, clusterNumber) || other.clusterNumber == clusterNumber)&&(identical(other.uniqueDomains, uniqueDomains) || other.uniqueDomains == uniqueDomains)&&(identical(other.numberOfTitles, numberOfTitles) || other.numberOfTitles == numberOfTitles)&&(identical(other.category, category) || other.category == category)&&(identical(other.title, title) || other.title == title)&&(identical(other.shortSummary, shortSummary) || other.shortSummary == shortSummary)&&(identical(other.didYouKnow, didYouKnow) || other.didYouKnow == didYouKnow)&&const DeepCollectionEquality().equals(other._talkingPoints, _talkingPoints)&&(identical(other.quote, quote) || other.quote == quote)&&(identical(other.quoteAuthor, quoteAuthor) || other.quoteAuthor == quoteAuthor)&&(identical(other.quoteSourceUrl, quoteSourceUrl) || other.quoteSourceUrl == quoteSourceUrl)&&(identical(other.quoteSourceDomain, quoteSourceDomain) || other.quoteSourceDomain == quoteSourceDomain)&&(identical(other.location, location) || other.location == location)&&const DeepCollectionEquality().equals(other._perspectives, _perspectives)&&(identical(other.emoji, emoji) || other.emoji == emoji)&&(identical(other.geopoliticalContext, geopoliticalContext) || other.geopoliticalContext == geopoliticalContext)&&(identical(other.historicalBackground, historicalBackground) || other.historicalBackground == historicalBackground)&&const DeepCollectionEquality().equals(other._internationalReactions, _internationalReactions)&&(identical(other.humanitarianImpact, humanitarianImpact) || other.humanitarianImpact == humanitarianImpact)&&(identical(other.economicImplications, economicImplications) || other.economicImplications == economicImplications)&&const DeepCollectionEquality().equals(other._timeline, _timeline)&&(identical(other.futureOutlook, futureOutlook) || other.futureOutlook == futureOutlook)&&const DeepCollectionEquality().equals(other._keyPlayers, _keyPlayers)&&const DeepCollectionEquality().equals(other._technicalDetails, _technicalDetails)&&(identical(other.businessAngleText, businessAngleText) || other.businessAngleText == businessAngleText)&&const DeepCollectionEquality().equals(other._businessAnglePoints, _businessAnglePoints)&&const DeepCollectionEquality().equals(other._userActionItems, _userActionItems)&&const DeepCollectionEquality().equals(other._scientificSignificance, _scientificSignificance)&&const DeepCollectionEquality().equals(other._travelAdvisory, _travelAdvisory)&&(identical(other.destinationHighlights, destinationHighlights) || other.destinationHighlights == destinationHighlights)&&(identical(other.culinarySignificance, culinarySignificance) || other.culinarySignificance == culinarySignificance)&&const DeepCollectionEquality().equals(other._performanceStatistics, _performanceStatistics)&&(identical(other.leagueStandings, leagueStandings) || other.leagueStandings == leagueStandings)&&(identical(other.diyTips, diyTips) || other.diyTips == diyTips)&&(identical(other.designPrinciples, designPrinciples) || other.designPrinciples == designPrinciples)&&(identical(other.userExperienceImpact, userExperienceImpact) || other.userExperienceImpact == userExperienceImpact)&&const DeepCollectionEquality().equals(other._gameplayMechanics, _gameplayMechanics)&&const DeepCollectionEquality().equals(other._industryImpact, _industryImpact)&&(identical(other.technicalSpecifications, technicalSpecifications) || other.technicalSpecifications == technicalSpecifications)&&const DeepCollectionEquality().equals(other._suggestedQna, _suggestedQna)&&const DeepCollectionEquality().equals(other._articles, _articles)&&const DeepCollectionEquality().equals(other._domains, _domains));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,clusterNumber,uniqueDomains,numberOfTitles,category,title,shortSummary,didYouKnow,const DeepCollectionEquality().hash(_talkingPoints),quote,quoteAuthor,quoteSourceUrl,quoteSourceDomain,location,const DeepCollectionEquality().hash(_perspectives),emoji,geopoliticalContext,historicalBackground,const DeepCollectionEquality().hash(_internationalReactions),humanitarianImpact,economicImplications,const DeepCollectionEquality().hash(_timeline),futureOutlook,const DeepCollectionEquality().hash(_keyPlayers),const DeepCollectionEquality().hash(_technicalDetails),businessAngleText,const DeepCollectionEquality().hash(_businessAnglePoints),const DeepCollectionEquality().hash(_userActionItems),const DeepCollectionEquality().hash(_scientificSignificance),const DeepCollectionEquality().hash(_travelAdvisory),destinationHighlights,culinarySignificance,const DeepCollectionEquality().hash(_performanceStatistics),leagueStandings,diyTips,designPrinciples,userExperienceImpact,const DeepCollectionEquality().hash(_gameplayMechanics),const DeepCollectionEquality().hash(_industryImpact),technicalSpecifications,const DeepCollectionEquality().hash(_suggestedQna),const DeepCollectionEquality().hash(_articles),const DeepCollectionEquality().hash(_domains)]);

@override
String toString() {
  return 'ClusterModel(clusterNumber: $clusterNumber, uniqueDomains: $uniqueDomains, numberOfTitles: $numberOfTitles, category: $category, title: $title, shortSummary: $shortSummary, didYouKnow: $didYouKnow, talkingPoints: $talkingPoints, quote: $quote, quoteAuthor: $quoteAuthor, quoteSourceUrl: $quoteSourceUrl, quoteSourceDomain: $quoteSourceDomain, location: $location, perspectives: $perspectives, emoji: $emoji, geopoliticalContext: $geopoliticalContext, historicalBackground: $historicalBackground, internationalReactions: $internationalReactions, humanitarianImpact: $humanitarianImpact, economicImplications: $economicImplications, timeline: $timeline, futureOutlook: $futureOutlook, keyPlayers: $keyPlayers, technicalDetails: $technicalDetails, businessAngleText: $businessAngleText, businessAnglePoints: $businessAnglePoints, userActionItems: $userActionItems, scientificSignificance: $scientificSignificance, travelAdvisory: $travelAdvisory, destinationHighlights: $destinationHighlights, culinarySignificance: $culinarySignificance, performanceStatistics: $performanceStatistics, leagueStandings: $leagueStandings, diyTips: $diyTips, designPrinciples: $designPrinciples, userExperienceImpact: $userExperienceImpact, gameplayMechanics: $gameplayMechanics, industryImpact: $industryImpact, technicalSpecifications: $technicalSpecifications, suggestedQna: $suggestedQna, articles: $articles, domains: $domains)';
}


}

/// @nodoc
abstract mixin class _$ClusterModelCopyWith<$Res> implements $ClusterModelCopyWith<$Res> {
  factory _$ClusterModelCopyWith(_ClusterModel value, $Res Function(_ClusterModel) _then) = __$ClusterModelCopyWithImpl;
@override @useResult
$Res call({
 int? clusterNumber, int? uniqueDomains, int? numberOfTitles, String? category, String? title, String? shortSummary, String? didYouKnow, List<String>? talkingPoints, String? quote, String? quoteAuthor, String? quoteSourceUrl, String? quoteSourceDomain, String? location, List<PerspectiveModel>? perspectives, String? emoji, String? geopoliticalContext, String? historicalBackground,@StringListConverter() List<String>? internationalReactions, String? humanitarianImpact, String? economicImplications,@StringListConverter() List<String>? timeline, String? futureOutlook, List<String>? keyPlayers,@StringListConverter() List<String>? technicalDetails, String? businessAngleText, List<String>? businessAnglePoints,@StringListConverter() List<String>? userActionItems, List<String>? scientificSignificance, List<String>? travelAdvisory, String? destinationHighlights, String? culinarySignificance, List<String>? performanceStatistics, String? leagueStandings, String? diyTips, String? designPrinciples, String? userExperienceImpact, List<String>? gameplayMechanics, List<String>? industryImpact, String? technicalSpecifications, List<SuggestedQnAModel>? suggestedQna, List<ArticleModel>? articles, List<DomainModel>? domains
});




}
/// @nodoc
class __$ClusterModelCopyWithImpl<$Res>
    implements _$ClusterModelCopyWith<$Res> {
  __$ClusterModelCopyWithImpl(this._self, this._then);

  final _ClusterModel _self;
  final $Res Function(_ClusterModel) _then;

/// Create a copy of ClusterModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? clusterNumber = freezed,Object? uniqueDomains = freezed,Object? numberOfTitles = freezed,Object? category = freezed,Object? title = freezed,Object? shortSummary = freezed,Object? didYouKnow = freezed,Object? talkingPoints = freezed,Object? quote = freezed,Object? quoteAuthor = freezed,Object? quoteSourceUrl = freezed,Object? quoteSourceDomain = freezed,Object? location = freezed,Object? perspectives = freezed,Object? emoji = freezed,Object? geopoliticalContext = freezed,Object? historicalBackground = freezed,Object? internationalReactions = freezed,Object? humanitarianImpact = freezed,Object? economicImplications = freezed,Object? timeline = freezed,Object? futureOutlook = freezed,Object? keyPlayers = freezed,Object? technicalDetails = freezed,Object? businessAngleText = freezed,Object? businessAnglePoints = freezed,Object? userActionItems = freezed,Object? scientificSignificance = freezed,Object? travelAdvisory = freezed,Object? destinationHighlights = freezed,Object? culinarySignificance = freezed,Object? performanceStatistics = freezed,Object? leagueStandings = freezed,Object? diyTips = freezed,Object? designPrinciples = freezed,Object? userExperienceImpact = freezed,Object? gameplayMechanics = freezed,Object? industryImpact = freezed,Object? technicalSpecifications = freezed,Object? suggestedQna = freezed,Object? articles = freezed,Object? domains = freezed,}) {
  return _then(_ClusterModel(
clusterNumber: freezed == clusterNumber ? _self.clusterNumber : clusterNumber // ignore: cast_nullable_to_non_nullable
as int?,uniqueDomains: freezed == uniqueDomains ? _self.uniqueDomains : uniqueDomains // ignore: cast_nullable_to_non_nullable
as int?,numberOfTitles: freezed == numberOfTitles ? _self.numberOfTitles : numberOfTitles // ignore: cast_nullable_to_non_nullable
as int?,category: freezed == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as String?,title: freezed == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String?,shortSummary: freezed == shortSummary ? _self.shortSummary : shortSummary // ignore: cast_nullable_to_non_nullable
as String?,didYouKnow: freezed == didYouKnow ? _self.didYouKnow : didYouKnow // ignore: cast_nullable_to_non_nullable
as String?,talkingPoints: freezed == talkingPoints ? _self._talkingPoints : talkingPoints // ignore: cast_nullable_to_non_nullable
as List<String>?,quote: freezed == quote ? _self.quote : quote // ignore: cast_nullable_to_non_nullable
as String?,quoteAuthor: freezed == quoteAuthor ? _self.quoteAuthor : quoteAuthor // ignore: cast_nullable_to_non_nullable
as String?,quoteSourceUrl: freezed == quoteSourceUrl ? _self.quoteSourceUrl : quoteSourceUrl // ignore: cast_nullable_to_non_nullable
as String?,quoteSourceDomain: freezed == quoteSourceDomain ? _self.quoteSourceDomain : quoteSourceDomain // ignore: cast_nullable_to_non_nullable
as String?,location: freezed == location ? _self.location : location // ignore: cast_nullable_to_non_nullable
as String?,perspectives: freezed == perspectives ? _self._perspectives : perspectives // ignore: cast_nullable_to_non_nullable
as List<PerspectiveModel>?,emoji: freezed == emoji ? _self.emoji : emoji // ignore: cast_nullable_to_non_nullable
as String?,geopoliticalContext: freezed == geopoliticalContext ? _self.geopoliticalContext : geopoliticalContext // ignore: cast_nullable_to_non_nullable
as String?,historicalBackground: freezed == historicalBackground ? _self.historicalBackground : historicalBackground // ignore: cast_nullable_to_non_nullable
as String?,internationalReactions: freezed == internationalReactions ? _self._internationalReactions : internationalReactions // ignore: cast_nullable_to_non_nullable
as List<String>?,humanitarianImpact: freezed == humanitarianImpact ? _self.humanitarianImpact : humanitarianImpact // ignore: cast_nullable_to_non_nullable
as String?,economicImplications: freezed == economicImplications ? _self.economicImplications : economicImplications // ignore: cast_nullable_to_non_nullable
as String?,timeline: freezed == timeline ? _self._timeline : timeline // ignore: cast_nullable_to_non_nullable
as List<String>?,futureOutlook: freezed == futureOutlook ? _self.futureOutlook : futureOutlook // ignore: cast_nullable_to_non_nullable
as String?,keyPlayers: freezed == keyPlayers ? _self._keyPlayers : keyPlayers // ignore: cast_nullable_to_non_nullable
as List<String>?,technicalDetails: freezed == technicalDetails ? _self._technicalDetails : technicalDetails // ignore: cast_nullable_to_non_nullable
as List<String>?,businessAngleText: freezed == businessAngleText ? _self.businessAngleText : businessAngleText // ignore: cast_nullable_to_non_nullable
as String?,businessAnglePoints: freezed == businessAnglePoints ? _self._businessAnglePoints : businessAnglePoints // ignore: cast_nullable_to_non_nullable
as List<String>?,userActionItems: freezed == userActionItems ? _self._userActionItems : userActionItems // ignore: cast_nullable_to_non_nullable
as List<String>?,scientificSignificance: freezed == scientificSignificance ? _self._scientificSignificance : scientificSignificance // ignore: cast_nullable_to_non_nullable
as List<String>?,travelAdvisory: freezed == travelAdvisory ? _self._travelAdvisory : travelAdvisory // ignore: cast_nullable_to_non_nullable
as List<String>?,destinationHighlights: freezed == destinationHighlights ? _self.destinationHighlights : destinationHighlights // ignore: cast_nullable_to_non_nullable
as String?,culinarySignificance: freezed == culinarySignificance ? _self.culinarySignificance : culinarySignificance // ignore: cast_nullable_to_non_nullable
as String?,performanceStatistics: freezed == performanceStatistics ? _self._performanceStatistics : performanceStatistics // ignore: cast_nullable_to_non_nullable
as List<String>?,leagueStandings: freezed == leagueStandings ? _self.leagueStandings : leagueStandings // ignore: cast_nullable_to_non_nullable
as String?,diyTips: freezed == diyTips ? _self.diyTips : diyTips // ignore: cast_nullable_to_non_nullable
as String?,designPrinciples: freezed == designPrinciples ? _self.designPrinciples : designPrinciples // ignore: cast_nullable_to_non_nullable
as String?,userExperienceImpact: freezed == userExperienceImpact ? _self.userExperienceImpact : userExperienceImpact // ignore: cast_nullable_to_non_nullable
as String?,gameplayMechanics: freezed == gameplayMechanics ? _self._gameplayMechanics : gameplayMechanics // ignore: cast_nullable_to_non_nullable
as List<String>?,industryImpact: freezed == industryImpact ? _self._industryImpact : industryImpact // ignore: cast_nullable_to_non_nullable
as List<String>?,technicalSpecifications: freezed == technicalSpecifications ? _self.technicalSpecifications : technicalSpecifications // ignore: cast_nullable_to_non_nullable
as String?,suggestedQna: freezed == suggestedQna ? _self._suggestedQna : suggestedQna // ignore: cast_nullable_to_non_nullable
as List<SuggestedQnAModel>?,articles: freezed == articles ? _self._articles : articles // ignore: cast_nullable_to_non_nullable
as List<ArticleModel>?,domains: freezed == domains ? _self._domains : domains // ignore: cast_nullable_to_non_nullable
as List<DomainModel>?,
  ));
}


}

// dart format on
