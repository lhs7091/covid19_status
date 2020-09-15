class Model {
  String resultCode;
  String totalCase;
  String totalRecovered;
  String totalDeath;
  String nowCase;
  String city1n;
  String city2n;
  String city3n;
  String city4n;
  String city5n;
  String city1p;
  String city2p;
  String city3p;
  String city4p;
  String city5p;
  double recoveredPercentage;
  double deathPercentage;
  String checkingCounter;
  String checkingPercentage;
  String caseCount;
  String casePercentage;
  String notcaseCount;
  String notcasePercentage;
  String totalChecking;
  String todayRecovered;
  String todayDeath;
  String totalCaseBefore;
  String updateTime;
  String resultMessage;

  Model(
      {this.resultCode,
      this.totalCase,
      this.totalRecovered,
      this.totalDeath,
      this.nowCase,
      this.city1n,
      this.city2n,
      this.city3n,
      this.city4n,
      this.city5n,
      this.city1p,
      this.city2p,
      this.city3p,
      this.city4p,
      this.city5p,
      this.recoveredPercentage,
      this.deathPercentage,
      this.checkingCounter,
      this.checkingPercentage,
      this.caseCount,
      this.casePercentage,
      this.notcaseCount,
      this.notcasePercentage,
      this.totalChecking,
      this.todayRecovered,
      this.todayDeath,
      this.totalCaseBefore,
      this.updateTime,
      this.resultMessage});

  Model.fromJson(Map<String, dynamic> json) {
    resultCode = json['resultCode'];
    totalCase = json['TotalCase'];
    totalRecovered = json['TotalRecovered'];
    totalDeath = json['TotalDeath'];
    nowCase = json['NowCase'];
    city1n = json['city1n'];
    city2n = json['city2n'];
    city3n = json['city3n'];
    city4n = json['city4n'];
    city5n = json['city5n'];
    city1p = json['city1p'];
    city2p = json['city2p'];
    city3p = json['city3p'];
    city4p = json['city4p'];
    city5p = json['city5p'];
    recoveredPercentage = json['recoveredPercentage'];
    deathPercentage = json['deathPercentage'];
    checkingCounter = json['checkingCounter'];
    checkingPercentage = json['checkingPercentage'];
    caseCount = json['caseCount'];
    casePercentage = json['casePercentage'];
    notcaseCount = json['notcaseCount'];
    notcasePercentage = json['notcasePercentage'];
    totalChecking = json['TotalChecking'];
    todayRecovered = json['TodayRecovered'];
    todayDeath = json['TodayDeath'];
    totalCaseBefore = json['TotalCaseBefore'];
    updateTime = json['updateTime'];
    resultMessage = json['resultMessage'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['resultCode'] = this.resultCode;
    data['TotalCase'] = this.totalCase;
    data['TotalRecovered'] = this.totalRecovered;
    data['TotalDeath'] = this.totalDeath;
    data['NowCase'] = this.nowCase;
    data['city1n'] = this.city1n;
    data['city2n'] = this.city2n;
    data['city3n'] = this.city3n;
    data['city4n'] = this.city4n;
    data['city5n'] = this.city5n;
    data['city1p'] = this.city1p;
    data['city2p'] = this.city2p;
    data['city3p'] = this.city3p;
    data['city4p'] = this.city4p;
    data['city5p'] = this.city5p;
    data['recoveredPercentage'] = this.recoveredPercentage;
    data['deathPercentage'] = this.deathPercentage;
    data['checkingCounter'] = this.checkingCounter;
    data['checkingPercentage'] = this.checkingPercentage;
    data['caseCount'] = this.caseCount;
    data['casePercentage'] = this.casePercentage;
    data['notcaseCount'] = this.notcaseCount;
    data['notcasePercentage'] = this.notcasePercentage;
    data['TotalChecking'] = this.totalChecking;
    data['TodayRecovered'] = this.todayRecovered;
    data['TodayDeath'] = this.todayDeath;
    data['TotalCaseBefore'] = this.totalCaseBefore;
    data['updateTime'] = this.updateTime;
    data['resultMessage'] = this.resultMessage;
    return data;
  }
}
