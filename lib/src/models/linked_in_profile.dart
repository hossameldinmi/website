import 'package:cv_website/src/models/article.dart';
import 'package:cv_website/src/models/contact.dart';
import 'package:cv_website/src/models/education.dart';
import 'package:cv_website/src/models/language.dart';
import 'package:cv_website/src/models/license_and_certification.dart';
import 'package:cv_website/src/models/experience.dart';
import 'package:cv_website/src/models/project.dart';
import 'package:cv_website/src/models/skill_section.dart';
import 'package:media_source/media_source.dart';

class LinkedInProfile {
  final String name;
  final String title;
  final List<String> subTitles;
  final String about;
  final MediaSource<ImageType> profilePicture;
  final String location;
  final List<Experience> experience;
  final List<Education> education;
  final List<SkillSection> skills;
  final List<Project> projects;
  final List<LicenseAndCertification> certifications;
  final List<Language> languages;
  final Contact contact;
  final List<Article> blogs;

  const LinkedInProfile({
    required this.name,
    required this.title,
    required this.subTitles,
    required this.about,
    required this.profilePicture,
    required this.location,
    required this.experience,
    required this.education,
    required this.skills,
    required this.projects,
    required this.certifications,
    required this.languages,
    required this.contact,
    required this.blogs,
  });
}
