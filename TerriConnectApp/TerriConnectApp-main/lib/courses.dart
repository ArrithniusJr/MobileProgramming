import 'package:flutter/material.dart';

class CoursePage extends StatefulWidget {
  final int univen;
  final int ul;
  final int uj;
  final int unisa;
  final int wits;
  final int up;
  final int vaal;
  final int tut;
  final int ufs;
  final int unizulu;
  final int ukzn;
  final int dut;
  final int cput;
  final int su;
  final int ucp;
  final int uwp;
  final int unw;
  final int ump;
  int mark2;

  CoursePage({
    required this.univen,
    required this.ul,
    required this.uj,
    required this.unisa,
    required this.wits,
    required this.up,
    required this.vaal,
    required this.tut,
    required this.ufs,
    required this.unizulu,
    required this.ukzn,
    required this.dut,
    required this.cput,
    required this.su,
    required this.ucp,
    required this.uwp,
    required this.unw,
    required this.ump,
    required this.mark2,
  });

  @override
  _CoursePageState createState() => _CoursePageState();
}

class _CoursePageState extends State<CoursePage> {
  String selectedProvince = 'Limpopo';
  List<String> provinces = [
    'Limpopo',
    'Gauteng',
    'Free State',
    'Kwazulu-Natal',
    'Western Cape',
    'North West',
    'Mpumalanga'
  ];

  //For English subject condition
  bool englvlAll(int eng_lvl) {
    return widget.mark2 >= eng_lvl;
  }

//Univen -- From Limpopo
  bool meetsRequirementsUniven(int points) {
    return widget.univen >= points;
  }

  List<String> getQualifyingCoursesUniven() {
    List<String> qualifyingCourses = [];
    List<String> humanitiesCourses = [];
    List<String> scienceEngineeringCourses = [];
    List<String> managementLawCourses = [];
    List<String> healthScienceCourses = [];

    if (englvlAll(50)) {
      if (meetsRequirementsUniven(30)) {
        humanitiesCourses.addAll([
          '- BSc in Arts',
          '- BSc in Youth Development',
          '- BSc in Theology',
          '- BSc in Social Work',
        ]);
        scienceEngineeringCourses.addAll([
          '- BSc in Agricultural Economics',
          '- BSc in Agribusiness Management',
          '- BSc in Animal Science',
          '- BSc in Plant Production',
          '- BSc in Soil Science',
        ]);
      }

      if (meetsRequirementsUniven(32)) {
        managementLawCourses.addAll([
          '- Bachelor of Administration',
          '- BSc in Commerce (in various disciplines)',
          '- BSc in Tourism Management',
        ]);
        scienceEngineeringCourses.addAll([
          '- BSc in Microbiology',
          '- BSc in Biology',
          '- BSc in Maths & Applied Maths',
          '- BSc in Computer Science',
          '- BSc in Maths & Physics',
          '- BSc in Maths & Statistics',
          '- BSc in Physics & Chemistry',
          '- BSc in Chemistry & Biochemistry',
          '- BSc in Botany & Zoology',
        ]);
      }

      if (meetsRequirementsUniven(34)) {
        healthScienceCourses.addAll([
          '- BSc in Biokinetics',
          '- BSc in Nutrition',
          '- BSc in Sports & Exercise',
        ]);
        managementLawCourses.addAll([
          '- BA in Criminal Justice',
        ]);
      }

      if (meetsRequirementsUniven(35)) {
        scienceEngineeringCourses.addAll([
          '- Bachelor of Environment Science',
          '- Bachelor of Earth Science',
        ]);
      }

      if (meetsRequirementsUniven(36)) {
        healthScienceCourses.addAll([
          '- Bachelor of Nursing',
          '- Bachelor of Psychology',
        ]);
      }

      if (meetsRequirementsUniven(38)) {
        managementLawCourses.addAll([
          '- Bachelor of Laws',
        ]);
      }
    }

    if (humanitiesCourses.isNotEmpty) {
      qualifyingCourses.addAll([
        'Faculty of Humanities & Education:',
        ...humanitiesCourses,
      ]);
    }

    if (scienceEngineeringCourses.isNotEmpty) {
      qualifyingCourses.addAll([
        '\nFaculty of Science & Engineering:',
        ...scienceEngineeringCourses,
      ]);
    }

    if (managementLawCourses.isNotEmpty) {
      qualifyingCourses.addAll([
        '\nFaculty of Management & Law:',
        ...managementLawCourses,
      ]);
    }

    if (healthScienceCourses.isNotEmpty) {
      qualifyingCourses.addAll([
        '\nFaculty of Health Science:',
        ...healthScienceCourses,
      ]);
    }

    if (qualifyingCourses.isEmpty) {
      qualifyingCourses.add('You do not meet the requirements!');
    }

    return qualifyingCourses;
  }

//UL
  bool meetsRequirementsUl(int points) {
    return widget.ul >= points;
  }

  List<String> getQualifyingCoursesUl() {
    List<String> qualifyingCourses = [];
    List<String> humanitiesCourses = [];
    List<String> managementLawCourses = [];
    List<String> scienceEngineeringCourses = [];
    List<String> healthScienceCourses = [];

    if (englvlAll(40)) {
      if (meetsRequirementsUl(22)) {
        managementLawCourses.addAll([
          '- BCom Business Management Ext',
          '- BCom Human Resource Management Ext',
          '- BCom Economics Ext',
        ]);
        scienceEngineeringCourses.addAll([
          '- BSc Mathematical Science Ext',
          '- BSc Life Science Ext',
        ]);
      }
      if (meetsRequirementsUl(23)) {
        humanitiesCourses.addAll([
          '- BA in Arts(Cultural Studies)',
          '- BA in Media Studies',
          '- Bachelor of Psychology',
        ]);
      }
      if (meetsRequirementsUl(24)) {
        humanitiesCourses.addAll([
          '- Bachelor of Education(SP & FET)',
          '- BEd in Foundation Phase',
        ]);
      }
      if (meetsRequirementsUl(25)) {
        humanitiesCourses.addAll([
          '- Bachelor of Information Studies',
          '- BA in Commucation Studies',
          '- Bachelor of Arts in Media Studies',
          '- BA Political Studies',
          '- Bachelor of Social Work',
        ]);
        scienceEngineeringCourses.addAll([
          '- BSc in Agriculture in Soil Science',
        ]);
      }
      if (meetsRequirementsUl(26)) {
        managementLawCourses.addAll([
          '- Bachelor of Commerce in Accountancy Ext',
          '- BCom in Human Resource Management',
          '- BCom in Business Management',
          '- BCom in Economics',
          '- Bachelor in Administration',
          '- BDev in Planning & Management',
          '- Bachelor of Laws Ext',
        ]);
        scienceEngineeringCourses.addAll([
          '- Bachelor of Science in Life Sciences',
          '- Bachelor of Science in Physical Science',
          '- Bachelor of Science in Geology',
        ]);
        healthScienceCourses.addAll([
          '- Bachelor of Science in Dietetics',
          '- Bachelor of Science in Medical Science',
          '- Bachelor of Nursing',
        ]);
      }
      if (meetsRequirementsUl(27)) {
        healthScienceCourses.addAll([
          '- Bachelor of Optometry',
          '- Bachelor of Pharmacy',
          '- Bachelor of Medicine & Surgery',
        ]);
      }
      if (meetsRequirementsUl(28)) {
        managementLawCourses.addAll([
          '- Bachelor of Commerce in Accountancy',
        ]);
      }
      if (meetsRequirementsUl(30)) {
        managementLawCourses.addAll([
          '- Bachelor of Accountancy',
          '- Bachelor of Laws',
        ]);
      }
    }
    //Returning qualifying list
    if (humanitiesCourses.isNotEmpty) {
      qualifyingCourses.addAll([
        'Faculty of Humanities & Education:',
        ...humanitiesCourses,
      ]);
    }
    if (scienceEngineeringCourses.isNotEmpty) {
      qualifyingCourses.addAll([
        '\nFaculty of Science & Engineering:',
        ...scienceEngineeringCourses,
      ]);
    }
    if (managementLawCourses.isNotEmpty) {
      qualifyingCourses.addAll([
        '\nFaculty of Management & Law:',
        ...managementLawCourses,
      ]);
    }
    if (healthScienceCourses.isNotEmpty) {
      qualifyingCourses.addAll([
        '\nFaculty of Health Science:',
        ...healthScienceCourses,
      ]);
    }
    if (qualifyingCourses.isEmpty) {
      qualifyingCourses.add('You do not meet the requirements!');
    }

    return qualifyingCourses;
  }

//Gauteng
//UJ
  bool meetsRequirementsUj(int points) {
    return widget.uj >= points;
  }

  List<String> getQualifyingCoursesUj() {
    List<String> qualifyingCourses = [];
    List<String> artDesignCourses = [];
    List<String> businessCourses = [];
    List<String> educationCourses = [];
    List<String> engineeringCourses = [];
    List<String> healthScienceCourses = [];
    List<String> humanitiesCourses = [];
    List<String> lawCourses = [];
    List<String> scienceCourses = [];

    if (englvlAll(40)) {
      if ((meetsRequirementsUj(18)) || (meetsRequirementsUj(19))) {
        artDesignCourses.addAll([
          '- Dip in Design & Manufacture',
        ]);
        businessCourses.addAll([
          '- Dip in People Management',
          '- Sip in Small Business Management',
        ]);
        engineeringCourses.addAll([
          '- Dip Management Services',
        ]);
      }
      if ((meetsRequirementsUj(20)) || (meetsRequirementsUj(21))) {
        artDesignCourses.addAll([
          '- Dip in Fashion Production',
        ]);
        businessCourses.addAll([
          '- Dip in Tourism Management',
        ]);
        engineeringCourses.addAll([
          '- Operations Mangement',
        ]);
      }
      if (meetsRequirementsUj(22)) {
        businessCourses.addAll([
          '- Dip in Accountancy',
        ]);
        scienceCourses.addAll([
          '- Dip Analytical Chemistry',
          '- Dip Food Technology',
        ]);
      }
      if (meetsRequirementsUj(22)) {
        engineeringCourses.addAll([
          '- BSc in Extraction Metallurgy Ext',
        ]);
      }
      if ((meetsRequirementsUj(23)) || (meetsRequirementsUj(24))) {
        artDesignCourses.addAll([
          '- Dip in Architecture',
          '- BA in Design Communication',
          '- BA in Fashion Design',
          '- BA in Industrial Design',
          '- BA in Visual Art',
        ]);
        engineeringCourses.addAll([
          '- Bachelor of Mine Surveying',
          '- BEngTech in Mining Engineering',
        ]);
        scienceCourses.addAll([
          '- Dip Biotechnology',
        ]);
      }
      if ((meetsRequirementsUj(24))) {
        healthScienceCourses.addAll([
          '- Bachelor of Environmental Health',
        ]);
      }
      if (meetsRequirementsUj(26)) {
        artDesignCourses.addAll([
          '- Bachelor in Emergency Medical Care',
        ]);
      }
      if ((meetsRequirementsUj(26)) || (meetsRequirementsUj(28))) {
        artDesignCourses.addAll([
          '- B Architecture',
          '- Bachelor or Arts',
        ]);
        engineeringCourses.addAll([
          '- BEngTech in Civil Engineering',
        ]);
        businessCourses.addAll([
          '- Bachelors Degree in Accounting',
          '- Bachelors Degree in Hospitality Management',
          '- Bachelors Degree in Human Resources',
          '- BA in Public Management',
          '- BCom in Business Management',
          '- BCom in Finance',
          '- BCom in Industrial Psychology',
          '- BCom in Information Management',
          '- BCom in Marketing Management',
        ]);
        educationCourses.addAll([
          '- BEd in Education Foundation Phase',
          '- BEd in Psychology Teaching'
              '- BEd in Language Education',
          '- BEd in Senior Phase & Further Education',
        ]);
        scienceCourses.addAll([
          '- BSc in Life & Environmental Sciences Ext',
          '- BSc in Mathematical Sciences',
          '- BSc in Physical Science',
        ]);
      }
      if (meetsRequirementsUj(27)) {
        engineeringCourses.addAll([
          '- BSc in Urban & Ragional Planning',
        ]);
        healthScienceCourses.addAll([
          '- BCom in Sport Management',
          '- Bachelor of Health Science',
        ]);
        humanitiesCourses.addAll([
          '- BA in Community Development & Leadership',
        ]);
      }

      if (meetsRequirementsUj(30)) {
        engineeringCourses.addAll([
          '- BEngTech in Electrical Engineering',
        ]);
        healthScienceCourses.addAll([
          '- Bachelor of Nursing',
        ]);
        scienceCourses.addAll([
          '- BSc in Information Technology',
          '- BSc in Computer Science & Informatics',
          '- BSc in Biochemistry & Botany',
          '- BSc in Botany & Chemistry',
          '- BSc in Botany & Zoology',
          '- BSc in Zoology & Chemistry',
          '- BSc in Zoology & Geography',
          '- BSC in Physiology & Psychology',
          '- BSC in Physiology & Biochemistry',
          '- Bsc in Geography & Environmental Management',
          '- Bsc in Geology & Environmental Management',
          '- Bsc in Geology & Geography',
        ]);
      }
      if (meetsRequirementsUj(31)) {
        healthScienceCourses.addAll([
          '- Bachelor of Biokinetics',
          '- Bachelor in Radiation Therapy',
          '- Bachelor in Nuclear Medicine',
          '- Bachelor of Optometry'
        ]);
        humanitiesCourses.addAll([
          '- Bachelor of Social Work',
        ]);
        scienceCourses.addAll([
          '- Bachelor of Science in Mathematical Sciences'
              '- Bachelor of Science in Physical Sciences',
        ]);
      }
      if (meetsRequirementsUj(32)) {
        lawCourses.addAll([
          '- Bachelor in Law',
          '- BCom in Law',
          '- Bachelors Degree in LLB'
        ]);
      }

      if (meetsRequirementsUj(33)) {
        businessCourses.addAll([
          '- BCom in Accounting',
        ]);
        scienceCourses.addAll([
          '- BSc in Computational Science',
          '- BSc in Mathematics & Statistics'
              '- BSc in Mathematics & Economics',
          '- BSc in Actuarial Science',
        ]);
      }
      if (meetsRequirementsUj(34)) {
        scienceCourses.addAll([
          '- BSc in Computer Science & Informatics with AI',
        ]);
      }
    }
    //organizing Draft List
    if (artDesignCourses.isNotEmpty) {
      qualifyingCourses.addAll([
        'Faculty of Art & Designs:',
        ...artDesignCourses,
      ]);
    }
    if (businessCourses.isNotEmpty) {
      qualifyingCourses.addAll([
        '\nFaculty of Business Management:',
        ...businessCourses,
      ]);
    }
    if (educationCourses.isNotEmpty) {
      qualifyingCourses.addAll([
        '\nFaculty of Education:',
        ...educationCourses,
      ]);
    }
    if (engineeringCourses.isNotEmpty) {
      qualifyingCourses.addAll([
        '\nFaculty of Engineering Science:',
        ...engineeringCourses,
      ]);
    }
    if (healthScienceCourses.isNotEmpty) {
      qualifyingCourses.addAll([
        '\nFaculty of Health Science:',
        ...healthScienceCourses,
      ]);
    }
    if (humanitiesCourses.isNotEmpty) {
      qualifyingCourses.addAll([
        '\nFaculty of Humanities:',
        ...humanitiesCourses,
      ]);
    }
    if (lawCourses.isNotEmpty) {
      qualifyingCourses.addAll([
        '\nFaculty of Law:',
        ...lawCourses,
      ]);
    }
    //Returning Final List
    if (qualifyingCourses.isEmpty) {
      qualifyingCourses.add('You do not meet the requirements!');
    }

    return qualifyingCourses;
  }

//Wits
  bool meetsRequirementsWits(int points) {
    return widget.wits >= points;
  }

  List<String> getQualifyingCoursesWits() {
    List<String> qualifyingCourses = [];

    List<String> managementLawCourses = [];
    List<String> engineeringCourses = [];
    List<String> healthScienceCourses = [];
    List<String> humanitiesCourses = [];
    List<String> scienceCourses = [];

    if (englvlAll(50)) {
      if (meetsRequirementsWits(34)) {
        engineeringCourses.addAll([
          '- Bachelor of Architectual Studies',
        ]);
        humanitiesCourses.addAll([
          '- Bachelor of Arts in Digital Arts',
          '- Bachelor of Arts in Film & Television',
          '- Bachelor of Arts in Fine Arts',
          '- Bachelor of Music',
          '- Bachelor of Arts in Theatre & Performance',
          '- Bachelor of Audiology',
          '- Bachelor of Social Work',
        ]);
      }
      if (meetsRequirementsWits(36)) {
        engineeringCourses.addAll([
          '- BSc in Urban & Regional Planning',
          '- BSc in Construction Studies',
        ]);
        humanitiesCourses.addAll([
          '- Bachelor of Arts(general)',
        ]);
      }
      if (meetsRequirementsWits(37)) {
        humanitiesCourses.addAll([
          '- Bachelor of Education: Foundation Phase',
          '- Bachelor of Education: Intermediate Phase',
          '- Bachelor of Education: Senior Phase',
        ]);
      }
      if (meetsRequirementsWits(38)) {
        managementLawCourses.addAll([
          '- Bachelor of Commerce(general)',
          '- Bachelor of Accounting',
          '- Bachelor of Politics, Philosophy & Economics'
              '- Bachelor of Commerce(information Systems)',
        ]);
      }
      if (meetsRequirementsWits(42)) {
        managementLawCourses.addAll([
          '- Bachelor of Ecomomic Science',
        ]);
        engineeringCourses.addAll([
          '- BSc in Engineering(& Chemical)',
          '- BSc in Enginnering & Materials Enginnering',
          '- BSc in Civil Engineering',
          '- BSc in Electrical Engineering',
          '- BSc in Biomedical Engineering',
          '- BEc in Digital Arts',
          '- BSc in Mechanical Engineering',
          '- BSc in Industrial Engineering',
          '- BSc in Mining Engineering',
        ]);
        scienceCourses.addAll([
          '- BSc in Geographical Studies',
          '- Bachelor of Environmental Studies',
          '- BSc in Geological Sciences',
          '- BSc in Mathematics and Mathematical Science',
          '- BSc in Chemistry',
          '- BSc in Physical Sciences',
        ]);
      }

      if (meetsRequirementsWits(43)) {
        managementLawCourses.addAll([
          '- Bachelor of Law',
        ]);
        humanitiesCourses.addAll([
          '- Bachelor of Arts(Law)',
        ]);
        scienceCourses.addAll([
          '- BSc in Biological Science',
          '- BSc in Chemistry with Chemistry Engineering',
          '- BSc in Materials Sciences',
          '- BSc in Astrophysics',
        ]);
      }
      if (meetsRequirementsWits(44)) {
        managementLawCourses.addAll([
          '- Bachelor of Accounting Science',
        ]);
        scienceCourses.addAll([
          '- BSc in Computational & Applied Maths',
          '- BSc in Computer Science',
        ]);
      }
      if (meetsRequirementsWits(46)) {
        managementLawCourses.addAll([
          '- Bachelor of Laws',
        ]);
      }
    }
    //Returning qualifying list
    if (managementLawCourses.isNotEmpty) {
      qualifyingCourses.addAll([
        'Faculty of Commerce, Law & Management:',
        ...managementLawCourses,
      ]);
    }
    if (engineeringCourses.isNotEmpty) {
      qualifyingCourses.addAll([
        '\nFaculty of Engineering &  Built Environment:',
        ...engineeringCourses,
      ]);
    }
    if (healthScienceCourses.isNotEmpty) {
      qualifyingCourses.addAll([
        '\nFaculty of Health Sciences:',
        ...healthScienceCourses,
      ]);
    }
    if (humanitiesCourses.isNotEmpty) {
      qualifyingCourses.addAll([
        '\nFaculty of Humanities:',
        ...humanitiesCourses,
      ]);
    }
    if (scienceCourses.isNotEmpty) {
      qualifyingCourses.addAll([
        '\nFaculty of Science:',
        ...scienceCourses,
      ]);
    }
    if (qualifyingCourses.isEmpty) {
      qualifyingCourses.add('You do not meet the requirements!');
    }

    return qualifyingCourses;
  }

//Unisa
  bool meetsRequirementsUnisa(int points) {
    return widget.unisa >= points;
  }

  List<String> getQualifyingCoursesUnisa() {
    List<String> qualifyingCourses = [];
    List<String> scienceCourses = [];

    if (englvlAll(40)) {
      if (meetsRequirementsUnisa(15)) {
        scienceCourses.addAll([
          '- HCert in Physical Sciences',
          '- HCert in Mathematics and Statistics',
        ]);
      }

      if (meetsRequirementsUnisa(18)) {
        scienceCourses.addAll([
          '- Dip in Chemical Engineering',
          '- Dip in Civil Engineering',
          '- Dip in Electrical Engineering',
          '- Dip in Industrial Engineering',
          '- Dip in Information Technology',
          '- Dip in Mechanical Engineering',
          '- Dip in Mining Engineering',
          '- Dip in Pulp and Paper Technology',
        ]);
      }

      if (meetsRequirementsUnisa(21)) {
        scienceCourses.addAll([
          '- BSc Applied Mathematics and Computer Science',
          '- BSc Applied Mathematics and Physics',
          '- BSc Applied Mathematics and Statistics',
          '- BSc Chemistry and Applied Mathematics',
          '- BSc Chemistry and Computer Science',
          '- BSc Chemistry and Information Systems',
          '- BSc Chemistry and Physics',
          '- BSc Chemistry and Statistics',
          '- BSc General',
          '- BSc Mathematics and Applied Mathematics',
          '- BSc Mathematics and Chemistry',
          '- BSc Mathematics and Computer Science',
          '- BSc Mathematics and Information Systems',
          '- BSc Mathematics and Physics',
          '- BSc Mathematics and Statistics',
          '- BSc Statistics and Physics',
          '- BSc in Computer Science',
          '- BSc in Computer & Informatics',
        ]);
      }
    }
    //Returning qualifying list
    if (scienceCourses.isNotEmpty) {
      qualifyingCourses.addAll([
        'Faculty of Science:',
        ...scienceCourses,
      ]);
    }
    if (qualifyingCourses.isEmpty) {
      qualifyingCourses.add('You do not meet the requirements!');
    }

    return qualifyingCourses;
  }

//UP
  bool meetsRequirementsUp(int points) {
    return widget.up >= points;
  }

  List<String> getQualifyingCoursesUp() {
    List<String> qualifyingCourses = [];
    List<String> educationCourses = [];
    List<String> commerceCourses = [];
    List<String> engineeringCourses = [];
    List<String> lawCourses = [];
    List<String> humanitiesCourses = [];
    List<String> healthSciencesCourses = [];

    if (englvlAll(50)) {
      if (meetsRequirementsUp(20)) {
        educationCourses.addAll([
          '- HCert in Sport Sciences',
        ]);
      }
      if (meetsRequirementsUp(20)) {
        engineeringCourses.addAll([
          '- BSc in Architecture',
          '- BSc in Town & Regional Planning',
        ]);
      }

      if (meetsRequirementsUp(28)) {
        educationCourses.addAll([
          '- BEd in Foundation Phase',
          '- BEd in Intermediate Phase',
        ]);
        engineeringCourses.addAll([
          '- BIS in Publishing',
          '- BIS in Information Science',
        ]);
        healthSciencesCourses.addAll([
          '- Bachelor of Medicine',
          '- Bachelor of Dietetics',
          '- Bachelor of Nursing',
        ]);
      }
    }
    if (meetsRequirementsUp(30)) {
      commerceCourses.addAll([
        '- BCom in Agribusiness Management',
        '- BCom in Human Resource Management',
        '- BCom in Supply Chain Management',
        '- BCom in Marketing Management',
      ]);
      engineeringCourses.addAll([
        '- BSc in Construction Management',
        '- BSc in Real Estate',
        '- BSc in Quantity Surveying',
        '- BCom in Informatics: Information Systems',
        '- BSc in Computer Science',
      ]);
      humanitiesCourses.addAll([
        '- Bachelor of Social Work',
        '- Bachelor of Arts in Languages',
        '- BSocSci in Industrial & Labour Sociology',
        '- Bachelor of Arts in Fine Arts',
        '- BSocSci in Heritage & Cultural Tourism',
      ]);
      humanitiesCourses.addAll([
        '- Bachelor of Oppupatinal Therapy',
        '- Bachelor of Physiotherapy',
        '- Bachelor of Radiography',
      ]);
    }

    if (meetsRequirementsUp(32)) {
      commerceCourses.addAll([
        '- BCom in Financial Sciences',
        '- BCom in Economics',
      ]);
      lawCourses.addAll([
        '- Bachelor of Arts in Law',
        '- BCom in Law',
      ]);
      humanitiesCourses.addAll([
        '- BA on Audiology',
        '- Bachelor of Arts in Information Design',
        '- Bachelar of Music',
      ]);
      engineeringCourses.addAll([
        '- BSc in Biological Sciences',
        '- BSc in Medical Sciences',
        '- BSc in Plant Science',
        '- BSc in Biotechnology',
        '- BSc in Zology',
        '- BSc in Botany',
        '- BSc in Agricultural & Food Services',
        '- BconSciConsumer Science',
        '- BConSciHospital Management',
      ]);
    }

    if (meetsRequirementsUp(34)) {
      commerceCourses.addAll([
        '- BCom in Accounting Sciences',
        '- BCom in Investment Management',
      ]);
    }
    if (meetsRequirementsUp(35)) {
      engineeringCourses.addAll([
        '- BEng in Chemical Engineering',
        '- BEng in Industrial Engineering',
        '- BEng in Civil Engineering',
        '- BEng in Electrical Engineering',
        '- BEng in Mechanical Engineering',
        '- BEng in Computer Engineeering',
        '- BSc in Chemistry',
        '- BSc in Physics (& Maths)',
        '- BSc in geology',
        '- BSc in Mathematical Stastics',
      ]);
      healthSciencesCourses.addAll([
        '- Bachelor of Dental Surgery',
        '- Bachelor of Clinical Medical Pracrtice',
      ]);
    }

    //Returning qualifying list
    if (educationCourses.isNotEmpty) {
      qualifyingCourses.addAll([
        'Faculty of Education:',
        ...educationCourses,
      ]);
    }
    if (commerceCourses.isNotEmpty) {
      qualifyingCourses.addAll([
        '\nFaculty of Economics & Management:',
        ...commerceCourses,
      ]);
    }
    if (engineeringCourses.isNotEmpty) {
      qualifyingCourses.addAll([
        '\nFaculty of Science & Engineering:',
        ...engineeringCourses,
      ]);
    }
    if (lawCourses.isNotEmpty) {
      qualifyingCourses.addAll([
        '\nFaculty of Law:',
        ...lawCourses,
      ]);
    }
    if (humanitiesCourses.isNotEmpty) {
      qualifyingCourses.addAll([
        '\nFaculty of Humanities:',
        ...humanitiesCourses,
      ]);
    }
    if (healthSciencesCourses.isNotEmpty) {
      qualifyingCourses.addAll([
        '\nFaculty of Health Sciences:',
        ...healthSciencesCourses,
      ]);
    }
    if (qualifyingCourses.isEmpty) {
      qualifyingCourses.add('You do not meet the requirements!');
    }

    return qualifyingCourses;
  }

//Tut
  bool meetsRequirementsTut(int points) {
    return widget.tut >= points;
  }

  List<String> getQualifyingCoursesTut() {
    List<String> qualifyingCourses = [];
    List<String> artsDesignCourses = [];
    List<String> economicsCourses = [];
    List<String> engineeringCourses = [];
    List<String> humanitiesCourses = [];
    List<String> techCourses = [];
    List<String> managementCourses = [];
    List<String> scienceCourses = [];

    if (englvlAll(40)) {
      if (meetsRequirementsTut(18)) {
        artsDesignCourses.addAll([
          '- HCert in Music',
        ]);
        scienceCourses.addAll([
          '- HCert in Dental Assisting',
          '- HCert in Resource & Waste Management',
          '- HCert in Water Treatment',
        ]);
      }
      if (meetsRequirementsTut(19)) {
        managementCourses.addAll([
          '- Dip in Admin Information Management',
        ]);
        scienceCourses.addAll([
          '- Dip in Crop Production',
        ]);
      }
      if (meetsRequirementsTut(20)) {
        artsDesignCourses.addAll([
          '- Dip in Fashion Design & Technology',
          '- Dip in Fine Arts',
          '- Dip in Performing Arts',
        ]);
        engineeringCourses.addAll([
          '- HCert in Industrial Engineering',
          '- HCert in Mechanical Engineering',
        ]);
        engineeringCourses.addAll([
          '- Dip in Geomatics',
          '- Dip in Law',
          '- Dip in Policing',
          '- Dip in Legal Support',
          '- Dip in Public Affairs',
        ]);
        managementCourses.addAll([
          '- Dip in Tourism Management',
          '- Dip in Entepreneurship',
          '- Dip in Management Services',
        ]);
        scienceCourses.addAll([
          '- Diploma in Food Technology',
          '- Diploma in Geology',
          '- Diploma in Industrial Physics',
          '- Dip in Water Science & Technology',
        ]);
      }

      if (meetsRequirementsTut(22)) {
        artsDesignCourses.addAll([
          '- Dip in Commercial Photography',
          '- Dip in Motion Picture Production',
        ]);
        economicsCourses.addAll([
          '- HCert in Accounting',
          '- Dip in Accounting',
          '- Dip in Economics',
          '- Dip in Financial Managment',
        ]);
        humanitiesCourses.addAll([
          '- Dip in Adult & Communication Education',
        ]);
        managementCourses.addAll([
          '- Diploma in Marketing',
          '- Dip in Retail Business Management',
          '- Dip Sport Management',
          '- Dip in Supply Chain Management',
        ]);
        scienceCourses.addAll([
          '- Diploma in Nature Conservation',
        ]);
      }

      if (meetsRequirementsTut(23)) {
        economicsCourses.addAll([
          '- Dip in Pubic Finance',
        ]);
        engineeringCourses.addAll([
          '- Dip in Geomatics',
        ]);
        techCourses.addAll([
          '- Dip in Multimedia Computing',
        ]);
        managementCourses.addAll([
          '- Dip in Hospitality Management',
        ]);
      }
      if (meetsRequirementsTut(24)) {
        engineeringCourses.addAll([
          '- Dip in Integrated Communication',
          '- Dip in Jounalism',
        ]);
        managementCourses.addAll([
          '- Dip in Information Management',
          '- Dip in Human Resourse Management',
        ]);
        scienceCourses.addAll([
          '- Dip in Animal Science',
          '- Dip in Biotechnology',
          '- Dip in Environmental Sciences',
          '- Bachelor of Science in Biokinetics',
          '- BSc in Clinical Technology',
          '- BSc in Medical Laboratory Science',
          '- BSc in Environmental Health',
          '- Bachelor in Pharmacy',
          '- BSc in Industrial Chemistry',
          '- BSc in Analytical Chemistry',
        ]);
      }
      if (meetsRequirementsTut(25)) {
        engineeringCourses.addAll([
          '- Bachelor of Architecure',
          '- Bachelor of Geography',
        ]);
        humanitiesCourses.addAll([
          '- BEd in Foundation Phase Teaching',
        ]);
        scienceCourses.addAll([
          '- Bachelor of Nursing',
        ]);
      }
      if (meetsRequirementsTut(26)) {
        engineeringCourses.addAll([
          '- Dip in Building',
          '- Dip in Electrical Engineering',
        ]);
        techCourses.addAll([
          '- Dip in Computer Science',
          '- Dip in Computer Systems Engineering'
              '- Dip in Informatics',
          '- Dip in Information Technology',
        ]);
      }
      if (meetsRequirementsTut(28)) {
        engineeringCourses.addAll([
          '- BEng in Chemical Engineering',
          '- BEng in Civil Engineering',
          '- BEng in Material Engineering',
          '- BEng in Mechanical Engineering',
        ]);
        humanitiesCourses.addAll([
          '- BEd in Intermediate Phase Teaching',
          '- BEd in Senior Phase & Training Teaching',
        ]);
      }
      if (meetsRequirementsTut(30)) {
        engineeringCourses.addAll([
          '- BEng in Electrical Engineering',
          '- BEng in Industrial Engineering',
        ]);
      }
    }

    //Returning qualifying list
    if (artsDesignCourses.isNotEmpty) {
      qualifyingCourses.addAll([
        'Faculty of Arts & Design:',
        ...artsDesignCourses,
      ]);
    }
    if (economicsCourses.isNotEmpty) {
      qualifyingCourses.addAll([
        '\nFaculty of Economics & Finance:',
        ...economicsCourses,
      ]);
    }
    if (engineeringCourses.isNotEmpty) {
      qualifyingCourses.addAll([
        '\nFaculty of Engineering & Built Emvironment:',
        ...engineeringCourses,
      ]);
    }
    if (humanitiesCourses.isNotEmpty) {
      qualifyingCourses.addAll([
        '\nFaculty of Humanities:',
        ...humanitiesCourses,
      ]);
    }
    if (techCourses.isNotEmpty) {
      qualifyingCourses.addAll([
        '\nFaculty of Information and Communication Technology:',
        ...techCourses,
      ]);
    }
    if (managementCourses.isNotEmpty) {
      qualifyingCourses.addAll([
        '\nFaculty of Management Sciences:',
        ...managementCourses,
      ]);
    }
    if (scienceCourses.isNotEmpty) {
      qualifyingCourses.addAll([
        '\nFaculty of Science, Health Sciences and Agriculture:',
        ...scienceCourses,
      ]);
    }
    if (qualifyingCourses.isEmpty) {
      qualifyingCourses.add('You do not meet the requirements!');
    }

    return qualifyingCourses;
  }

//Vaal
  bool meetsRequirementsVaal(int points) {
    return widget.tut >= points;
  }

  List<String> getQualifyingCoursesVaal() {
    List<String> qualifyingCourses = [];
    List<String> csCourses = [];
    List<String> managementCourses = [];
    List<String> humanitiesCourses = [];
    List<String> techCourses = [];

    if (englvlAll(50)) {
      if (meetsRequirementsVaal(20)) {
        managementCourses.addAll([
          '- Dip in Accountancy',
          '- Dip in Hunan Resources Management',
          '- Dip in Logistics & Supply Chain Management',
          '- Dip in Sport Management'
              '- Bachelor in Accountancy',
          '- Bachelor in Hunan Resources Management',
          '- Bachelor in Marketing & Retail Business',
        ]);
        humanitiesCourses.addAll([
          '- Diploma in Food Service Management',
          '- Diploma in Ecotourism Management',
          '- Diploma in Safety Management',
          '- Diploma in Tourism Management',
          '- Diploma in Policing',
          '- Bachelor in Senior Phase Teaching',
        ]);
      }
      if (meetsRequirementsVaal(22)) {
        humanitiesCourses.addAll([
          '- Dip in Photography',
          '- Dip in Graphic Design',
          '- Dip in Fashion',
        ]);
      }
      if (meetsRequirementsVaal(23)) {
        techCourses.addAll([
          '- Diploma in Operations Management',
        ]);
      }
      if (meetsRequirementsVaal(24)) {
        csCourses.addAll([
          '- Dip in Analytical Chemistry',
          '- Dip in Information Technology',
          '- Dip in Non-Destructive Testing',
        ]);
        techCourses.addAll([
          '- Diploma in Engineering(general)',
          '- Diploma in Engineering(general Ext)',
        ]);
      }
      if (meetsRequirementsVaal(26)) {
        csCourses.addAll([
          '- Dip in Biotechnology',
        ]);
      }
    }

    //Returning qualifying list
    if (csCourses.isNotEmpty) {
      qualifyingCourses.addAll([
        'Faculty of Applied & Computer Science:',
        ...csCourses,
      ]);
    }
    if (managementCourses.isNotEmpty) {
      qualifyingCourses.addAll([
        '\nFaculty of Management Science:',
        ...managementCourses,
      ]);
    }
    if (humanitiesCourses.isNotEmpty) {
      qualifyingCourses.addAll([
        '\nFaculty of Human Science:',
        ...humanitiesCourses,
      ]);
    }
    if (techCourses.isNotEmpty) {
      qualifyingCourses.addAll([
        '\nFaculty of Engineering & Technology:',
        ...techCourses,
      ]);
    }
    if (qualifyingCourses.isEmpty) {
      qualifyingCourses.add('You do not meet the requirements!');
    }

    return qualifyingCourses;
  }

// Free State
//Ufs
  bool meetsRequirementsUfs(int points) {
    return widget.ufs >= points;
  }

  List<String> getQualifyingCoursesUfs() {
    List<String> qualifyingCourses = [];
    List<String> managementCourses = [];
    List<String> educationCourses = [];
    List<String> healthScienceCourses = [];
    List<String> lawCourses = [];
    List<String> scienceCourses = [];
    List<String> humanitiesCourses = [];

    if (englvlAll(50)) {
      if (meetsRequirementsUfs(20)) {
        humanitiesCourses.addAll([
          '- HCert in Music Perfomance',
        ]);
      }
      if (meetsRequirementsUfs(28)) {
        managementCourses.addAll([
          '- BCom in Economics',
          '- BCom in Finance',
          '- BCom in Business & Financial Analytics',
          '- BCom in Marketing',
          '- BCom in Business Management',
          '- BCom in Human Resource Management',
          '- Bachelor of Administration'
        ]);
      }
      if (meetsRequirementsUfs(30)) {
        educationCourses.addAll([
          '- Bachelor of Education Foundation Phase',
          '- Bachelor of Education Intermediate Phase',
          '- Bachelor of Education Senior Phase & FET',
        ]);
        healthScienceCourses.addAll([
          '- BSc in Radiation Science',
          '- Bachelor of Sport Coaching',
          '- Bachelor of Nursing',
        ]);
        scienceCourses.addAll([
          '- BSc in Animal Production Management',
          '- BSc in Crop Production',
          '- BSc in Agricultural Science',
        ]);
        humanitiesCourses.addAll([
          '- Bachelor of Arts in Journalism',
          '- Bachelor of Arts in Fine Arts',
          '- Bachelor of Social Work',
          '- Bachelor of Social Science',
          '- Bachelor of Arts in Languages',
          '- Bachelor of Community Development',
        ]);
      }
      if (meetsRequirementsUfs(32)) {
        scienceCourses.addAll([
          '- Bachelor of Optometry',
          '- Bachelor of Biokinetics',
          '- Bachelor of Occupational Therapy',
          '- Bachelor of Biochemistry and Botany',
          '- Bachelor of Biochemistry and Entomology',
          '- Bachelor of Biochemistry and Genetics',
          '- Bachelor of Biochemistry and Microbiology',
          '- Bachelor of Biochemistry and Statistics',
          '- Bachelor of Biochemistry and Zoology',
          '- Bachelor of Biochemistry and Physiology',
          '- Bachelor of Botany and Entomology',
          '- Bachelor of Botany and Genetics',
          '- Bachelor of Botany and Microbiology',
          '- Bachelor of Botany and Plant Breeding',
          '- Bachelor of Botany and Plant Pathology',
          '- Bachelor of Botany and Zoology',
          '- Bachelor of Plant Health Ecology',
          '- Bachelor of Entomology and Genetics',
          '- Bachelor of Entomology and Microbiology',
          '- Bachelor of Entomology and Zoology',
          '- Bachelor of Behavioural Genetics',
          '- Bachelor of Genetics and Microbiology',
          '- Bachelor of Genetics and Physiology',
          '- Bachelor of Genetics and Zoology',
          '- Bachelor of Microbiology and Statistics',
          '- Bachelor of Microbiology and Zoology',
          '- Bachelor of Animal Science',
          '- Bachelor of Agrometeorology',
          '- Bachelor of Agronomy',
          '- Bachelor of Soil Science',
          '- Bachelor of Plant Breeding',
          '- Bachelor of Plant Pathology',
          '- Bsc in Computer Science & Chemistry',
          '- BSc in Computer Science & Physics',
          '- BSc in Computer Science & Management',
        ]);

        if (meetsRequirementsUfs(33)) {
          managementCourses.addAll([
            '- BCom in Law',
          ]);
          healthScienceCourses.addAll([
            '- Bachelor of Optometry',
            '- Bachelor of Biokinetics',
            '- Bachelor of Occupational Therapy',
          ]);
          lawCourses.addAll([
            '- Bachelor of Laws',
          ]);
        }
        if (meetsRequirementsUfs(34)) {
          managementCourses.addAll([
            '- Bachelor of Accounting',
          ]);
        }
        if (meetsRequirementsUfs(34)) {
          healthScienceCourses.addAll([
            '- Bachelor of Medicine & Surgery',
          ]);
          scienceCourses.addAll([
            '- Bachelor of Forensic Science',
            '- BSc in Mathematics & Applied Mathematics',
            '- BSc in Mathematics & Applied Chemistry',
            '- BSc in Mathematics & Statistics',
            '- BSc in Mathematics & Physics',
          ]);
        }
      }
    }

    //Returning qualifying list
    if (managementCourses.isNotEmpty) {
      qualifyingCourses.addAll([
        'Faculty of Economic & Management Science:',
        ...managementCourses,
      ]);
    }
    if (educationCourses.isNotEmpty) {
      qualifyingCourses.addAll([
        '\nFaculty of Education:',
        ...educationCourses,
      ]);
    }
    if (healthScienceCourses.isNotEmpty) {
      qualifyingCourses.addAll([
        '\nFaculty of Health Sciences:',
        ...healthScienceCourses,
      ]);
    }
    if (lawCourses.isNotEmpty) {
      qualifyingCourses.addAll([
        '\nFaculty of Law:',
        ...lawCourses,
      ]);
    }
    if (scienceCourses.isNotEmpty) {
      qualifyingCourses.addAll([
        '\nFaculty of Natural & Agricultural Sciences:',
        ...scienceCourses,
      ]);
    }
    if (humanitiesCourses.isNotEmpty) {
      qualifyingCourses.addAll([
        '\nFaculty of Humanities:',
        ...humanitiesCourses,
      ]);
    }
    if (qualifyingCourses.isEmpty) {
      qualifyingCourses.add('You do not meet the requirements!');
    }
    return qualifyingCourses;
  }

//Kwazulu-Natal
//Ukzn
  bool meetsRequirementsUkzn(int points) {
    return widget.ukzn >= points;
  }

  List<String> getQualifyingCoursesUkzn() {
    List<String> qualifyingCourses = [];
    List<String> scienceCourses = [];
    List<String> healthScienceCourses = [];
    List<String> humanitiesCourses = [];
    List<String> managementCourses = [];

    if (englvlAll(50)) {
      if (meetsRequirementsUkzn(28)) {
        scienceCourses.addAll([
          '- Bachelor of Agriculture',
        ]);
        humanitiesCourses.addAll([
          '- Bachelor of Arts',
          '- Bachelor of Social Work',
        ]);
      }
      if (meetsRequirementsUkzn(30)) {
        scienceCourses.addAll([
          '- BSc in Environmental Science',
        ]);
        healthScienceCourses.addAll([
          '- Bachelor of Nursing',
          '- Bachelor of Dental Therapy',
        ]);
        humanitiesCourses.addAll([
          '- Bachelor of Architectural Studies',
        ]);
      }
      if (meetsRequirementsUkzn(32)) {
        managementCourses.addAll([
          '- Bachelor of Law',
          '- BCom in Management Studies',
          '- Bachelor of Commerce in Accounting',
        ]);
      }
      if (meetsRequirementsUkzn(33)) {
        healthScienceCourses.addAll([
          '- Bachelor of Nursing',
          '- Bachelor of Dental Therapy',
          '- Bachelor of Oral Hygiene',
          '- Bachelor of Pharmacy',
        ]);
        managementCourses.addAll([
          '- Bachelor of Business Science',
        ]);
      }
    }

    //Returning qualifying list
    if (scienceCourses.isNotEmpty) {
      qualifyingCourses.addAll([
        'Faculty of Agriculture, Engineering & Science:',
        ...scienceCourses,
      ]);
    }
    if (healthScienceCourses.isNotEmpty) {
      qualifyingCourses.addAll([
        '\nFaculty of Health Sciences:',
        ...healthScienceCourses,
      ]);
    }

    if (humanitiesCourses.isNotEmpty) {
      qualifyingCourses.addAll([
        '\nFaculty of Humanities:',
        ...humanitiesCourses,
      ]);
    }
    if (managementCourses.isNotEmpty) {
      qualifyingCourses.addAll([
        '\nFaculty of Law & Management Studies:',
        ...managementCourses,
      ]);
    }
    if (qualifyingCourses.isEmpty) {
      qualifyingCourses.add('You do not meet the requirements!');
    }

    return qualifyingCourses;
  }

//DUT
  bool meetsRequirementsDut(int points) {
    return widget.dut >= points;
  }

  List<String> getQualifyingCoursesDut() {
    List<String> qualifyingCourses = [];
    List<String> accCourses = [];
    List<String> scienceCourses = [];
    List<String> artCourses = [];
    List<String> engineeringCourses = [];
    List<String> healthScienceCourse = [];
    List<String> managementCourse = [];

    if (englvlAll(40)) {
      if (meetsRequirementsUkzn(20)) {
        accCourses.addAll([
          '- Bachelor of Accounting',
          '- Bachelor of Informatics',
          '- Bachelor of Business Administration',
          '- Bachelor of Commerce in Accounting Information Systems',
        ]);
        scienceCourses.addAll([
          '- Bachelor of Analytical Chemistry',
          '- Bachelor of Biotechnology',
          '- Bachelor of Clothing Management',
          '- Bachelor of Consumer Science',
          '- Bachelor of Food and Nutrition',
          '- Bachelor of Food Technology',
          '- Bachelor of Horticulture',
          '- Bachelor of Maritime Studies',
          '- Bachelor of Sport Management',
          '- Bachelor of Textile Technology',
        ]);
        artCourses.addAll([
          '- Bachelor of Education(FET)',
          '- Bachelor of Fine Arts',
          '- Bachelor of Graphic Design',
          '- Bachelor of Industrial Design',
          '- Bachelor of Interior Design',
          '- Bachelor of Visual Communication Design',
        ]);
        engineeringCourses.addAll([
          '- Bachelor of Architectural Technology',
          '- Bachelor of Building Management & Quantity Surveying',
          '- Bachelor of Engineering: Chemical',
          '- Bachelor of Engineering: Civil',
          '- Bachelor of Engineering: Computer Systems',
          '- Bachelor of Engineering: Electrical Light Current',
          '- Bachelor of Engineering: Electrical Power',
          '- Bachelor of Engineering: Industrial',
          '- Bachelor of Engineering: Mechanical',
          '- Bachelor of Pulp and Paper Technology',
          '- Bachelor of Surveying',
          '- Bachelor of Town and Regional Planning',
        ]);
        healthScienceCourse.addAll([
          '- Bachelor of Biomedical Technology',
          '- Bachelor of Child & Youth Development',
          '- Bachelor of Chiropractic',
          '- Bachelor of Clinical Technology',
          '- Bachelor of Dental Assisting',
          '- Bachelor of Dental Technology',
          '- Bachelor of Emergency Medical Care',
          '- Bachelor of Environmental Health',
          '- Bachelor of Homeopathy',
          '- Bachelor of Nursing Science',
          '- Bachelor of Radiography',
          '- Bachelor of Somatology',
        ]);
        managementCourse.addAll([
          '- Bachelor in Catering Management',
          '- Bachelor of Ecotourism Management',
          '- Bachelor of Hospitality Management',
          '- Bachelor of Human Resource Management',
          '- Bachelor of Marketing',
          '- Bachelor of Operations Management',
          '- Bachelor of Public Management',
          '- Bachelor of Public Relations Management',
          '- Bachelor of Retail Business Management',
          '- Bachelor of Tourism Management',
        ]);
      }
    }

    //Returning qualifying list
    if (accCourses.isNotEmpty) {
      qualifyingCourses.addAll([
        'Faculty of Accounting & Informatics:',
        ...accCourses,
      ]);
    }
    if (scienceCourses.isNotEmpty) {
      qualifyingCourses.addAll([
        '\nFaculty of Applied Science:',
        ...scienceCourses,
      ]);
    }
    if (artCourses.isNotEmpty) {
      qualifyingCourses.addAll([
        '\nFaculty of Arts & Design:',
        ...artCourses,
      ]);
    }
    if (engineeringCourses.isNotEmpty) {
      qualifyingCourses.addAll([
        '\nFaculty of Engineering:',
        ...engineeringCourses,
      ]);
    }
    if (healthScienceCourse.isNotEmpty) {
      qualifyingCourses.addAll([
        '\nFaculty of Health Science:',
        ...healthScienceCourse,
      ]);
    }
    if (managementCourse.isNotEmpty) {
      qualifyingCourses.addAll([
        '\nFaculty of Law & Management Studies:',
        ...managementCourse,
      ]);
    }
    if (qualifyingCourses.isEmpty) {
      qualifyingCourses.add('You do not meet the requirements!');
    }
    return qualifyingCourses;
  }

//Western Cape
//UWC
  bool meetsRequirementsUwp(int points) {
    return widget.uwp >= points;
  }

  List<String> getQualifyingCoursesUwp() {
    List<String> qualifyingCourses = [];
    List<String> healthCourses = [];
    List<String> managementCourses = [];
    List<String> humanitiesCourses = [];
    List<String> scienceCourses = [];
    List<String> dentistryCourses = [];
    List<String> lawCourses = [];
    List<String> educationCourses = [];

    if (englvlAll(40)) {
      if (meetsRequirementsUwp(27)) {
        scienceCourses.addAll([
          '- Bachelor of Sceince in Computer Science',
          '- Bachelor of Medical Biosciences',
        ]);
        dentistryCourses.addAll([
          '- BSc of Oral Health',
        ]);
      }
      if (meetsRequirementsUwp(30)) {
        healthCourses.addAll([
          '- Bachelor of Social Work',
          '- BA Sport, Recreation and Exercise Science',
          '- BSc Sport and Exercise Science',
          '- BSc Occupational Therapy',
          '- BSc Physiotherapy',
          '- Bachelor of Nursing',
        ]);
        managementCourses.addAll([
          '- Bachelor of Adminstration',
          '- BCom in Accounting',
        ]);
        lawCourses.addAll([
          '- BCom in Law',
        ]);
      }
      if (meetsRequirementsUwp(33)) {
        healthCourses.addAll([
          '- BSc Dietetics and Nutrition',
          '- BSc Sport and Exercise Science',
          '- BSc Occupational Therapy',
          '- BSc Physiotherapy',
          '- Bachelor of Nursing',
        ]);
        scienceCourses.addAll([
          '- BSc in Environmental & Water Science',
          '- BSc in Biotechnology',
          '- BSc in Biotechnology & Conservation Biology',
          '- BSc in Medical Biosciences',
          '- BSc in Chemical Science',
          '- BSC in Geology',
          '- BSc in Physical Sciences',
          '- BSc in Mathematical & Statistical Science',
        ]);
        educationCourses.addAll([
          '- BEd Accounting(FET)',
          '- BEd Mathematics Senior Phase',
          '- BEd Foundation Phase Teaching',
        ]);
      }
      if (meetsRequirementsUwp(35)) {
        humanitiesCourses.addAll([
          '- Bachelor of Arts',
          '- Bachelor of Theology',
          '- Bachelor of Library & Information Science',
        ]);
      }
      if (meetsRequirementsUwp(37)) {
        lawCourses.addAll([
          '- Bachelor of Laws(LLB)',
        ]);
      }
      if (meetsRequirementsUwp(38)) {
        scienceCourses.addAll([
          '- Bachelor of Pharmacy',
        ]);
      }
      if (meetsRequirementsUwp(39)) {
        healthCourses.addAll([
          '- BSc Physiotherapy',
        ]);
      }
      if (meetsRequirementsUwp(40)) {
        dentistryCourses.addAll([
          '- BSc of Dental Surgery',
        ]);
      }
    }

    //Returning qualifying list
    if (healthCourses.isNotEmpty) {
      qualifyingCourses.addAll([
        'Faculty of Community & Health Sciences:',
        ...healthCourses,
      ]);
    }
    if (managementCourses.isNotEmpty) {
      qualifyingCourses.addAll([
        '\nFaculty of Economic & Management Sciences:',
        ...managementCourses,
      ]);
    }
    if (humanitiesCourses.isNotEmpty) {
      qualifyingCourses.addAll([
        '\nFaculty of Arts & Humanities:',
        ...humanitiesCourses,
      ]);
    }
    if (scienceCourses.isNotEmpty) {
      qualifyingCourses.addAll([
        '\nFaculty of Natural Sciences:',
        ...scienceCourses,
      ]);
    }
    if (dentistryCourses.isNotEmpty) {
      qualifyingCourses.addAll([
        '\nFaculty of Dentistry:',
        ...dentistryCourses,
      ]);
    }
    if (lawCourses.isNotEmpty) {
      qualifyingCourses.addAll([
        '\nFaculty of Law:',
        ...lawCourses,
      ]);
    }
    if (educationCourses.isNotEmpty) {
      qualifyingCourses.addAll([
        '\nFaculty of Education:',
        ...educationCourses,
      ]);
    }

    if (qualifyingCourses.isEmpty) {
      qualifyingCourses.add('You do not meet the requirements!');
    }
    return qualifyingCourses;
  }

//UCP
  bool meetsRequirementsUcp(int points) {
    return widget.ucp >= points;
  }

  List<String> getQualifyingCoursesUcp() {
    List<String> qualifyingCourses = [];
    List<String> commerceCourses = [];
    List<String> engineeringCourses = [];
    List<String> healthScienceCourses = [];
    List<String> humanitiesCourses = [];
    List<String> lawCourses = [];
    List<String> scienceCourses = [];

    if (englvlAll(50)) {
      if (meetsRequirementsUcp(550)) {
        scienceCourses.addAll([
          '- Bachelor of Science in All Streams',
        ]);
      }
      if (meetsRequirementsUcp(510)) {
        lawCourses.addAll([
          '- Bachelor of Law',
        ]);
      }
      if (meetsRequirementsUcp(480)) {
        commerceCourses.addAll([
          '- Bachelor of Commerce & Business Science',
          '- Bachelor of Financial Accounting (General)',
          '- Bachelor of Accounting & Law',
          '- Bachelor of Economics & Law',
          '- Bachelor of Economics & Finance',
          '- Bachelor of Economics & Statistics',
          '- Bachelor of Information Systems',
          '- Bachelor of Information Systems & Computer Science',
          '- Bachelor of Information Systems & Finance',
          '- Bachelor of Management Studies',
          '- Bachelor of Philosophy Politics & Economics',
        ]);
      }
      if (meetsRequirementsUcp(470)) {
        commerceCourses.addAll([
          '- Bachelor of Commerce & Business Science',
        ]);
      }
      if (meetsRequirementsUcp(420)) {
        engineeringCourses.addAll([
          '- BEng in Civil Engineering',
          '- BEng in Electricity Engineering',
          '- BEng in Mechanical Engineering',
          '- BEng in Computer Engineering',
          '- BSc in Chemical Engineering',
        ]);
      }
      if (meetsRequirementsUcp(390)) {
        engineeringCourses.addAll([
          '- BSc in Property Studies',
          '- Bachelor of Science in Geomatics',
        ]);
      }
      if (meetsRequirementsUcp(380)) {
        humanitiesCourses.addAll([
          '- Bachelor of Arts',
          '- Bachelor of Social Science',
        ]);
        humanitiesCourses.addAll([
          '- Bachelor of Social Work',
          '- Bachelor of Arts in Theatre & Performance',
          '- Bachelor of Music',
          '- Bachelor of Arts in Fine',
        ]);
      }

      if (meetsRequirementsUcp(348)) {
        engineeringCourses.addAll([
          '- Bachelor of Architectual Studies',
        ]);
      }
      if (meetsRequirementsUcp(450)) {
        healthScienceCourses.addAll([
          '- Bachelor of Medicine & Surgery',
        ]);
        humanitiesCourses.addAll([
          '- Bachelor of Social Science in Philosophy',
          '- Bachelor of Social Science in Politics',
          '- Bachelor of Social Science in Economics',
        ]);
      }
      if (meetsRequirementsUcp(360)) {
        healthScienceCourses.addAll([
          '- Bachelor of Science in Physiotherapy',
        ]);
      }
      if (meetsRequirementsUcp(340)) {
        healthScienceCourses.addAll([
          '- BSc in Occupational Therapy',
          '- Bachelor of Science in Audiology',
          '- Bachelor of Science in Language Pathology',
        ]);
      }
    }

    //Returning qualifying list
    if (commerceCourses.isNotEmpty) {
      qualifyingCourses.addAll([
        'Faculty of Commerce:',
        ...commerceCourses,
      ]);
    }
    if (engineeringCourses.isNotEmpty) {
      qualifyingCourses.addAll([
        '\nFaculty of Engineering & Built Engineering:',
        ...engineeringCourses,
      ]);
    }
    if (healthScienceCourses.isNotEmpty) {
      qualifyingCourses.addAll([
        '\nFaculty of Health Sciences:',
        ...healthScienceCourses,
      ]);
    }
    if (humanitiesCourses.isNotEmpty) {
      qualifyingCourses.addAll([
        '\nFaculty of Humanities:',
        ...humanitiesCourses,
      ]);
    }
    if (lawCourses.isNotEmpty) {
      qualifyingCourses.addAll([
        '\nFaculty of Law:',
        ...lawCourses,
      ]);
    }
    if (scienceCourses.isNotEmpty) {
      qualifyingCourses.addAll([
        '\nFaculty of Housing:',
        ...scienceCourses,
      ]);
    }

    if (qualifyingCourses.isEmpty) {
      qualifyingCourses.add('You do not meet the requirements!');
    }
    return qualifyingCourses;
  }

//CPUT
  bool meetsRequirementsCput(int points) {
    return widget.cput >= points;
  }

  List<String> getQualifyingCoursesCput() {
    List<String> qualifyingCourses = [];
    List<String> scienceCourses = [];
    List<String> managementCourses = [];
    List<String> educationCourses = [];
    List<String> engineeringCourses = [];
    List<String> healthScienceCourses = [];
    List<String> artCourses = [];

    if (englvlAll(40)) {
      if (meetsRequirementsCput(22)) {
        managementCourses.addAll([
          '- Diploma in Marketing',
          '- Diploma in Enterpreneurship',
        ]);
      }
      if (meetsRequirementsCput(24)) {
        managementCourses.addAll([
          '- Diploma in Human Resources',
          '- Diploma in Human Resources Ext',
          '- Diploma in Management Ext',
          '- Diploma in Business and Information Administration Ext',
          '- Diploma in Retail Business Management',
          '- Diploma in Public Administration Ext',
          '- Diploma in Printing Management',
          '- Diploma in Tourism Management Ext',
          '- Diploma in Events Management Ext',
          '- ND: Sports Management Ext',
        ]);
      }
      if (meetsRequirementsCput(25)) {
        healthScienceCourses.addAll([
          '- HCert in Dental Assisting',
        ]);
      }
      if (meetsRequirementsCput(26)) {
        scienceCourses.addAll([
          '- Bachelor of Science in Agriculture',
          '- Bachelor of Science in Agriculture Management',
        ]);
      }
      if (meetsRequirementsCput(28)) {
        scienceCourses.addAll([
          '- Bachelor of Science in Biotechnology',
          '- Bachelor of Consumer Science',
          '- BSc in Food Science & Technology',
        ]);

        managementCourses.addAll([
          '- Diploma in Human Resources',
          '- Diploma in Management',
          '- Diploma in Business and Information Administration',
          '- Diploma in Operations Management',
          '- Diploma in Public Administration',
          '- Diploma in Retail Business Management',
          '- Diploma in Tourism Management',
          '- Diploma in Events Management',
          '- ND: Sports Management',
          '- ND: Hospitality Management (Accommodation)',
          '- ND: Hospitality Management (Food & Beverage)',
          '- ND: Hospitality Management (Professional Cookery)',
          '- Diploma in Real Estate',
        ]);
        engineeringCourses.addAll([
          '- Diploma in Clothing & Textile Technology',
        ]);
        healthScienceCourses.addAll([
          '- BTech in Nursing Science Ext',
        ]);
        artCourses.addAll([
          '- Dip in Fashion',
          '- Dip in Visual Communication & Design',
          '- Dip in Product Design',
          '- Dip in Jewellery Design & Manufacture',
        ]);
      }

      if (meetsRequirementsCput(30)) {
        artCourses.addAll([
          '- HCert in Information & Communication',
          '- Dip in Architectural Technology',
          '- Diploma in Interior Design',
          '- Dip in Urban & Regional Planning'
        ]);
        scienceCourses.addAll([
          '- Bachelor of Science in Environmental Health',
          '- BSc in Envornmental Management',
          '- BSc in Horticultural Sciences',
        ]);
        engineeringCourses.addAll([
          '- BSc in Chemical Engineering',
          '- BSc in Electrical Engineering',
          '- BSc in Computer Systems',
          '- BSc in Industrial Engineering',
          '- BSc in Mechanical Engineering',
          '- BSc in Civil Engineering',
        ]);
        healthScienceCourses.addAll([
          '- BTech in Nursing Science',
          '- BSc in Diagnostic Radiography',
          '- BSc in Radiation Therapy',
          '- BSc in Nuclear Medicine Technology',
        ]);
      }
      if (meetsRequirementsCput(32)) {
        scienceCourses.addAll([
          '- Bachelor of Science in Nature Conservation',
          '- Bachelor of Science in Marine Science',
        ]);
        educationCourses.addAll([
          '- Bachelor of Education in Foundation Phase',
          '- Bachelor of Education in Intermediate Phase',
          '- Bachelor of Education in Senior Phase',
        ]);
        artCourses.addAll([
          '- Diploma in Journalism',
        ]);
      }
      if (meetsRequirementsCput(33)) {
        scienceCourses.addAll([
          '- Bachelor of Science in Mathematical Science',
        ]);
        artCourses.addAll([
          '- Dip in Film Production',
          '- Diploma in Photography',
        ]);
      }
      if (meetsRequirementsCput(35)) {
        healthScienceCourses.addAll([
          '- Bachelors in Emergency Medical Care',
        ]);
      }
      if (meetsRequirementsCput(36)) {
        healthScienceCourses.addAll([
          '- BHSc in Medical Laboratory Science',
        ]);
        artCourses.addAll([
          '- Dip in Application Development',
          '- Dip in Communication Networks',
          '- Dip in Multimedia Application',
        ]);
      }
    }

    //Returning qualifying list
    if (scienceCourses.isNotEmpty) {
      qualifyingCourses.addAll([
        'Faculty of Applied Science:',
        ...scienceCourses,
      ]);
    }
    if (managementCourses.isNotEmpty) {
      qualifyingCourses.addAll([
        '\nFaculty of Business & Management Science:',
        ...managementCourses,
      ]);
    }
    if (educationCourses.isNotEmpty) {
      qualifyingCourses.addAll([
        '\nFaculty of Education:',
        ...educationCourses,
      ]);
    }
    if (engineeringCourses.isNotEmpty) {
      qualifyingCourses.addAll([
        '\nFaculty of Engineering:',
        ...engineeringCourses,
      ]);
    }
    if (healthScienceCourses.isNotEmpty) {
      qualifyingCourses.addAll([
        '\nFaculty of Health & Wellness Science:',
        ...healthScienceCourses,
      ]);
    }
    if (artCourses.isNotEmpty) {
      qualifyingCourses.addAll([
        '\nFaculty of Informatics & Design:',
        ...artCourses,
      ]);
    }
    if (qualifyingCourses.isEmpty) {
      qualifyingCourses.add('You do not meet the requirements!');
    }
    return qualifyingCourses;
  }

//SU
  bool meetsRequirementsSu(int points) {
    return widget.su >= points;
  }

  List<String> getQualifyingCoursesSu() {
    List<String> qualifyingCourses = [];
    List<String> agriscienceCourses = [];
    List<String> artCourses = [];
    List<String> managementCourses = [];
    List<String> educationCourses = [];
    List<String> engineeringCourses = [];
    List<String> lawCourses = [];
    List<String> healthScienceCourses = [];
    List<String> scienceCourses = [];

    if (englvlAll(40)) {
      if (meetsRequirementsSu(24)) {
        agriscienceCourses.addAll([
          '- Bachelor in Agricbusiness Management',
          '- Bachelor in Agricultural Economics',
          '- Bachelor in Animal Production System',
          '- Bachelor of Science in Food Services',
          '- Bachelor of Science in Conservation Ecology',
          '- BScAgric in Plant & Soil Science',
          '- BAgric in Agricultural Production & Management',
        ]);
        artCourses.addAll([
          '- Bachelor of Arts in Humanities',
          '- Bachelor of Arts in Language & Culture',
          '- BA in Development & Environment',
          '- Bachelor of Arts in Drama & Theatre',
          '- BA in Human Resource Management',
          '- Bachelor of Arts in International Studies',
          '- Bachelor of Arts in Music',
          '- Bachelor of Social Work',
          '- Bachelor of Sport Science',
          '- BA in Political, Philosophical & Economic Studies',
        ]);
        managementCourses.addAll([
          '- BCom in Management & Economic Science',
          '- BCom in Mathematical Sciences',
          '- BCom in International Business',
          '- Bachelor of Accounting',
        ]);
        educationCourses.addAll([
          '- Bachelor in Education(FET)'
              '- Bachelor in Education(general)',
        ]);
        engineeringCourses.addAll([
          '- Bachelor of Science in Engineering(general)',
        ]);
        lawCourses.addAll([
          '- Bachelor of Laws',
          '- BCom in Laws',
          '- Bachelor of Accounting in Law',
        ]);
        healthScienceCourses.addAll([
          '- Bachelor of Science in Physiotherapy',
          '- Bachelor of Science in Dietetics',
          '- Bachelor of Occupational Therapy',
          '- Bachelor of Nursing & Midwifery',
          '- Bachelor of Speech-Language & Hearing Therapy',
        ]);
        scienceCourses.addAll([
          '- Bachelor in Biological Science',
          '- BSc in Biodiversity & Ecology',
          '- BSc in Molecular Biology & Biotechnology',
          '- BSc in Human Life Science',
          '- BSc in Sport Science',
          '- BSc in Physical Sciences Programmes',
          '- Bachelor of Science in Chemistry',
          '- Bachelor of Science in Earth Science',
          '- Bachelor of Science in Mathematical Science',
          '- Bachelor of Science in Earh Science',
          '- BSc in Mathematical Sciences: Computer Science',
        ]);
      }
    }

    //Returning qualifying list
    if (agriscienceCourses.isNotEmpty) {
      qualifyingCourses.addAll([
        'Faculty of Applied Science:',
        ...agriscienceCourses,
      ]);
    }
    if (artCourses.isNotEmpty) {
      qualifyingCourses.addAll([
        '\nFaculty of Informatics & Design:',
        ...artCourses,
      ]);
    }
    if (managementCourses.isNotEmpty) {
      qualifyingCourses.addAll([
        '\nFaculty of Economic & Management Science:',
        ...managementCourses,
      ]);
    }
    if (educationCourses.isNotEmpty) {
      qualifyingCourses.addAll([
        '\nFaculty of Education:',
        ...educationCourses,
      ]);
    }
    if (engineeringCourses.isNotEmpty) {
      qualifyingCourses.addAll([
        '\nFaculty of Engineering:',
        ...engineeringCourses,
      ]);
    }
    if (lawCourses.isNotEmpty) {
      qualifyingCourses.addAll([
        '\nFaculty of Law:',
        ...lawCourses,
      ]);
    }
    if (healthScienceCourses.isNotEmpty) {
      qualifyingCourses.addAll([
        '\nFaculty of Medicine & Health Science:',
        ...healthScienceCourses,
      ]);
    }
    if (scienceCourses.isNotEmpty) {
      qualifyingCourses.addAll([
        '\nFaculty of Science:',
        ...scienceCourses,
      ]);
    }

    if (qualifyingCourses.isEmpty) {
      qualifyingCourses.add('You do not meet the requirements!');
    }
    return qualifyingCourses;
  }

//North West
//NWU
  bool meetsRequirementsUnw(int points) {
    return widget.unw >= points;
  }

  List<String> getQualifyingCoursesUnw() {
    List<String> qualifyingCourses = [];
    List<String> lawCourses = [];
    List<String> educationCourses = [];
    List<String> scienceCourses = [];
    List<String> managementCourses = [];
    List<String> healthScienceCourses = [];
    List<String> humanitiesCourses = [];

    if (englvlAll(40)) {
      if (meetsRequirementsUnw(18)) {
        healthScienceCourses.addAll([
          '- Diploma in Coaching Science',
        ]);
        humanitiesCourses.addAll([
          '- Diploma in Music',
        ]);
      }
      if (meetsRequirementsUnw(22)) {
        scienceCourses.addAll([
          '- Diploma in Animal Health',
          '- Diploma in Animal Science',
          '- Diploma in Plant Science',
          '- Bachelor of Science\n ~ with Chemistry and Physics\n ~ with Physics and Mathematics\n ~ with Physics and Applied Mathematics\n ~ with Physics and Computer Science\n ~ with Computer Science and Mathematics\n ~ with Biochemistry and Chemistry\n ~ with Applied Mathematics and Chemistry\n ~ with Chemistry and Mathematics\n ~ with Applied Mathematics and Electronics\n ~ with Electronics and Mathematics\n ~ with Electronics and Physics\n ~ with Chemistry and Computer Science\n ~ with Computer Science and Electronics',
        ]);
        humanitiesCourses.addAll([
          '- Bachelor of Social Sciences',
          '- Bachelor of Behavioural Science',
        ]);
      }
      if (meetsRequirementsUnw(24)) {
        managementCourses.addAll([
          '- BCom in Accounting(general)',
          '- BCom in Statistics',
          '- BCom in Business Operations',
        ]);
        healthScienceCourses.addAll([
          '- Bachelor of Health Science in Physiology',
          '- Bachelor of Health Science in Psychology',
          '- Bachelor of Consumer Studies',
        ]);
        humanitiesCourses.addAll([
          '- Bachelor of Arts in Language Technology',
          '- Bachelor of Art in Sociology',
        ]);
      }
      if (meetsRequirementsUnw(25)) {
        healthScienceCourses.addAll([
          '- Bachelor of Nursing',
        ]);
        humanitiesCourses.addAll([
          '- Bachelor of Policing Practice',
        ]);
      }
      if (meetsRequirementsUnw(26)) {
        educationCourses.addAll([
          '- Bachelor of Education in Foundation Phase',
          '- Bachelor of Education in Intermediate Phase',
        ]);
        scienceCourses.addAll([
          '- Bachelor of Science in Biological Sciences\n ~ with Microbiology and Biochemistry ~ with Microbiology and Botany\n ~ with Botany and Biochemistry\n ~ with Zoology and Biochemistry\n ~ with Chemistry and Physiology\n ~ with Zoology and Botany\n ~ with Zoology and Microbiology\n ~ with Zoology and Physiology\n ~ with Microbiology and Physiology',
        ]);
        managementCourses.addAll([
          '- BCom in Economics Sciences',
          '- BCom in Tourism Management',
        ]);
        healthScienceCourses.addAll([
          '- Bachelor of Science in Behavioural Science',
          '- Bachelor of Social Science in Psychology',
        ]);
        humanitiesCourses.addAll([
          '- Bachelogy of Philosophy',
        ]);
      }
      if (meetsRequirementsUnw(28)) {
        lawCourses.addAll([
          '- Bachelor of Arts in Law',
        ]);
        managementCourses.addAll([
          '- BCom Financial Accountancy',
        ]);
        healthScienceCourses.addAll([
          '- Bachelor of Social Work',
        ]);
      }
      if (meetsRequirementsUnw(30)) {
        lawCourses.addAll([
          '- BCom in Law',
          '- Bachelor of Law',
        ]);
        managementCourses.addAll([
          '- BCom in Management Accountancy',
        ]);
        healthScienceCourses.addAll([
          '- Bachelor of Science in Dietetics',
        ]);
      }
      if (meetsRequirementsUnw(32)) {
        healthScienceCourses.addAll([
          '- BCom in Pharmacy',
          '- Bachelor of Health Science in Biokenitics',
        ]);
        managementCourses.addAll([
          '- BCom in Management Accountancy',
        ]);
      }
      if (meetsRequirementsUnw(36)) {
        managementCourses.addAll([
          '- BCom in Forensic Accountancy',
        ]);
      }
    } //Returning qualifying list
    if (lawCourses.isNotEmpty) {
      qualifyingCourses.addAll([
        'Faculty of Law:',
        ...lawCourses,
      ]);
    }
    if (educationCourses.isNotEmpty) {
      qualifyingCourses.addAll([
        '\nFaculty of Education:',
        ...educationCourses,
      ]);
    }
    if (scienceCourses.isNotEmpty) {
      qualifyingCourses.addAll([
        '\nFaculty of Natural & Agricultural Science:',
        ...scienceCourses,
      ]);
    }
    if (managementCourses.isNotEmpty) {
      qualifyingCourses.addAll([
        '\nFaculty of Economic Management Science:',
        ...managementCourses,
      ]);
    }
    if (healthScienceCourses.isNotEmpty) {
      qualifyingCourses.addAll([
        '\nFaculty of Health Science:',
        ...healthScienceCourses,
      ]);
    }
    if (humanitiesCourses.isNotEmpty) {
      qualifyingCourses.addAll([
        '\nFaculty of Humanities:',
        ...humanitiesCourses,
      ]);
    }

    if (qualifyingCourses.isEmpty) {
      qualifyingCourses.add('You do not meet the requirements!');
    }
    return qualifyingCourses;
  }

//Mpumalanga
//UMP
  bool meetsRequirementsUmp(int points) {
    return widget.ump >= points;
  }

  List<String> getQualifyingCoursesUmp() {
    List<String> qualifyingCourses = [];
    List<String> managementCourses = [];
    List<String> scienceCourses = [];
    List<String> artsCourses = [];
    List<String> educationCourses = [];

    if (englvlAll(50)) {
      if (meetsRequirementsUmp(25)) {
        scienceCourses.addAll([
          '- Diploma in Agriculture in Plat Production',
        ]);
      }
      if (meetsRequirementsUmp(26)) {
        managementCourses.addAll([
          '- Diploma in Hospitality Management',
        ]);
        scienceCourses.addAll([
          '- Diploma in Appliction Development',
        ]);
      }
      if (meetsRequirementsUmp(28)) {
        scienceCourses.addAll([
          '- Bachelor in Agricultural Extension',
        ]);
        educationCourses.addAll([
          '- BEd in Foundation Phase Teaching',
        ]);
      }
      if (meetsRequirementsUmp(29)) {
        scienceCourses.addAll([
          '- Diploma in Nature Conservation',
        ]);
      }
      if (meetsRequirementsUmp(30)) {
        scienceCourses.addAll([
          '- Bachelor of Science in Agriculture',
        ]);
        artsCourses.addAll([
          '- Bachelor of Arts(general)',
        ]);
      }
      if (meetsRequirementsUmp(31)) {
        managementCourses.addAll([
          '- Bachelor in Development Studies',
        ]);
      }
      if (meetsRequirementsUmp(32)) {
        managementCourses.addAll([
          '- Bachelor of Commerce Degree',
        ]);
        scienceCourses.addAll([
          '- Bachelor of Science degree',
        ]);
      }
    }

    //Returning qualifying list
    if (managementCourses.isNotEmpty) {
      qualifyingCourses.addAll([
        'Faculty of Management Science:',
        ...managementCourses,
      ]);
    }
    if (scienceCourses.isNotEmpty) {
      qualifyingCourses.addAll([
        '\nFaculty of Natural & Agricultural Science:',
        ...scienceCourses,
      ]);
    }
    if (artsCourses.isNotEmpty) {
      qualifyingCourses.addAll([
        '\nFaculty of Arts & Design:',
        ...artsCourses,
      ]);
    }
    if (educationCourses.isNotEmpty) {
      qualifyingCourses.addAll([
        '\nFaculty of Education:',
        ...educationCourses,
      ]);
    }

    if (qualifyingCourses.isEmpty) {
      qualifyingCourses.add('You do not meet the requirements!');
    }
    return qualifyingCourses;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 248, 248, 248),
      body: ListView(
        children: [
          Column(
            children: [
              const SizedBox(height: 10),
              SizedBox(
                width: MediaQuery.of(context).size.width - 30,
                child: const Text(
                  'The following may be accurate, but you are urged to visit the university prospectors for confirmation.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0xFF000000),
                    fontSize: 13,
                    fontWeight: FontWeight.normal,
                    fontFamily: 'Times New Roman',
                  ),
                ),
              ),
              const SizedBox(height: 17),

              //dropdown -- NEW
              Container(
                alignment: Alignment.center,
                padding: EdgeInsets.symmetric(horizontal: 0),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    //primary: Colors.transparent,
                    //elevation: 1,
                    primary: Color.fromARGB(255, 231, 231, 231),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                  onPressed: () {
                    showModalBottomSheet<void>(
                      context: context,
                      shape: const RoundedRectangleBorder(
                        //color: Color.fromARGB(255, 236, 236, 236),
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(40.0),
                          topRight: Radius.circular(40.0),
                        ),
                      ),
                      builder: (BuildContext context) {
                        return Column(
                          mainAxisSize: MainAxisSize.min,
                          children: provinces.map((String province) {
                            return ListTile(
                              title: Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Text(
                                  province,
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontFamily: 'Ubuntu',
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                              onTap: () {
                                setState(() {
                                  selectedProvince = province;
                                });
                                Navigator.pop(context); // Close the BottomSheet
                              },
                            );
                          }).toList(),
                        );
                      },
                    );
                  },
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Container(
                        child: Padding(
                          padding: EdgeInsets.symmetric(vertical: 12),
                          child: Row(
                            children: [
                              Text(
                                '$selectedProvince',
                                style: TextStyle(
                                  fontSize: 18,
                                  color: Color.fromARGB(255, 27, 27, 27),
                                ),
                              ),
                              Icon(
                                Icons.arrow_drop_down,
                                color: Color(0xFF000000),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              const SizedBox(height: 17),
              //Limpopo View
              if (selectedProvince == 'Limpopo')
                Visibility(
                  visible: selectedProvince == 'Limpopo',
                  maintainState: true,
                  child: Center(
                    child: Column(
                      children: [
                        //Limpopo
                        Center(
                          child: Column(
                            children: [
                              Container(
                                width: MediaQuery.of(context).size.width - 30,
                                decoration: const BoxDecoration(
                                  color: Color.fromARGB(255, 236, 236, 236),
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(7.0),
                                  ),
                                ),
                                child: Padding(
                                  padding: EdgeInsets.symmetric(vertical: 10),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      //Province name and university names
                                      Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Padding(
                                            padding: EdgeInsets.only(
                                                right: 8, left: 8),
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  'University of Venda',
                                                  textAlign: TextAlign.center,
                                                  style: TextStyle(
                                                    color: Color(0xFF000000),
                                                    fontSize: 14,
                                                    fontWeight: FontWeight.w700,
                                                    fontFamily: 'Ubuntu',
                                                  ),
                                                ),
                                                Container(
                                                  width: MediaQuery.of(context)
                                                          .size
                                                          .width -
                                                      100,
                                                  child: Divider(
                                                    thickness: 1,
                                                    color: Colors.grey,
                                                  ),
                                                ),
                                                if (meetsRequirementsUniven(0))
                                                  Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children:
                                                        getQualifyingCoursesUniven()
                                                            .map(
                                                                (course) =>
                                                                    Text(
                                                                      course,
                                                                      textAlign:
                                                                          TextAlign
                                                                              .start,
                                                                      style:
                                                                          TextStyle(
                                                                        color: Color(
                                                                            0xFF000000),
                                                                        fontSize:
                                                                            13,
                                                                        fontWeight:
                                                                            FontWeight.w100,
                                                                        fontFamily:
                                                                            'Ubuntu',
                                                                      ),
                                                                    ))
                                                            .toList(),
                                                  )
                                                else
                                                  Text(
                                                    'You do not meet the requirements!',
                                                    textAlign: TextAlign.start,
                                                    style: TextStyle(
                                                      color: Color(0xFF000000),
                                                      fontSize: 13,
                                                      fontWeight:
                                                          FontWeight.w100,
                                                      fontFamily: 'Ubuntu',
                                                    ),
                                                  ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                      SizedBox(height: 25),
                                      //Province name and university names
                                      Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Padding(
                                            padding: EdgeInsets.only(
                                                right: 8, left: 8),
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                const Text(
                                                  'University of Limpopo',
                                                  textAlign: TextAlign.center,
                                                  style: TextStyle(
                                                    color: Color(0xFF000000),
                                                    fontSize: 14,
                                                    fontWeight: FontWeight.w700,
                                                    fontFamily: 'Ubuntu',
                                                  ),
                                                ),
                                                Container(
                                                  width: MediaQuery.of(context)
                                                          .size
                                                          .width -
                                                      100,
                                                  child: Divider(
                                                    thickness: 1,
                                                    color: Colors.grey,
                                                  ),
                                                ),
                                                if (meetsRequirementsUl(0))
                                                  Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children:
                                                        getQualifyingCoursesUl()
                                                            .map(
                                                                (course) =>
                                                                    Text(
                                                                      course,
                                                                      textAlign:
                                                                          TextAlign
                                                                              .start,
                                                                      style:
                                                                          TextStyle(
                                                                        color: Color(
                                                                            0xFF000000),
                                                                        fontSize:
                                                                            13,
                                                                        fontWeight:
                                                                            FontWeight.w100,
                                                                        fontFamily:
                                                                            'Ubuntu',
                                                                      ),
                                                                    ))
                                                            .toList(),
                                                  )
                                                else
                                                  Text(
                                                    'You do not meet the requirements!',
                                                    textAlign: TextAlign.start,
                                                    style: TextStyle(
                                                      color: Color(0xFF000000),
                                                      fontSize: 13,
                                                      fontWeight:
                                                          FontWeight.w100,
                                                      fontFamily: 'Ubuntu',
                                                    ),
                                                  ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 20),
                      ],
                    ),
                  ),
                ),

              //Gauteng view
              if (selectedProvince == 'Gauteng')
                Visibility(
                  visible: selectedProvince == 'Gauteng',
                  maintainState: true,
                  child: Center(
                    child: Column(
                      children: [
                        //Gauteng
                        Center(
                          child: Column(
                            children: [
                              Container(
                                width: MediaQuery.of(context).size.width - 30,
                                decoration: const BoxDecoration(
                                  color: Color.fromARGB(255, 236, 236, 236),
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(7.0),
                                  ),
                                ),
                                child: Padding(
                                  padding: EdgeInsets.symmetric(vertical: 10),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      //UJ
                                      Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Padding(
                                            padding: EdgeInsets.only(
                                                right: 8, left: 8),
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  'University of Johannesburg',
                                                  textAlign: TextAlign.center,
                                                  style: TextStyle(
                                                    color: Color(0xFF000000),
                                                    fontSize: 14,
                                                    fontWeight: FontWeight.w700,
                                                    fontFamily: 'Ubuntu',
                                                  ),
                                                ),
                                                Container(
                                                  width: MediaQuery.of(context)
                                                          .size
                                                          .width -
                                                      100,
                                                  child: Divider(
                                                    thickness: 1,
                                                    color: Colors.grey,
                                                  ),
                                                ),
                                                if (meetsRequirementsUj(0))
                                                  Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children:
                                                        getQualifyingCoursesUj()
                                                            .map(
                                                                (course) =>
                                                                    Text(
                                                                      course,
                                                                      textAlign:
                                                                          TextAlign
                                                                              .start,
                                                                      style:
                                                                          TextStyle(
                                                                        color: Color(
                                                                            0xFF000000),
                                                                        fontSize:
                                                                            13,
                                                                        fontWeight:
                                                                            FontWeight.w100,
                                                                        fontFamily:
                                                                            'Ubuntu',
                                                                      ),
                                                                    ))
                                                            .toList(),
                                                  )
                                                else
                                                  Text(
                                                    'You do not meet the requirements!',
                                                    textAlign: TextAlign.start,
                                                    style: TextStyle(
                                                      color: Color(0xFF000000),
                                                      fontSize: 13,
                                                      fontWeight:
                                                          FontWeight.w100,
                                                      fontFamily: 'Ubuntu',
                                                    ),
                                                  ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),

                                      //WITS
                                      SizedBox(height: 25),
                                      Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Padding(
                                            padding: EdgeInsets.only(
                                                right: 8, left: 8),
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                const Text(
                                                  'University of Witwatersrand',
                                                  textAlign: TextAlign.center,
                                                  style: TextStyle(
                                                    color: Color(0xFF000000),
                                                    fontSize: 14,
                                                    fontWeight: FontWeight.w700,
                                                    fontFamily: 'Ubuntu',
                                                  ),
                                                ),
                                                Container(
                                                  width: MediaQuery.of(context)
                                                          .size
                                                          .width -
                                                      100,
                                                  child: Divider(
                                                    thickness: 1,
                                                    color: Colors.grey,
                                                  ),
                                                ),
                                                if (meetsRequirementsWits(0))
                                                  Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children:
                                                        getQualifyingCoursesWits()
                                                            .map(
                                                                (course) =>
                                                                    Text(
                                                                      course,
                                                                      textAlign:
                                                                          TextAlign
                                                                              .start,
                                                                      style:
                                                                          TextStyle(
                                                                        color: Color(
                                                                            0xFF000000),
                                                                        fontSize:
                                                                            13,
                                                                        fontWeight:
                                                                            FontWeight.w100,
                                                                        fontFamily:
                                                                            'Ubuntu',
                                                                      ),
                                                                    ))
                                                            .toList(),
                                                  )
                                                else
                                                  Text(
                                                    'You do not meet the requirements!',
                                                    textAlign: TextAlign.start,
                                                    style: TextStyle(
                                                      color: Color(0xFF000000),
                                                      fontSize: 13,
                                                      fontWeight:
                                                          FontWeight.w100,
                                                      fontFamily: 'Ubuntu',
                                                    ),
                                                  ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),

                                      //UNISA
                                      SizedBox(height: 25),
                                      Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Padding(
                                            padding: EdgeInsets.only(
                                                right: 8, left: 8),
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                const Text(
                                                  'University of South Africa',
                                                  textAlign: TextAlign.center,
                                                  style: TextStyle(
                                                    color: Color(0xFF000000),
                                                    fontSize: 14,
                                                    fontWeight: FontWeight.w700,
                                                    fontFamily: 'Ubuntu',
                                                  ),
                                                ),
                                                Container(
                                                  width: MediaQuery.of(context)
                                                          .size
                                                          .width -
                                                      100,
                                                  child: Divider(
                                                    thickness: 1,
                                                    color: Colors.grey,
                                                  ),
                                                ),
                                                if (meetsRequirementsUnisa(0))
                                                  Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children:
                                                        getQualifyingCoursesUnisa()
                                                            .map(
                                                                (course) =>
                                                                    Text(
                                                                      course,
                                                                      textAlign:
                                                                          TextAlign
                                                                              .start,
                                                                      style:
                                                                          TextStyle(
                                                                        color: Color(
                                                                            0xFF000000),
                                                                        fontSize:
                                                                            13,
                                                                        fontWeight:
                                                                            FontWeight.w100,
                                                                        fontFamily:
                                                                            'Ubuntu',
                                                                      ),
                                                                    ))
                                                            .toList(),
                                                  )
                                                else
                                                  Text(
                                                    'You do not meet the requirements!',
                                                    textAlign: TextAlign.start,
                                                    style: TextStyle(
                                                      color: Color(0xFF000000),
                                                      fontSize: 13,
                                                      fontWeight:
                                                          FontWeight.w100,
                                                      fontFamily: 'Ubuntu',
                                                    ),
                                                  ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),

                                      //UP
                                      SizedBox(height: 25),
                                      Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Padding(
                                            padding: EdgeInsets.only(
                                                right: 8, left: 8),
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                const Text(
                                                  'University of Pretoria',
                                                  textAlign: TextAlign.center,
                                                  style: TextStyle(
                                                    color: Color(0xFF000000),
                                                    fontSize: 14,
                                                    fontWeight: FontWeight.w700,
                                                    fontFamily: 'Ubuntu',
                                                  ),
                                                ),
                                                Container(
                                                  width: MediaQuery.of(context)
                                                          .size
                                                          .width -
                                                      100,
                                                  child: Divider(
                                                    thickness: 1,
                                                    color: Colors.grey,
                                                  ),
                                                ),
                                                if (meetsRequirementsUp(0))
                                                  Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children:
                                                        getQualifyingCoursesUp()
                                                            .map(
                                                                (course) =>
                                                                    Text(
                                                                      course,
                                                                      textAlign:
                                                                          TextAlign
                                                                              .start,
                                                                      style:
                                                                          TextStyle(
                                                                        color: Color(
                                                                            0xFF000000),
                                                                        fontSize:
                                                                            13,
                                                                        fontWeight:
                                                                            FontWeight.w100,
                                                                        fontFamily:
                                                                            'Ubuntu',
                                                                      ),
                                                                    ))
                                                            .toList(),
                                                  )
                                                else
                                                  Text(
                                                    'You do not meet the requirements!',
                                                    textAlign: TextAlign.start,
                                                    style: TextStyle(
                                                      color: Color(0xFF000000),
                                                      fontSize: 13,
                                                      fontWeight:
                                                          FontWeight.w100,
                                                      fontFamily: 'Ubuntu',
                                                    ),
                                                  ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),

                                      //TUT
                                      //UNISA
                                      SizedBox(height: 25),
                                      Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Padding(
                                            padding: EdgeInsets.only(
                                                right: 8, left: 8),
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                const Text(
                                                  'Tswane University of Technology',
                                                  textAlign: TextAlign.center,
                                                  style: TextStyle(
                                                    color: Color(0xFF000000),
                                                    fontSize: 14,
                                                    fontWeight: FontWeight.w700,
                                                    fontFamily: 'Ubuntu',
                                                  ),
                                                ),
                                                Container(
                                                  width: MediaQuery.of(context)
                                                          .size
                                                          .width -
                                                      100,
                                                  child: Divider(
                                                    thickness: 1,
                                                    color: Colors.grey,
                                                  ),
                                                ),
                                                if (meetsRequirementsTut(0))
                                                  Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children:
                                                        getQualifyingCoursesTut()
                                                            .map(
                                                                (course) =>
                                                                    Text(
                                                                      course,
                                                                      textAlign:
                                                                          TextAlign
                                                                              .start,
                                                                      style:
                                                                          TextStyle(
                                                                        color: Color(
                                                                            0xFF000000),
                                                                        fontSize:
                                                                            13,
                                                                        fontWeight:
                                                                            FontWeight.w100,
                                                                        fontFamily:
                                                                            'Ubuntu',
                                                                      ),
                                                                    ))
                                                            .toList(),
                                                  )
                                                else
                                                  Text(
                                                    'You do not meet the requirements!',
                                                    textAlign: TextAlign.start,
                                                    style: TextStyle(
                                                      color: Color(0xFF000000),
                                                      fontSize: 13,
                                                      fontWeight:
                                                          FontWeight.w100,
                                                      fontFamily: 'Ubuntu',
                                                    ),
                                                  ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),

                                      //VAAL
                                      SizedBox(height: 25),
                                      Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Padding(
                                            padding: EdgeInsets.only(
                                                right: 8, left: 8),
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                const Text(
                                                  'Vaal University of Technology',
                                                  textAlign: TextAlign.center,
                                                  style: TextStyle(
                                                    color: Color(0xFF000000),
                                                    fontSize: 14,
                                                    fontWeight: FontWeight.w700,
                                                    fontFamily: 'Ubuntu',
                                                  ),
                                                ),
                                                Container(
                                                  width: MediaQuery.of(context)
                                                          .size
                                                          .width -
                                                      100,
                                                  child: Divider(
                                                    thickness: 1,
                                                    color: Colors.grey,
                                                  ),
                                                ),
                                                if (meetsRequirementsVaal(0))
                                                  Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children:
                                                        getQualifyingCoursesVaal()
                                                            .map(
                                                                (course) =>
                                                                    Text(
                                                                      course,
                                                                      textAlign:
                                                                          TextAlign
                                                                              .start,
                                                                      style:
                                                                          TextStyle(
                                                                        color: Color(
                                                                            0xFF000000),
                                                                        fontSize:
                                                                            13,
                                                                        fontWeight:
                                                                            FontWeight.w100,
                                                                        fontFamily:
                                                                            'Ubuntu',
                                                                      ),
                                                                    ))
                                                            .toList(),
                                                  )
                                                else
                                                  Text(
                                                    'You do not meet the requirements!',
                                                    textAlign: TextAlign.start,
                                                    style: TextStyle(
                                                      color: Color(0xFF000000),
                                                      fontSize: 13,
                                                      fontWeight:
                                                          FontWeight.w100,
                                                      fontFamily: 'Ubuntu',
                                                    ),
                                                  ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 20),
                      ],
                    ),
                  ),
                ),

              // Free state view
              if (selectedProvince == 'Free State')
                Visibility(
                  visible: selectedProvince == 'Free State',
                  maintainState: true,
                  child: Center(
                    child: Column(
                      children: [
                        //free state
                        Center(
                          child: Column(
                            children: [
                              Container(
                                width: MediaQuery.of(context).size.width - 30,
                                decoration: const BoxDecoration(
                                  color: Color.fromARGB(255, 236, 236, 236),
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(7.0),
                                  ),
                                ),
                                child: Padding(
                                  padding: EdgeInsets.symmetric(vertical: 10),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      //free state
                                      Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Padding(
                                            padding: EdgeInsets.only(
                                                right: 8, left: 8),
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                const Text(
                                                  'University of Free State',
                                                  textAlign: TextAlign.center,
                                                  style: TextStyle(
                                                    color: Color(0xFF000000),
                                                    fontSize: 14,
                                                    fontWeight: FontWeight.w700,
                                                    fontFamily: 'Ubuntu',
                                                  ),
                                                ),
                                                Container(
                                                  width: MediaQuery.of(context)
                                                          .size
                                                          .width -
                                                      100,
                                                  child: Divider(
                                                    thickness: 1,
                                                    color: Colors.grey,
                                                  ),
                                                ),
                                                if (meetsRequirementsUfs(0))
                                                  Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children:
                                                        getQualifyingCoursesUfs()
                                                            .map(
                                                                (course) =>
                                                                    Text(
                                                                      course,
                                                                      textAlign:
                                                                          TextAlign
                                                                              .start,
                                                                      style:
                                                                          TextStyle(
                                                                        color: Color(
                                                                            0xFF000000),
                                                                        fontSize:
                                                                            13,
                                                                        fontWeight:
                                                                            FontWeight.w100,
                                                                        fontFamily:
                                                                            'Ubuntu',
                                                                      ),
                                                                    ))
                                                            .toList(),
                                                  )
                                                else
                                                  Text(
                                                    'You do not meet the requirements!',
                                                    textAlign: TextAlign.start,
                                                    style: TextStyle(
                                                      color: Color(0xFF000000),
                                                      fontSize: 13,
                                                      fontWeight:
                                                          FontWeight.w100,
                                                      fontFamily: 'Ubuntu',
                                                    ),
                                                  ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 20),
                      ],
                    ),
                  ),
                ),

              // Kwazulu-natal view
              if (selectedProvince == 'Kwazulu-Natal')
                Visibility(
                  visible: selectedProvince == 'Kwazulu-Natal',
                  maintainState: true,
                  child: Center(
                    child: Column(
                      children: [
                        //kzn
                        Center(
                          child: Column(
                            children: [
                              Container(
                                width: MediaQuery.of(context).size.width - 30,
                                decoration: const BoxDecoration(
                                  color: Color.fromARGB(255, 236, 236, 236),
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(7.0),
                                  ),
                                ),
                                child: Padding(
                                  padding: EdgeInsets.symmetric(vertical: 10),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Padding(
                                            padding: EdgeInsets.only(
                                                right: 8, left: 8),
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                const Text(
                                                  'University of Kwazulu-Natal',
                                                  textAlign: TextAlign.center,
                                                  style: TextStyle(
                                                    color: Color(0xFF000000),
                                                    fontSize: 14,
                                                    fontWeight: FontWeight.w700,
                                                    fontFamily: 'Ubuntu',
                                                  ),
                                                ),
                                                Container(
                                                  width: MediaQuery.of(context)
                                                          .size
                                                          .width -
                                                      100,
                                                  child: Divider(
                                                    thickness: 1,
                                                    color: Colors.grey,
                                                  ),
                                                ),
                                                if (meetsRequirementsUkzn(0))
                                                  Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children:
                                                        getQualifyingCoursesUkzn()
                                                            .map(
                                                                (course) =>
                                                                    Text(
                                                                      course,
                                                                      textAlign:
                                                                          TextAlign
                                                                              .start,
                                                                      style:
                                                                          TextStyle(
                                                                        color: Color(
                                                                            0xFF000000),
                                                                        fontSize:
                                                                            13,
                                                                        fontWeight:
                                                                            FontWeight.w100,
                                                                        fontFamily:
                                                                            'Ubuntu',
                                                                      ),
                                                                    ))
                                                            .toList(),
                                                  )
                                                else
                                                  Text(
                                                    'You do not meet the requirements!',
                                                    textAlign: TextAlign.start,
                                                    style: TextStyle(
                                                      color: Color(0xFF000000),
                                                      fontSize: 13,
                                                      fontWeight:
                                                          FontWeight.w100,
                                                      fontFamily: 'Ubuntu',
                                                    ),
                                                  ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),

                                      //DUT
                                      SizedBox(height: 25),
                                      Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Padding(
                                            padding: EdgeInsets.only(
                                                right: 8, left: 8),
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                const Text(
                                                  'Durban University of Technology',
                                                  textAlign: TextAlign.center,
                                                  style: TextStyle(
                                                    color: Color(0xFF000000),
                                                    fontSize: 14,
                                                    fontWeight: FontWeight.w700,
                                                    fontFamily: 'Ubuntu',
                                                  ),
                                                ),
                                                Container(
                                                  width: MediaQuery.of(context)
                                                          .size
                                                          .width -
                                                      100,
                                                  child: Divider(
                                                    thickness: 1,
                                                    color: Colors.grey,
                                                  ),
                                                ),
                                                if (meetsRequirementsDut(0))
                                                  Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children:
                                                        getQualifyingCoursesDut()
                                                            .map(
                                                                (course) =>
                                                                    Text(
                                                                      course,
                                                                      textAlign:
                                                                          TextAlign
                                                                              .start,
                                                                      style:
                                                                          TextStyle(
                                                                        color: Color(
                                                                            0xFF000000),
                                                                        fontSize:
                                                                            13,
                                                                        fontWeight:
                                                                            FontWeight.w100,
                                                                        fontFamily:
                                                                            'Ubuntu',
                                                                      ),
                                                                    ))
                                                            .toList(),
                                                  )
                                                else
                                                  Text(
                                                    'You do not meet the requirements!',
                                                    textAlign: TextAlign.start,
                                                    style: TextStyle(
                                                      color: Color(0xFF000000),
                                                      fontSize: 13,
                                                      fontWeight:
                                                          FontWeight.w100,
                                                      fontFamily: 'Ubuntu',
                                                    ),
                                                  ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 20),
                      ],
                    ),
                  ),
                ),

              // Westen cape view
              if (selectedProvince == 'Western Cape')
                Visibility(
                  visible: selectedProvince == 'Western Cape',
                  maintainState: true,
                  child: Center(
                    child: Column(
                      children: [
                        //west
                        Center(
                          child: Column(
                            children: [
                              Container(
                                width: MediaQuery.of(context).size.width - 30,
                                decoration: const BoxDecoration(
                                  color: Color.fromARGB(255, 236, 236, 236),
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(7.0),
                                  ),
                                ),
                                child: Padding(
                                  padding: EdgeInsets.symmetric(vertical: 10),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Padding(
                                            padding: EdgeInsets.only(
                                                right: 8, left: 8),
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                const Text(
                                                  'University of Western Cape',
                                                  textAlign: TextAlign.center,
                                                  style: TextStyle(
                                                    color: Color(0xFF000000),
                                                    fontSize: 14,
                                                    fontWeight: FontWeight.w700,
                                                    fontFamily: 'Ubuntu',
                                                  ),
                                                ),
                                                Container(
                                                  width: MediaQuery.of(context)
                                                          .size
                                                          .width -
                                                      100,
                                                  child: Divider(
                                                    thickness: 1,
                                                    color: Colors.grey,
                                                  ),
                                                ),
                                                if (meetsRequirementsUwp(0))
                                                  Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children:
                                                        getQualifyingCoursesUwp()
                                                            .map(
                                                                (course) =>
                                                                    Text(
                                                                      course,
                                                                      textAlign:
                                                                          TextAlign
                                                                              .start,
                                                                      style:
                                                                          TextStyle(
                                                                        color: Color(
                                                                            0xFF000000),
                                                                        fontSize:
                                                                            13,
                                                                        fontWeight:
                                                                            FontWeight.w100,
                                                                        fontFamily:
                                                                            'Ubuntu',
                                                                      ),
                                                                    ))
                                                            .toList(),
                                                  )
                                                else
                                                  Text(
                                                    'You do not meet the requirements!',
                                                    textAlign: TextAlign.start,
                                                    style: TextStyle(
                                                      color: Color(0xFF000000),
                                                      fontSize: 13,
                                                      fontWeight:
                                                          FontWeight.w100,
                                                      fontFamily: 'Ubuntu',
                                                    ),
                                                  ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),

                                      //UCP
                                      SizedBox(height: 25),
                                      Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Padding(
                                            padding: EdgeInsets.only(
                                                right: 8, left: 8),
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                const Text(
                                                  'University of Cape Town',
                                                  textAlign: TextAlign.center,
                                                  style: TextStyle(
                                                    color: Color(0xFF000000),
                                                    fontSize: 14,
                                                    fontWeight: FontWeight.w700,
                                                    fontFamily: 'Ubuntu',
                                                  ),
                                                ),
                                                Container(
                                                  width: MediaQuery.of(context)
                                                          .size
                                                          .width -
                                                      100,
                                                  child: Divider(
                                                    thickness: 1,
                                                    color: Colors.grey,
                                                  ),
                                                ),
                                                if (meetsRequirementsUcp(0))
                                                  Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children:
                                                        getQualifyingCoursesUcp()
                                                            .map(
                                                                (course) =>
                                                                    Text(
                                                                      course,
                                                                      textAlign:
                                                                          TextAlign
                                                                              .start,
                                                                      style:
                                                                          TextStyle(
                                                                        color: Color(
                                                                            0xFF000000),
                                                                        fontSize:
                                                                            13,
                                                                        fontWeight:
                                                                            FontWeight.w100,
                                                                        fontFamily:
                                                                            'Ubuntu',
                                                                      ),
                                                                    ))
                                                            .toList(),
                                                  )
                                                else
                                                  Text(
                                                    'You do not meet the requirements!',
                                                    textAlign: TextAlign.start,
                                                    style: TextStyle(
                                                      color: Color(0xFF000000),
                                                      fontSize: 13,
                                                      fontWeight:
                                                          FontWeight.w100,
                                                      fontFamily: 'Ubuntu',
                                                    ),
                                                  ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),

                                      //CPUT
                                      SizedBox(height: 25),
                                      Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Padding(
                                            padding: EdgeInsets.only(
                                                right: 8, left: 8),
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                const Text(
                                                  'Cape Peninsula University of Technology',
                                                  textAlign: TextAlign.center,
                                                  style: TextStyle(
                                                    color: Color(0xFF000000),
                                                    fontSize: 14,
                                                    fontWeight: FontWeight.w700,
                                                    fontFamily: 'Ubuntu',
                                                  ),
                                                ),
                                                Container(
                                                  width: MediaQuery.of(context)
                                                          .size
                                                          .width -
                                                      100,
                                                  child: Divider(
                                                    thickness: 1,
                                                    color: Colors.grey,
                                                  ),
                                                ),
                                                if (meetsRequirementsCput(0))
                                                  Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children:
                                                        getQualifyingCoursesCput()
                                                            .map(
                                                                (course) =>
                                                                    Text(
                                                                      course,
                                                                      textAlign:
                                                                          TextAlign
                                                                              .start,
                                                                      style:
                                                                          TextStyle(
                                                                        color: Color(
                                                                            0xFF000000),
                                                                        fontSize:
                                                                            13,
                                                                        fontWeight:
                                                                            FontWeight.w100,
                                                                        fontFamily:
                                                                            'Ubuntu',
                                                                      ),
                                                                    ))
                                                            .toList(),
                                                  )
                                                else
                                                  Text(
                                                    'You do not meet the requirements!',
                                                    textAlign: TextAlign.start,
                                                    style: TextStyle(
                                                      color: Color(0xFF000000),
                                                      fontSize: 13,
                                                      fontWeight:
                                                          FontWeight.w100,
                                                      fontFamily: 'Ubuntu',
                                                    ),
                                                  ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),

                                      //SU
                                      SizedBox(height: 25),
                                      Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Padding(
                                            padding: EdgeInsets.only(
                                                right: 8, left: 8),
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                const Text(
                                                  'Stellenbosch University',
                                                  textAlign: TextAlign.center,
                                                  style: TextStyle(
                                                    color: Color(0xFF000000),
                                                    fontSize: 14,
                                                    fontWeight: FontWeight.w700,
                                                    fontFamily: 'Ubuntu',
                                                  ),
                                                ),
                                                Container(
                                                  width: MediaQuery.of(context)
                                                          .size
                                                          .width -
                                                      100,
                                                  child: Divider(
                                                    thickness: 1,
                                                    color: Colors.grey,
                                                  ),
                                                ),
                                                if (meetsRequirementsSu(0))
                                                  Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children:
                                                        getQualifyingCoursesSu()
                                                            .map(
                                                                (course) =>
                                                                    Text(
                                                                      course,
                                                                      textAlign:
                                                                          TextAlign
                                                                              .start,
                                                                      style:
                                                                          TextStyle(
                                                                        color: Color(
                                                                            0xFF000000),
                                                                        fontSize:
                                                                            13,
                                                                        fontWeight:
                                                                            FontWeight.w100,
                                                                        fontFamily:
                                                                            'Ubuntu',
                                                                      ),
                                                                    ))
                                                            .toList(),
                                                  )
                                                else
                                                  Text(
                                                    'You do not meet the requirements!',
                                                    textAlign: TextAlign.start,
                                                    style: TextStyle(
                                                      color: Color(0xFF000000),
                                                      fontSize: 13,
                                                      fontWeight:
                                                          FontWeight.w100,
                                                      fontFamily: 'Ubuntu',
                                                    ),
                                                  ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 20),
                      ],
                    ),
                  ),
                ),

              // North west view
              if (selectedProvince == 'North West')
                Visibility(
                  visible: selectedProvince == 'North West',
                  maintainState: true,
                  child: Center(
                    child: Column(
                      children: [
                        //nw
                        Center(
                          child: Column(
                            children: [
                              Container(
                                width: MediaQuery.of(context).size.width - 30,
                                decoration: const BoxDecoration(
                                  color: Color.fromARGB(255, 236, 236, 236),
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(7.0),
                                  ),
                                ),
                                child: Padding(
                                  padding: EdgeInsets.symmetric(vertical: 10),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Padding(
                                            padding: EdgeInsets.only(
                                                right: 8, left: 8),
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                const Text(
                                                  'University of North West',
                                                  textAlign: TextAlign.center,
                                                  style: TextStyle(
                                                    color: Color(0xFF000000),
                                                    fontSize: 14,
                                                    fontWeight: FontWeight.w700,
                                                    fontFamily: 'Ubuntu',
                                                  ),
                                                ),
                                                Container(
                                                  width: MediaQuery.of(context)
                                                          .size
                                                          .width -
                                                      100,
                                                  child: Divider(
                                                    thickness: 1,
                                                    color: Colors.grey,
                                                  ),
                                                ),
                                                if (meetsRequirementsUnw(0))
                                                  Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children:
                                                        getQualifyingCoursesUnw()
                                                            .map(
                                                                (course) =>
                                                                    Text(
                                                                      course,
                                                                      textAlign:
                                                                          TextAlign
                                                                              .start,
                                                                      style:
                                                                          TextStyle(
                                                                        color: Color(
                                                                            0xFF000000),
                                                                        fontSize:
                                                                            13,
                                                                        fontWeight:
                                                                            FontWeight.w100,
                                                                        fontFamily:
                                                                            'Ubuntu',
                                                                      ),
                                                                    ))
                                                            .toList(),
                                                  )
                                                else
                                                  Text(
                                                    'You do not meet the requirements!',
                                                    textAlign: TextAlign.start,
                                                    style: TextStyle(
                                                      color: Color(0xFF000000),
                                                      fontSize: 13,
                                                      fontWeight:
                                                          FontWeight.w100,
                                                      fontFamily: 'Ubuntu',
                                                    ),
                                                  ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 20),
                      ],
                    ),
                  ),
                ),

              // Mpumalanga view
              if (selectedProvince == 'Mpumalanga')
                Visibility(
                  visible: selectedProvince == 'Mpumalanga',
                  maintainState: true,
                  child: Center(
                    child: Column(
                      children: [
                        //Gauteng
                        Center(
                          child: Column(
                            children: [
                              Container(
                                width: MediaQuery.of(context).size.width - 30,
                                decoration: const BoxDecoration(
                                  color: Color.fromARGB(255, 236, 236, 236),
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(7.0),
                                  ),
                                ),
                                child: Padding(
                                  padding: EdgeInsets.symmetric(vertical: 10),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Padding(
                                            padding: EdgeInsets.only(
                                                right: 8, left: 8),
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                const Text(
                                                  'University of Mpumalanga',
                                                  textAlign: TextAlign.center,
                                                  style: TextStyle(
                                                    color: Color(0xFF000000),
                                                    fontSize: 14,
                                                    fontWeight: FontWeight.w700,
                                                    fontFamily: 'Ubuntu',
                                                  ),
                                                ),
                                                Container(
                                                  width: MediaQuery.of(context)
                                                          .size
                                                          .width -
                                                      100,
                                                  child: Divider(
                                                    thickness: 1,
                                                    color: Colors.grey,
                                                  ),
                                                ),
                                                if (meetsRequirementsUmp(0))
                                                  Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children:
                                                        getQualifyingCoursesUmp()
                                                            .map(
                                                                (course) =>
                                                                    Text(
                                                                      course,
                                                                      textAlign:
                                                                          TextAlign
                                                                              .start,
                                                                      style:
                                                                          TextStyle(
                                                                        color: Color(
                                                                            0xFF000000),
                                                                        fontSize:
                                                                            13,
                                                                        fontWeight:
                                                                            FontWeight.w100,
                                                                        fontFamily:
                                                                            'Ubuntu',
                                                                      ),
                                                                    ))
                                                            .toList(),
                                                  )
                                                else
                                                  Text(
                                                    'You do not meet the requirements!',
                                                    textAlign: TextAlign.start,
                                                    style: TextStyle(
                                                      color: Color(0xFF000000),
                                                      fontSize: 13,
                                                      fontWeight:
                                                          FontWeight.w100,
                                                      fontFamily: 'Ubuntu',
                                                    ),
                                                  ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 20),
                      ],
                    ),
                  ),
                ),
            ],
          ),
        ],
      ),
    );
  }
}
