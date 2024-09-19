class ServiceModel {
  static String get title => "Beautiful \napps for \nevery screen";
  static String get description => "We leverage a single codebase to create high-performance apps across \nmobile, web, desktop, and embedded devices, \nensuring consistency and efficiency in every platform.";
  static String get serviceImage => "https://storage.googleapis.com/cms-storage-bucket/2d23077f41d09cd07cef.png";
  static List<Map<String, dynamic>> get serviceList => [
        {
          'title': 'Watch',
          'subTitle': 'Smart Watch apps',
          'description': 'I create high-performance iOS and Android apps, delivering seamless user experiences with a focus on reliability and innovation.',
          'image': 'assets/images/watch.png',
        },
        {
          'title': 'Mobile',
          'subTitle': 'iOS and Android apps',
          'description': 'I create high-performance iOS and Android apps, delivering seamless user experiences with a focus on reliability and innovation.',
          'image': 'assets/images/phone.png',
        },
        {
          'title': 'Web',
          'subTitle': 'Web apps',
          'description': 'I create responsive web apps with Flutter, reaching users everywhere by deploying from the same codebase. This approach allows for fast prototyping and seamless transitions from mobile to web, ensuring a consistent and efficient user experience across platforms.',
          'image': 'assets/images/web.png',
        },
        {
          'title': 'Desktop',
          'subTitle': 'Windows, macOS, and Linux apps',
          'description': 'I build powerful desktop applications for Windows, macOS, and Linux using a single codebase. With familiar tooling, I transform mobile apps into seamless desktop experiences, targeting all major platforms without the need for rewriting.',
          'image': 'assets/images/desktop.png',
        },
        {
          'title': 'Embedded',
          'subTitle': 'Apps for Any Device',
          'description': 'I develop custom embedded solutions using the flexibility of Flutter. From smart devices to automotive systems, I create innovative applications that deploy seamlessly across a variety of embedded environments.',
          'image': 'assets/images/embedded.png',
        },
      ];
}
