enum TechStack { android, iOS, restAPI, firebase }

class ProjectsModel {
  static String get title => "📱My Apps";
  static String get description => "Explore our recent client success stories and witness our full 360 transformations come to life.";
  static List<Map<String, dynamic>> get projectsList => [
        // {
        //   'title': 'Care Rockets',
        //   'techStack': ['Android', 'iOS', "Rest API's", "Firebase", "Socket"],
        //   'description': 'Description will display here...',
        //   'logo': 'assets/images/projects/care_rockets.png',
        //   'androidLink': 'https://play.google.com/store/apps/details?id=com.carerockets&hl=en_IN',
        //   'iOSLink': 'https://apps.apple.com/in/app/care-rockets/id1582939333',
        // },
        {
          'title': 'Pran Spandan',
          'techStack': ['Android', 'iOS', "Rest API's"],
          'description': 'Description will display here...',
          'logo': 'assets/images/projects/pran_spandan.png',
          'androidLink': 'https://play.google.com/store/apps/details?id=com.pranspandan&hl=en-IN',
          'iOSLink': '',
        },
        {
          'title': 'BDEA Ka Idea - Induce Driver',
          'techStack': ['Android', "Rest API's", 'Firebase'],
          'description': 'Description will display here...',
          'logo': 'assets/images/projects/bdea.png',
          'androidLink': 'https://play.google.com/store/apps/details?id=com.bdea.idea&hl=en',
        },

        // {
        //   'title': 'Food AI',
        //   'techStack': ['Android', "Rest API's", 'Firebase'],
        //   'description': 'Description will display here...',
        //   'logo': 'assets/images/placeholder.png',
        //   'androidLink': 'https://play.google.com/store/apps/details?id=com.pranspandan&hl=en-IN',
        //   'iOSLink': 'https://play.google.com/store/apps/details?id=com.pranspandan&hl=en-IN',
        //   'websiteLink': '',
        // },
      ];
}
