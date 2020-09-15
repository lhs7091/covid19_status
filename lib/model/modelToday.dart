class ModelToday {
  String resultCode;
  String resultMessage;
  Korea korea;
  Korea seoul;
  Korea busan;
  Korea daegu;
  Korea incheon;
  Korea gwangju;
  Korea daejeon;
  Korea ulsan;
  Korea sejong;
  Korea gyeonggi;
  Korea gangwon;
  Korea chungbuk;
  Korea chungnam;
  Korea jeonbuk;
  Korea jeonnam;
  Korea gyeongbuk;
  Korea gyeongnam;
  Korea jeju;
  Korea quarantine;

  ModelToday(
      {this.resultCode,
      this.resultMessage,
      this.korea,
      this.seoul,
      this.busan,
      this.daegu,
      this.incheon,
      this.gwangju,
      this.daejeon,
      this.ulsan,
      this.sejong,
      this.gyeonggi,
      this.gangwon,
      this.chungbuk,
      this.chungnam,
      this.jeonbuk,
      this.jeonnam,
      this.gyeongbuk,
      this.gyeongnam,
      this.jeju,
      this.quarantine});

  ModelToday.fromJson(Map<String, dynamic> json) {
    resultCode = json['resultCode'];
    resultMessage = json['resultMessage'];
    korea = json['korea'] != null ? new Korea.fromJson(json['korea']) : null;
    seoul = json['seoul'] != null ? new Korea.fromJson(json['seoul']) : null;
    busan = json['busan'] != null ? new Korea.fromJson(json['busan']) : null;
    daegu = json['daegu'] != null ? new Korea.fromJson(json['daegu']) : null;
    incheon =
        json['incheon'] != null ? new Korea.fromJson(json['incheon']) : null;
    gwangju =
        json['gwangju'] != null ? new Korea.fromJson(json['gwangju']) : null;
    daejeon =
        json['daejeon'] != null ? new Korea.fromJson(json['daejeon']) : null;
    ulsan = json['ulsan'] != null ? new Korea.fromJson(json['ulsan']) : null;
    sejong = json['sejong'] != null ? new Korea.fromJson(json['sejong']) : null;
    gyeonggi =
        json['gyeonggi'] != null ? new Korea.fromJson(json['gyeonggi']) : null;
    gangwon =
        json['gangwon'] != null ? new Korea.fromJson(json['gangwon']) : null;
    chungbuk =
        json['chungbuk'] != null ? new Korea.fromJson(json['chungbuk']) : null;
    chungnam =
        json['chungnam'] != null ? new Korea.fromJson(json['chungnam']) : null;
    jeonbuk =
        json['jeonbuk'] != null ? new Korea.fromJson(json['jeonbuk']) : null;
    jeonnam =
        json['jeonnam'] != null ? new Korea.fromJson(json['jeonnam']) : null;
    gyeongbuk = json['gyeongbuk'] != null
        ? new Korea.fromJson(json['gyeongbuk'])
        : null;
    gyeongnam = json['gyeongnam'] != null
        ? new Korea.fromJson(json['gyeongnam'])
        : null;
    jeju = json['jeju'] != null ? new Korea.fromJson(json['jeju']) : null;
    quarantine = json['quarantine'] != null
        ? new Korea.fromJson(json['quarantine'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['resultCode'] = this.resultCode;
    data['resultMessage'] = this.resultMessage;
    if (this.korea != null) {
      data['korea'] = this.korea.toJson();
    }
    if (this.seoul != null) {
      data['seoul'] = this.seoul.toJson();
    }
    if (this.busan != null) {
      data['busan'] = this.busan.toJson();
    }
    if (this.daegu != null) {
      data['daegu'] = this.daegu.toJson();
    }
    if (this.incheon != null) {
      data['incheon'] = this.incheon.toJson();
    }
    if (this.gwangju != null) {
      data['gwangju'] = this.gwangju.toJson();
    }
    if (this.daejeon != null) {
      data['daejeon'] = this.daejeon.toJson();
    }
    if (this.ulsan != null) {
      data['ulsan'] = this.ulsan.toJson();
    }
    if (this.sejong != null) {
      data['sejong'] = this.sejong.toJson();
    }
    if (this.gyeonggi != null) {
      data['gyeonggi'] = this.gyeonggi.toJson();
    }
    if (this.gangwon != null) {
      data['gangwon'] = this.gangwon.toJson();
    }
    if (this.chungbuk != null) {
      data['chungbuk'] = this.chungbuk.toJson();
    }
    if (this.chungnam != null) {
      data['chungnam'] = this.chungnam.toJson();
    }
    if (this.jeonbuk != null) {
      data['jeonbuk'] = this.jeonbuk.toJson();
    }
    if (this.jeonnam != null) {
      data['jeonnam'] = this.jeonnam.toJson();
    }
    if (this.gyeongbuk != null) {
      data['gyeongbuk'] = this.gyeongbuk.toJson();
    }
    if (this.gyeongnam != null) {
      data['gyeongnam'] = this.gyeongnam.toJson();
    }
    if (this.jeju != null) {
      data['jeju'] = this.jeju.toJson();
    }
    if (this.quarantine != null) {
      data['quarantine'] = this.quarantine.toJson();
    }
    return data;
  }
}

class Korea {
  String countryName;
  String newCase;
  String totalCase;
  String recovered;
  String death;
  String percentage;
  String newFcase;
  String newCcase;

  Korea(
      {this.countryName,
      this.newCase,
      this.totalCase,
      this.recovered,
      this.death,
      this.percentage,
      this.newFcase,
      this.newCcase});

  Korea.fromJson(Map<String, dynamic> json) {
    countryName = json['countryName'];
    newCase = json['newCase'];
    totalCase = json['totalCase'];
    recovered = json['recovered'];
    death = json['death'];
    percentage = json['percentage'];
    newFcase = json['newFcase'];
    newCcase = json['newCcase'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['countryName'] = this.countryName;
    data['newCase'] = this.newCase;
    data['totalCase'] = this.totalCase;
    data['recovered'] = this.recovered;
    data['death'] = this.death;
    data['percentage'] = this.percentage;
    data['newFcase'] = this.newFcase;
    data['newCcase'] = this.newCcase;
    return data;
  }
}
