import 'package:cv_website/src/models/skill.dart';
import 'package:cv_website/src/models/skill_section.dart';

class Skills {
  // Mobile Development
  static final flutter = Skill(name: 'Flutter');
  static final ios = Skill(name: 'iOS Development');
  static final crossPlatform = Skill(name: 'Cross-Platform Development');
  static final performanceOptimization = Skill(name: 'Performance Optimization');
  static final xamarin = Skill(name: 'Xamarin');
  static final xamarinForms = Skill(name: 'Xamarin.Forms');
  static final mobileDevelopment = Skill(name: 'Mobile Development');
  static final appProfiling = Skill(name: 'App Performance Profiling');
  static final lifecycleManagement = Skill(name: 'Mobile App Lifecycle Management');

  // Programming Languages
  static final swift = Skill(name: 'Swift');
  static final dart = Skill(name: 'Dart');
  static final cSharp = Skill(name: 'C#');
  static final dotNet = Skill(name: '.NET Framework');
  static final java = Skill(name: 'Java');

  // SDK & Integration
  static final sdkDevelopment = Skill(name: 'SDK Development');
  static final nativeBridges = Skill(name: 'Native Bridges');
  static final platformChannels = Skill(name: 'Platform Channels');
  static final apiIntegration = Skill(name: 'API Integration');
  static final thirdPartySdks = Skill(name: 'Third-party SDKs');
  static final pluginDevelopment = Skill(name: 'Plugin Development');
  static final openSourceDev = Skill(name: 'Open-Source Development');

  // Tools & Technologies
  static final git = Skill(name: 'Git');
  static final github = Skill(name: 'GitHub');
  static final firebase = Skill(name: 'Firebase');
  static final restApis = Skill(name: 'REST APIs');
  static final graphQL = Skill(name: 'GraphQL');
  static final ciCd = Skill(name: 'CI/CD');
  static final xcode = Skill(name: 'Xcode');
  static final androidStudio = Skill(name: 'Android Studio');
  static final vscode = Skill(name: 'VS Code');
  static final azureDevOps = Skill(name: 'Azure DevOps');
  static final jwt = Skill(name: 'JWT');
  static final linq = Skill(name: 'LINQ');
  static final aiTools = Skill(name: 'AI Tools (Copilot, Cursor, Windsurf)');

  // Architecture & Patterns
  static final cleanArchitecture = Skill(name: 'Clean Architecture');
  static final domainDrivenDesign = Skill(name: 'Domain-Driven Design');
  static final mvvm = Skill(name: 'MVVM');
  static final bloc = Skill(name: 'BLoC');
  static final provider = Skill(name: 'Provider');
  static final riverpod = Skill(name: 'Riverpod');
  static final getX = Skill(name: 'GetX');
  static final mvc = Skill(name: 'MVC');
  static final oop = Skill(name: 'Object-Oriented Programming');
  static final oodDesign = Skill(name: 'Object-Oriented Design');
  static final reactiveArchitecture = Skill(name: 'Reactive Architecture');
  static final uml = Skill(name: 'UML');

  // Software Engineering Practices
  static final tdd = Skill(name: 'Test Driven Development');
  static final debugging = Skill(name: 'Debugging & Issue Tracking');
  static final codeReview = Skill(name: 'Code Review & Quality Assurance');
  static final refactoring = Skill(name: 'Refactoring Legacy Systems');
  static final technicalDebt = Skill(name: 'Managing Technical Debt');
  static final sdlc = Skill(name: 'Software Development Life Cycle');
  static final technicalDocumentation = Skill(name: 'Technical Documentation Writing');

  // Soft Skills
  static final openSourceContribution = Skill(name: 'Open Source Contribution');
  static final technicalLeadership = Skill(name: 'Technical Leadership');
  static final mentoring = Skill(name: 'Mentoring');
  static final problemSolving = Skill(name: 'Problem Solving');
  static final agileScrum = Skill(name: 'Agile Software Development');
  static final teamCollaboration = Skill(name: 'Team Collaboration');
  static final selfMotivation = Skill(name: 'Self-Motivation');
  static final featurePlanning = Skill(name: 'Feature Planning & Sprint Execution');

  static final sections = [
    SkillSection(
      category: 'Mobile Development',
      skills: [
        flutter,
        ios,
        crossPlatform,
        xamarin,
        xamarinForms,
        mobileDevelopment,
        appProfiling,
        performanceOptimization,
        lifecycleManagement,
      ],
    ),
    SkillSection(
      category: 'Programming Languages',
      skills: [
        dart,
        swift,
        cSharp,
        dotNet,
        java,
      ],
    ),
    SkillSection(
      category: 'SDK & Integration',
      skills: [
        sdkDevelopment,
        nativeBridges,
        platformChannels,
        apiIntegration,
        thirdPartySdks,
        pluginDevelopment,
        openSourceDev,
      ],
    ),
    SkillSection(
      category: 'Tools & Technologies',
      skills: [
        git,
        github,
        firebase,
        restApis,
        graphQL,
        jwt,
        linq,
        ciCd,
        xcode,
        androidStudio,
        vscode,
        azureDevOps,
        aiTools,
      ],
    ),
    SkillSection(
      category: 'Architecture & Design Patterns',
      skills: [
        cleanArchitecture,
        domainDrivenDesign,
        oop,
        oodDesign,
        mvvm,
        mvc,
        bloc,
        provider,
        riverpod,
        getX,
        reactiveArchitecture,
        uml,
      ],
    ),
    SkillSection(
      category: 'Software Engineering Practices',
      skills: [
        tdd,
        debugging,
        codeReview,
        refactoring,
        technicalDebt,
        sdlc,
        technicalDocumentation,
      ],
    ),
    SkillSection(
      category: 'Soft Skills & Leadership',
      skills: [
        technicalLeadership,
        mentoring,
        agileScrum,
        featurePlanning,
        problemSolving,
        openSourceContribution,
        teamCollaboration,
        selfMotivation,
      ],
    ),
  ];
}
