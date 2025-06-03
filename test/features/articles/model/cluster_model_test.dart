// Package imports:
import 'package:flutter_test/flutter_test.dart';

// Project imports:
import 'package:kagi_demo/features/articles/model/cluster_model.dart';

void main() {
  group('ClusterModel', () {
    test('should correctly deserialize from JSON', () {
      final json = {
        "cluster_number": 1,
        "unique_domains": 16,
        "number_of_titles": 17,
        "category": "Community",
        "title":
            "Heartwarming acts of kindness spread across American communities",
        "short_summary":
            "Communities across America are demonstrating remarkable generosity.",
        "did_you_know":
            "The Milwaukee Dancing Grannies are planning their return.",
        "talking_points": ["Point 1", "Point 2"],
        "quote": "This is a quote.",
        "quote_author": "Author Name",
        "quote_source_url": "https://example.com",
        "quote_source_domain": "example.com",
        "location": "USA",
        "perspectives": [],
        "emoji": "❤️",
        "geopolitical_context": null,
        "historical_background": null,
        "international_reactions": ["Reaction 1", "Reaction 2"],
        "humanitarian_impact": null,
        "economic_implications": null,
        "timeline": ["Event 1", "Event 2"],
        "future_outlook": null,
        "key_players": ["Player 1", "Player 2"],
        "technical_details": "",
        "business_angle_text": null,
        "business_angle_points": [],
        "user_action_items": "",
        "scientific_significance": [],
        "travel_advisory": [],
        "destination_highlights": null,
        "culinary_significance": null,
        "performance_statistics": [],
        "league_standings": null,
        "diy_tips": null,
        "design_principles": null,
        "user_experience_impact": null,
        "gameplay_mechanics": [],
        "industry_impact": [],
        "technical_specifications": null,
        "suggested_qna": [],
        "articles": [],
        "domains": [],
      };

      final model = ClusterModel.fromJson(json);

      expect(model.clusterNumber, 1);
      expect(model.uniqueDomains, 16);
      expect(model.numberOfTitles, 17);
      expect(model.category, "Community");
      expect(
        model.title,
        "Heartwarming acts of kindness spread across American communities",
      );
      expect(
        model.shortSummary,
        "Communities across America are demonstrating remarkable generosity.",
      );
      expect(
        model.didYouKnow,
        "The Milwaukee Dancing Grannies are planning their return.",
      );
      expect(model.talkingPoints, ["Point 1", "Point 2"]);
      expect(model.quote, "This is a quote.");
      expect(model.quoteAuthor, "Author Name");
      expect(model.quoteSourceUrl, "https://example.com");
      expect(model.quoteSourceDomain, "example.com");
      expect(model.location, "USA");
      expect(model.internationalReactions, ["Reaction 1", "Reaction 2"]);
      expect(model.timeline, ["Event 1", "Event 2"]);
      expect(model.keyPlayers, ["Player 1", "Player 2"]);
      expect(model.technicalDetails, []);
      expect(model.userActionItems, []);
    });

    test('should correctly serialize to JSON', () {
      final model = ClusterModel(
        clusterNumber: 1,
        uniqueDomains: 16,
        numberOfTitles: 17,
        category: "Community",
        title:
            "Heartwarming acts of kindness spread across American communities",
        shortSummary:
            "Communities across America are demonstrating remarkable generosity.",
        didYouKnow: "The Milwaukee Dancing Grannies are planning their return.",
        talkingPoints: ["Point 1", "Point 2"],
        quote: "This is a quote.",
        quoteAuthor: "Author Name",
        quoteSourceUrl: "https://example.com",
        quoteSourceDomain: "example.com",
        location: "USA",
        perspectives: [],
        emoji: "❤️",
        internationalReactions: ["Reaction 1", "Reaction 2"],
        timeline: ["Event 1", "Event 2"],
        keyPlayers: ["Player 1", "Player 2"],
        technicalDetails: [],
        userActionItems: [],
      );

      final json = model.toJson();

      expect(json['cluster_number'], 1);
      expect(json['unique_domains'], 16);
      expect(json['number_of_titles'], 17);
      expect(json['category'], "Community");
      expect(
        json['title'],
        "Heartwarming acts of kindness spread across American communities",
      );
      expect(
        json['short_summary'],
        "Communities across America are demonstrating remarkable generosity.",
      );
      expect(
        json['did_you_know'],
        "The Milwaukee Dancing Grannies are planning their return.",
      );
      expect(json['talking_points'], ["Point 1", "Point 2"]);
      expect(json['quote'], "This is a quote.");
      expect(json['quote_author'], "Author Name");
      expect(json['quote_source_url'], "https://example.com");
      expect(json['quote_source_domain'], "example.com");
      expect(json['location'], "USA");
      expect(json['international_reactions'], ["Reaction 1", "Reaction 2"]);
      expect(json['timeline'], ["Event 1", "Event 2"]);
      expect(json['key_players'], ["Player 1", "Player 2"]);
      expect(json['technical_details'], []);
      expect(json['user_action_items'], []);
    });

    group('StringListConverter', () {
      test('should convert empty string to empty list', () {
        const converter = StringListConverter();

        final result = converter.fromJson("");

        expect(result, isEmpty);
        expect(result, []);
      });

      test('should convert list to list of strings', () {
        const converter = StringListConverter();

        final result = converter.fromJson(["Item 1", "Item 2"]);

        expect(result, ["Item 1", "Item 2"]);
      });

      test('should return null for unsupported types', () {
        const converter = StringListConverter();

        final result = converter.fromJson(123);

        expect(result, isNull);
      });

      test('should serialize list of strings correctly', () {
        const converter = StringListConverter();
        final list = ["Item 1", "Item 2"];

        final result = converter.toJson(list);

        expect(result, ["Item 1", "Item 2"]);
      });

      test('should serialize null correctly', () {
        const converter = StringListConverter();

        final result = converter.toJson(null);

        expect(result, isNull);
      });
    });
  });
}
