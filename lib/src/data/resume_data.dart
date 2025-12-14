import 'package:cv_website/src/data/skils.dart';
import 'package:cv_website/src/models/article.dart';
import 'package:cv_website/src/models/contact.dart';
import 'package:cv_website/src/models/date_range.dart';
import 'package:cv_website/src/models/education.dart';
import 'package:cv_website/src/models/language.dart';
import 'package:cv_website/src/models/license_and_certification.dart';
import 'package:cv_website/src/models/linked_in_profile.dart';
import 'package:cv_website/src/models/media.dart';
import 'package:cv_website/src/models/phone_number.dart';
import 'package:cv_website/src/models/experience.dart';
import 'package:cv_website/src/models/project.dart';
import 'package:media_source/media_source.dart';

class ResumeData {
  static final profile = LinkedInProfile(
    name: 'Hossam Eldin Mahmoud',
    title: 'Senior Mobile Software Engineer',
    subTitles: [
      'Native-iOS',
      'Flutter Specialist',
      'Cross-Platform Mobile Developer',
      'Enterprise Mobile Architecture Enthusiastic',
      'Open-Source Enthusiast',
    ],
    about: '''
- As a Senior Cross-Platform Mobile Engineer, I specialize in designing and developing high-performance mobile applications using Flutter, Dart, and iOS. With 7+ years of hands-on experience, I focus on delivering scalable, reliable, and user-centric mobile solutions that align with business objectives and enhance digital experiences.

- I’m passionate about engineering excellence—implementing CI/CD pipelines, driving unit and widget testing adoption, and leading clean architecture refactoring to improve app quality and reduce release times by up to 70%. I leverage Domain Driven Design (DDD), Modular Architecture, and Reactive Architecture to build robust, scalable, and event-driven systems that meet business requirements while ensuring flexibility and maintainability. My approach combines technical precision with a strong sense of collaboration, ensuring every project achieves its maximum potential through teamwork, agile practices, and data-driven decision-making.

- Throughout my career, I’ve contributed to projects across various industries, from accessibility platforms to enterprise applications, consistently improving performance, maintainability, and delivery efficiency. I take pride in transforming complex requirements into seamless mobile experiences that make a tangible impact.

- Let’s connect — I’m always open to discussing innovative projects, technical collaborations, and opportunities to build impactful mobile solutions that drive real value.
''',
    profilePicture: ImageAssetMedia(
      assetPath: 'assets/photo.jpg',
      mimeType: 'image/jpeg',
      name: 'photo.jpg',
      size: 484.86.kb,
    ),
    location: 'Egypt',
    contact: const Contact(
      email: 'hossameldinmi@gmail.com',
      linkedinUrl: 'https://linkedin.com/in/hossameldinmi',
      githubUrl: 'https://github.com/hossameldinmi',
      websiteUrl: 'https://hossameldinmi.github.io', // Assuming
      phone: PhoneNumber(countryCode: '+20', number: '122 848 6542'),
    ),
    experience: [
      Experience(
        title: 'Senior Mobile Software Engineer',
        companyName: 'Ynmo',
        location: 'Remote',
        employmentType: 'Full-time',
        dateRange: DateRange(start: DateTime(2022, 2)),
        description: 'Leading mobile development for fintech platform. Architecting and implementing '
            'Flutter applications with focus on performance and scalability. Mentoring team members '
            'and establishing mobile development best practices. Integrating complex financial APIs '
            'and ensuring security compliance. Collaborating with cross-functional teams to deliver '
            'high-quality mobile solutions.',
        skills: [Skills.flutter, Skills.dart, Skills.ios, Skills.restApis, Skills.performanceOptimization],
      ),
      Experience(
        title: 'Senior Mobile Software Engineer',
        companyName: 'PortMe',
        location: 'Remote',
        employmentType: 'Contract',
        dateRange: DateRange(start: DateTime(2021, 9), end: DateTime(2022, 4)),
        description: 'Developed cross-platform mobile applications using Flutter for telecommunications '
            'platform. Implemented number porting features and real-time status tracking. Collaborated '
            'with backend team to design and integrate RESTful APIs. Optimized app performance and '
            'reduced crash rates by 40%. Enhanced user experience through intuitive UI/UX design.',
        skills: [Skills.flutter, Skills.dart, Skills.restApis, Skills.performanceOptimization],
      ),
      Experience(
        title: 'Senior Software Engineer',
        companyName: 'Facegraph',
        location: 'Remote', // Assumed
        employmentType: 'Full-time',
        dateRange: DateRange(start: DateTime(2021, 10), end: DateTime(2022, 1)),
        description: 'Built social networking features using Flutter and native iOS/Android. Implemented '
            'real-time messaging, media sharing, and social graph features. Worked on SDK development '
            'for third-party integrations. Enhanced app stability and user engagement metrics. '
            'Participated in architectural decisions and code reviews.',
        skills: [Skills.flutter, Skills.dart, Skills.ios, Skills.performanceOptimization],
      ),
      Experience(
        title: 'Software Engineer II',
        companyName: 'Facegraph',
        location: 'Remote', // Assumed
        employmentType: 'Full-time',
        dateRange: DateRange(start: DateTime(2019, 12), end: DateTime(2021, 10)),
        description: 'Developed mobile applications using Flutter and React Native. Implemented user '
            'authentication, profile management, and content feed features. Collaborated with design '
            'team to create intuitive user interfaces. Participated in code reviews and agile ceremonies. '
            'Contributed to improving development workflows and best practices.',
        skills: [Skills.flutter, Skills.dart, Skills.ios, Skills.performanceOptimization],
      ),
      Experience(
        title: 'Specialist Software Engineer - .NET and Cross-Platform',
        companyName: 'EME International',
        location: 'Egypt',
        employmentType: 'Full-time',
        dateRange: DateRange(start: DateTime(2019, 2), end: DateTime(2019, 12)),
        description: 'Developed cross-platform mobile applications using Xamarin and Flutter. Built '
            'enterprise solutions for logistics and supply chain management. Integrated with legacy '
            '.NET backend systems. Provided technical support and training to clients. Participated '
            'in requirement analysis and solution design.',
        skills: [Skills.xamarin, Skills.flutter, Skills.dart, Skills.ios, Skills.performanceOptimization],
      ),
      Experience(
        title: 'Associate Software Engineer - .NET and Cross-Platform',
        companyName: 'EME International',
        location: 'Egypt',
        employmentType: 'Full-time',
        dateRange: DateRange(start: DateTime(2018, 3), end: DateTime(2019, 2)),
        description: 'Started career in mobile development with Xamarin and .NET. Contributed to '
            'enterprise mobile applications. Learned mobile development best practices and design '
            'patterns. Participated in requirement gathering and technical documentation. Gained '
            'experience in full software development lifecycle.',
        skills: [Skills.xamarin, Skills.cSharp, Skills.dotNet, Skills.mobileDevelopment],
      ),
    ],
    education: [
      Education(
        schoolName: 'Information Technology Institute (ITI)',
        degreeName: 'Nanodegree',
        fieldOfStudy: 'Mobile Application Development',
        dateRange: DateRange(start: DateTime(2017), end: DateTime(2018)),
        description:
            'Comprehensive program covering iOS and Android development, mobile UI/UX design, and app deployment.',
        skills: [
          Skills.ios,
          Skills.mobileDevelopment,
          Skills.xamarin,
        ],
      ),
      Education(
        schoolName: 'South Valley University',
        degreeName: 'Bachelor',
        fieldOfStudy: 'Mechanical Engineering',
        dateRange: DateRange(start: DateTime(2012), end: DateTime(2017)), // Graduation
        description: 'Strong foundation in engineering principles, problem-solving, and analytical thinking.',
        skills: [
          Skills.problemSolving,
        ],
      ),
    ],
    skills: Skills.sections,
    projects: [
      Project(
        title: 'Tawakkalna SDK Flutter',
        description: 'Flutter SDK integration for the Tawakkalna government application, '
            'enabling secure identity verification and COVID-19 health status integration. '
            'Provides seamless integration with Saudi Arabia\'s official health platform.',
        media: [
          Media(
              media: UrlMedia.url('https://pub.dev/packages/tawakkalna_sdk_flutter'),
              title: 'Tawakkalna SDK Flutter',
              type: MediaType.link)
        ],
        skills: [Skills.flutter, Skills.dart],
      ),
      Project(
        title: 'Media Source',
        description: 'Flutter package for advanced media handling and source management, '
            'providing seamless media integration capabilities. Supports multiple media formats '
            'and sources with efficient caching and loading mechanisms.',
        media: [
          Media(
              media: UrlMedia.url('https://pub.dev/packages/media_source'), title: 'Media Source', type: MediaType.link)
        ],
        skills: [Skills.flutter, Skills.dart],
      ),
      Project(
        title: 'File Type Plus',
        description: 'Enhanced file type detection package for Flutter applications, '
            'supporting comprehensive file format identification. Provides accurate MIME type '
            'detection and file extension validation.',
        media: [
          Media(
              media: UrlMedia.url('https://pub.dev/packages/file_type_plus'),
              title: 'File Type Plus',
              type: MediaType.link)
        ],
        skills: [Skills.flutter, Skills.dart],
      ),
      Project(
        title: 'File Sized',
        description: 'Utility package for file size formatting and management in Flutter, '
            'simplifying file size operations and display. Provides human-readable file size '
            'formatting with customizable units.',
        media: [
          Media(
            media: UrlMedia.url('https://pub.dev/packages/file_sized'),
            title: 'File Sized',
            type: MediaType.link,
          )
        ],
        skills: [Skills.flutter, Skills.dart],
      ),
      Project(
        title: 'Time of Day',
        description: 'Time management and formatting package for Flutter applications, '
            'providing intuitive time selection and display features. Includes custom time '
            'pickers and formatting utilities.',
        media: [
          Media(media: UrlMedia.url('https://pub.dev/packages/time_of_day'), title: 'Time of Day', type: MediaType.link)
        ],
        skills: [Skills.flutter, Skills.dart],
      ),
    ],
    certifications: [
      const LicenseAndCertification(
        name: 'Mobile Application Development',
        issuingOrganization: 'Udacity',
        issueDate: '2017',
      ),
    ],
    languages: [
      const Language(name: 'Arabic', proficiency: 'Native'),
      const Language(name: 'English', proficiency: 'Professional Working Proficiency'),
      const Language(name: 'Turkish', proficiency: 'Elementary')
    ],
    blogs: [
      // Example Placeholder
      Article(
        title: 'Simplifying Media Handling in Flutter: A Type-Safe Unified API',
        description: 'Tips and tricks for making your Flutter apps fly.',
        url: UrlMedia.url('https://medium.com/p/83e4ad137fb0'), // Placeholder
        skills: [Skills.flutter, Skills.dart],
      ),
    ],
  );
}
