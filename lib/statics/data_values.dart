import '../generated/assets.dart';
import '../widgets/project_data.dart';

class DataValues {
  // About App
  static const String appName = 'Ammar Hasan';
  static const String appNameLong = 'Ammar Hasan.dev';

  static const String appDeveloper = 'Ammar Hasan';
  static const String appPackage = 'AmmarHasan';
  static const String appVersion = '1.0.0';
  static const String appBuildNumber = '1';

  // External links
  // static Uri hackerrankURL =
  //     Uri.parse('https://www.hackerrank.com/basitali71019?hr_r=1');
  // static Uri githubURL1 = Uri.parse('https://github.com/basitali1509');
  static Uri linkedinURL =
      Uri.parse('https://www.linkedin.com/in/ammar-hasan-3892aa11a/');
  static Uri googlePlayUrl =
      Uri.parse('https://play.google.com/store/apps/developer?id=amapps_Dev');
  static Uri emailUrl = Uri.parse('mailto:ammarhasan174@gmail.com');
  static String resumeURL =
      'https://drive.google.com/file/d/1PopM6i6YVPcmP4vqiHuDajE1HqE7UOrn/view?usp=sharing';

  // static Uri instagramURL =
  //     Uri.parse('https://www.instagram.com/__basit__ali/');

  // Header
  static const String headerGreetings = 'Hey, I\'m ';
  static const String headerName = 'Ammar Hasan';
  static const String headerTitle = 'Flutter Developer';

  // Navigation Bar
  static const String navBarAboutMe = 'About Me';
  static const String navBarEducation = 'Education';
  static const String navBarSkillsAchievements = 'Skills';
  static const String navBarPersonalProjects = 'Projects';

  // static const String navBarVolunteering = 'Volunteering';
  // static const String navBarTechNotes = 'TechNotes';
  static const String navBarContactMe = 'Contact Me';
  static const String navBarResume = 'Resume';

  // About me
  static const String aboutMeTitle = 'About Me';
  static const String skillsTitle = 'Skills';

  static const String aboutMeOverViewTitle = 'About Me';
  static const String aboutMeOverviewDescription = '''
Experienced Flutter Developer with a solid foundation in Kotlin, boasting over 5 years of hands-on experience in crafting top-tier mobile applications. With a portfolio encompassing around 6 Flutter projects and 4 Kotlin projects, I have consistently delivered high-quality, responsive solutions that exceed client expectations.
My adaptability and innovative approach enable me to tackle challenges head-on, ensuring that each project is executed with precision and creativity. I am eager to leverage my skills and contribute to the success of your team, driving forward innovation and excellence in mobile development.
''';

  // static const String aboutMeNationalityTitle = 'From';
  // static const String aboutMeNationalityDescription = 'Karachi, Pakistan';

  // Skills
  // static const String hackerrankTitle = 'Hackerrank Badges';
  static const List<String> flutterSkills = [
    "Android",
    "IOS",
    "Get_it",
    "GetX",
    "Bloc",
    "Provider",
    "Images, Files Processing",
    "DevTools",
    "Notifications",
    "Animation",
    "Responsive Designs",
    "Hive",
    "Shared Preference",
    "Extensions"
  ];
  static const List<String> kotlinSkills = [
    "Coroutines",
    "Shared Preference",
    "Notifications",
    "XML",
    "APIs Implementations"
  ];
  static const List<String> apisSkills = [
    "REST",
    "GraphQl",
    "Google Maps API",
    "Firebase",
    "Back4App",
    "Agora",
  ];
  static const List<String> otherSkills = [
    "C#",
    ".NET",
    "Writing APIs using ASP.NET",
    "VB.NET",
    "JavaScript",
    "AJAX",
    "HTML",
    "CSS",
    "Bootstrap",
    "SQL",
    "Entity Framework",
    "ADO.NET"
  ];

  // Personal Projects
  static const String personalProjects = 'Projects';

  // Education
  static const String educationTitle = 'Education';
  static const String educationDescription = '''
I discovered my love for programming early on, enjoying every lecture that involved coding. 
I quickly became known among my friends as the person to turn to for computer problems or debugging help.
My journey began with learning Python for Arduino projects, but I soon found myself drawn to web development. 
I dabbled in HTML, CSS, and basic Java, finding joy in crafting websites and solving coding challenges. 
As my passion for programming grew, I ventured into mobile app development, eager to expand my skills and knowledge.
''';
  static const String educationOrgTitle =
      'Information and Communication Technology Engineering';
  static const String educationOrgCourseName = 'Tartus University';

  // static const String educationOrgEmptySpace = ' ';
  static const String educationOrg1EducationPeriod = 'Education Period';
  static const String educationOrg1Batch = '2017 - 2022';

  // static const String educationOrg1CGPA = '\nCGPA';
  // static const String educationOrg1GPA = '3.85';
  // static const String educationEmptySpace1 = ' ';
  // static const String educationEmptySpace2 = ' ';
  // static const String educationEmptySpace3 = ' ';

  // Contact
  static const String contactTitle = 'Contact';
  static const String contactDescription = 'Ready to take the next step?\n'
      'Reach out and connect with me directly. '
      ' I believe in the power of collaboration and meaningful conversations. Whether you have a question, '
      'an exciting opportunity, or simply want to share your thoughts, I\'m all ears!\n';
  static const String emailTitle = 'Email : ';
  static const String phoneTitle = 'Phone : ';
  static const String contactEmail = 'ammarhasan174@gmail.com';
  static const String homeLocation = 'UAE, Al Sharjah, Al Taawun st';
  static const String phoneNumber = '+971 50 749 7638';

  // Footer
  static const String copyright =
      "Copyright ©2024 Ammar Hasan. All Rights Reserved.";
  static const String msCopyright =
      "Copyright ©2024 Ammar Hasan.\nAll Rights Reserved.";

  static const String builtWith = "Built with Flutter";

  //   Projects
  static const String lwynTitle = 'Lwyn';
  static const String lwynLang = 'Flutter';
  static const String lwynDescription =
      '• An Uber-like ride-sharing platform with separate apps for riders and drivers.\n'
      '• Riders can select multiple destinations, schedule rides, track drivers locations, and view trips history.\n'
      '• Drivers can receive real-time ride requests, can accept scheduled rides, and access trip history, enhancing efficiency and user experience.';
  static const List<MyLink> lwynLinks = [
    MyLink(
        type: LinkType.googlePlay,
        link:
            'https://play.google.com/store/apps/details?id=lwyn.user&hl=en_US',
        text: "Rider - Google Play"),
    MyLink(
        type: LinkType.googlePlay,
        link:
            'https://play.google.com/store/apps/details?id=lwyn.driver&hl=en_US',
        text: "Captain - Google Play"),
  ];
  static const List<String> lwynImages = [
    Assets.lwynUser1,
    Assets.lwynUser2,
    Assets.lwynUser3,
    Assets.lwynUser4,
    Assets.lwynUser5,
    Assets.lwynUser6,
    Assets.lwynDriver9,
    Assets.lwynDriver10,
    Assets.lwynDriver11,
  ];

  static const String realEstateTitle = 'Real Estate Store';
  static const String realEstateLang = 'Flutter';
  static const String realEstateDescription =
      '• users can browse estates available for rent or sale, filtering by city name or property type (rent/sale).\n'
      '• search for specific keywords to find relevant estates.\n'
      '• add estates to their favorites list for easy access and tracking.';

  static const List<MyLink> realEstateLinks = [
    MyLink(
        type: LinkType.behance,
        link:
            'https://www.behance.net/gallery/163625177/Real-estate-store-%28Flutter-app%29'),
  ];
  static const List<String> realEstateImages = [
    Assets.realEstate1,
    Assets.realEstate2,
    Assets.realEstate3,
    Assets.realEstate4,
  ];

  static const String pdfReaderTitle = 'Pdf Reader';
  static const String pdfReaderLang = 'Kotlin';
  static const String pdfReaderDescription =
      '• empowering users with intuitive PDF management, customizable color themes, and night mode for comfortable reading.\n'
      '• flexible sorting options cater to individual preferences.\n'
      '• built-in scientific calculator and WebView feature enhance productivity within the app.';

  static const List<MyLink> pdfReaderLinks = [
    MyLink(
        type: LinkType.googlePlay,
        link:
            'https://play.google.com/store/apps/details?id=com.amapps100.pdfReaderBrowserwithCalculator'),
    MyLink(
        type: LinkType.behance,
        link:
            'https://www.behance.net/gallery/159949923/Pdf-Reader-Internet-Browser-Android-app'),
  ];

  static const List<String> pdfReaderImages = [
    Assets.pdfReader1,
    Assets.pdfReader2,
    Assets.pdfReader3,
    Assets.pdfReader4,
    Assets.pdfReader5,
    Assets.pdfReader6,
  ];

  static const String syrianCurrencyTitle = 'Syrian Currency';
  static const String syrianCurrencyLang = 'Flutter';
  static const String syrianCurrencyDescription =
      '• providing real-time updates on the SYP exchange rates against the US Dollar and Euro, alongside gold prices.\n'
      '• equipped with a built-in calculator for convenient currency conversions and calculations.';

  static const List<MyLink> syrianCurrencyLinks = [
    MyLink(
        type: LinkType.googlePlay,
        link:
            'https://play.google.com/store/apps/details?id=com.nv_sc.amapps100'),
  ];

  static const List<String> syrianCurrencyImages = [
    Assets.sc1,
    Assets.sc2,
  ];

  static const String fridaysSouqTitle = "Friday's Souq";
  static const String fridaysSouqLang = 'Kotlin';
  static const String fridaysSouqDescription =
      '• facilitating effortless buying and selling experiences, users can seamlessly browser or publish items for sale.\n'
      '• access full details, utilize search and filtering options, and specify preferred cities for item discovery.\n'
      '• empowering users with a dynamic platform for commerce and connectivity.';

  static const List<MyLink> fridaysSouqLinks = [
    MyLink(
        type: LinkType.behance,
        link: 'https://www.behance.net/gallery/160001599/-%28-%29'),
  ];

  static const List<String> fridaysSouqImages = [
    Assets.fridaySouq1,
    Assets.fridaySouq2,
    Assets.fridaySouq3,
  ];

  static const String barcodeScannerTitle = "Barcode Scanner";
  static const String barcodeScannerLang = 'Kotlin';
  static const String barcodeScannerDescription =
      '• simplify inventory management by scanning product barcodes and storing them in a local database.\n'
      '• users can quickly identify products by scanning their barcodes and accessing detailed information instantly.';

  static const List<String> barcodeScannerImages = [
    Assets.barcodeScanner1,
    Assets.barcodeScanner2,
    Assets.barcodeScanner3,
    Assets.barcodeScanner4,
  ];
  static const List<MyLink> barcodeScannerLinks = [
    MyLink(
        type: LinkType.behance,
        link:
            'https://www.behance.net/gallery/159945403/Barcode-Scanner-Inventory-Android-app'),
  ];
  static const String passwordKeeperTitle = "Password Keeper";
  static const String passwordKeeperLang = 'Kotlin';
  static const String passwordKeeperDescription =
      '• securely store emails and passwords in a local database,\n'
      '• offering enhanced safety compared to cloud storage.\n'
      '• access to the app is protected by the owner\'s fingerprint for added security.';

  static const List<String> passwordKeeperImages = [
    Assets.passwordKeeper1,
    Assets.passwordKeeper2,
    Assets.passwordKeeper3,
  ];
  static const List<MyLink> passwordKeeperLinks = [
    MyLink(
        type: LinkType.googlePlay,
        link:
            'https://play.google.com/store/apps/details?id=com.amapps100.password_keeper'),
    MyLink(
        type: LinkType.behance,
        link:
            'https://www.behance.net/gallery/160003905/Offline-password-keeper-(android-app)'),
  ];

  static const List<ProjectData> projectDataList = [
    ProjectData(
      title: lwynTitle,
      language: lwynLang,
      links: lwynLinks,
      images: lwynImages,
      values: lwynDescription,
    ),
    ProjectData(
      title: realEstateTitle,
      language: realEstateLang,
      links: realEstateLinks,
      images: realEstateImages,
      values: realEstateDescription,
    ),
    ProjectData(
      title: pdfReaderTitle,
      language: pdfReaderLang,
      links: pdfReaderLinks,
      images: pdfReaderImages,
      values: pdfReaderDescription,
    ),
    ProjectData(
      title: fridaysSouqTitle,
      language: fridaysSouqLang,
      links: fridaysSouqLinks,
      images: fridaysSouqImages,
      values: fridaysSouqDescription,
    ),
    ProjectData(
      title: barcodeScannerTitle,
      language: barcodeScannerLang,
      links: barcodeScannerLinks,
      images: barcodeScannerImages,
      values: barcodeScannerDescription,
    ),
    ProjectData(
      title: syrianCurrencyTitle,
      language: syrianCurrencyLang,
      links: syrianCurrencyLinks,
      images: syrianCurrencyImages,
      values: syrianCurrencyDescription,
    ),
    ProjectData(
      title: passwordKeeperTitle,
      language: passwordKeeperLang,
      links: passwordKeeperLinks,
      images: passwordKeeperImages,
      values: passwordKeeperDescription,
    ),
  ];
}
