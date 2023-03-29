class CompanyList {
  int? status;
  Customer? customer;
  Data? data;
  String? message;

  CompanyList({this.status, this.customer, this.data, this.message});

  CompanyList.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    customer = json['customer'] != null
        ? new Customer.fromJson(json['customer'])
        : null;
    data = json['data'] != null ? new Data.fromJson(json['data']) : null;
    message = json['message'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['status'] = this.status;
    if (this.customer != null) {
      data['customer'] = this.customer!.toJson();
    }
    if (this.data != null) {
      data['data'] = this.data!.toJson();
    }
    data['message'] = this.message;
    return data;
  }
}

class Customer {
  BusinessInfo? businessInfo;
  String? userTimeZone;
  BusinessLocation? homeLocation;
  String? photoURL;
  bool? hasBusiness;
  bool? useBusinessDefault;
  bool? customWebsiteEnabled;
  String? createdOn;
  bool? isBusinessInfoSet;
  bool? isConnectedCalendar;
  bool? isServiceLinked;
  bool? isReviewMeetingLinkSet;
  bool? isRONMeetingLinkSet;
  bool? isInvoiceConfigsSet;
  String? sId;
  String? firstName;
  String? lastName;
  String? username;
  String? email;
  int? phoneNumber;
  List<PushToken>? pushToken;
  int? iV;
  String? bio;
  bool? hasWebsite;
  String? websiteDomainName;
  bool? isCalenderConnected;
  bool? isMOBILEGENERAL;
  bool? isRONONLINE;
  bool? isRealEstateOFFLINE;
  bool? isRealEstateONLINE;

  Customer(
      {this.businessInfo,
      this.userTimeZone,
      this.homeLocation,
      this.photoURL,
      this.hasBusiness,
      this.useBusinessDefault,
      this.customWebsiteEnabled,
      this.createdOn,
      this.isBusinessInfoSet,
      this.isConnectedCalendar,
      this.isServiceLinked,
      this.isReviewMeetingLinkSet,
      this.isRONMeetingLinkSet,
      this.isInvoiceConfigsSet,
      this.sId,
      this.firstName,
      this.lastName,
      this.username,
      this.email,
      this.phoneNumber,
      this.pushToken,
      this.iV,
      this.bio,
      this.hasWebsite,
      this.websiteDomainName,
      this.isCalenderConnected,
      this.isMOBILEGENERAL,
      this.isRONONLINE,
      this.isRealEstateOFFLINE,
      this.isRealEstateONLINE});

  Customer.fromJson(Map<String, dynamic> json) {
    businessInfo = json['businessInfo'] != null
        ? new BusinessInfo.fromJson(json['businessInfo'])
        : null;
    userTimeZone = json['userTimeZone'];
    homeLocation = json['homeLocation'] != null
        ? new BusinessLocation.fromJson(json['homeLocation'])
        : null;
    photoURL = json['photoURL'];
    hasBusiness = json['hasBusiness'];
    useBusinessDefault = json['useBusinessDefault'];
    customWebsiteEnabled = json['customWebsiteEnabled'];
    createdOn = json['createdOn'];
    isBusinessInfoSet = json['isBusinessInfoSet'];
    isConnectedCalendar = json['isConnectedCalendar'];
    isServiceLinked = json['isServiceLinked'];
    isReviewMeetingLinkSet = json['isReviewMeetingLinkSet'];
    isRONMeetingLinkSet = json['isRONMeetingLinkSet'];
    isInvoiceConfigsSet = json['isInvoiceConfigsSet'];
    sId = json['_id'];
    firstName = json['firstName'];
    lastName = json['lastName'];
    username = json['username'];
    email = json['email'];
    phoneNumber = json['phoneNumber'];
    if (json['pushToken'] != null) {
      pushToken = <PushToken>[];
      json['pushToken'].forEach((v) {
        pushToken!.add(new PushToken.fromJson(v));
      });
    }
    iV = json['__v'];
    bio = json['bio'];
    hasWebsite = json['hasWebsite'];
    websiteDomainName = json['websiteDomainName'];
    isCalenderConnected = json['isCalenderConnected'];
    isMOBILEGENERAL = json['isMOBILE_GENERAL'];
    isRONONLINE = json['isRON_ONLINE'];
    isRealEstateOFFLINE = json['isRealEstate_OFFLINE'];
    isRealEstateONLINE = json['isRealEstate_ONLINE'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.businessInfo != null) {
      data['businessInfo'] = this.businessInfo!.toJson();
    }
    data['userTimeZone'] = this.userTimeZone;
    if (this.homeLocation != null) {
      data['homeLocation'] = this.homeLocation!.toJson();
    }
    data['photoURL'] = this.photoURL;
    data['hasBusiness'] = this.hasBusiness;
    data['useBusinessDefault'] = this.useBusinessDefault;
    data['customWebsiteEnabled'] = this.customWebsiteEnabled;
    data['createdOn'] = this.createdOn;
    data['isBusinessInfoSet'] = this.isBusinessInfoSet;
    data['isConnectedCalendar'] = this.isConnectedCalendar;
    data['isServiceLinked'] = this.isServiceLinked;
    data['isReviewMeetingLinkSet'] = this.isReviewMeetingLinkSet;
    data['isRONMeetingLinkSet'] = this.isRONMeetingLinkSet;
    data['isInvoiceConfigsSet'] = this.isInvoiceConfigsSet;
    data['_id'] = this.sId;
    data['firstName'] = this.firstName;
    data['lastName'] = this.lastName;
    data['username'] = this.username;
    data['email'] = this.email;
    data['phoneNumber'] = this.phoneNumber;
    if (this.pushToken != null) {
      data['pushToken'] = this.pushToken!.map((v) => v.toJson()).toList();
    }
    data['__v'] = this.iV;
    data['bio'] = this.bio;
    data['hasWebsite'] = this.hasWebsite;
    data['websiteDomainName'] = this.websiteDomainName;
    data['isCalenderConnected'] = this.isCalenderConnected;
    data['isMOBILE_GENERAL'] = this.isMOBILEGENERAL;
    data['isRON_ONLINE'] = this.isRONONLINE;
    data['isRealEstate_OFFLINE'] = this.isRealEstateOFFLINE;
    data['isRealEstate_ONLINE'] = this.isRealEstateONLINE;
    return data;
  }
}

class BusinessInfo {
  BusinessLocation? businessLocation;
  String? country;
  String? businessName;
  String? businessImageURL;
  String? businessEmail;
  String? businessNumber;
  String? businessTaxCode;
  String? businessFax;

  BusinessInfo(
      {this.businessLocation,
      this.country,
      this.businessName,
      this.businessImageURL,
      this.businessEmail,
      this.businessNumber,
      this.businessTaxCode,
      this.businessFax});

  BusinessInfo.fromJson(Map<String, dynamic> json) {
    businessLocation = json['businessLocation'] != null
        ? new BusinessLocation.fromJson(json['businessLocation'])
        : null;
    country = json['country'];
    businessName = json['businessName'];
    businessImageURL = json['businessImageURL'];
    businessEmail = json['businessEmail'];
    businessNumber = json['businessNumber'];
    businessTaxCode = json['businessTaxCode'];
    businessFax = json['businessFax'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.businessLocation != null) {
      data['businessLocation'] = this.businessLocation!.toJson();
    }
    data['country'] = this.country;
    data['businessName'] = this.businessName;
    data['businessImageURL'] = this.businessImageURL;
    data['businessEmail'] = this.businessEmail;
    data['businessNumber'] = this.businessNumber;
    data['businessTaxCode'] = this.businessTaxCode;
    data['businessFax'] = this.businessFax;
    return data;
  }
}

class BusinessLocation {
  String? completeAddress;
  double? lat;
  double? lon;
  int? zip;
  String? city;
  String? area;
  String? streetAddress;
  String? placeId;

  BusinessLocation(
      {this.completeAddress,
      this.lat,
      this.lon,
      this.zip,
      this.city,
      this.area,
      this.streetAddress,
      this.placeId});

  BusinessLocation.fromJson(Map<String, dynamic> json) {
    completeAddress = json['completeAddress'];
    lat = json['lat'];
    lon = json['lon'];
    zip = json['zip'];
    city = json['city'];
    area = json['area'];
    streetAddress = json['streetAddress'];
    placeId = json['placeId'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['completeAddress'] = this.completeAddress;
    data['lat'] = this.lat;
    data['lon'] = this.lon;
    data['zip'] = this.zip;
    data['city'] = this.city;
    data['area'] = this.area;
    data['streetAddress'] = this.streetAddress;
    data['placeId'] = this.placeId;
    return data;
  }
}

class PushToken {
  String? sId;
  String? token;

  PushToken({this.sId, this.token});

  PushToken.fromJson(Map<String, dynamic> json) {
    sId = json['_id'];
    token = json['token'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['_id'] = this.sId;
    data['token'] = this.token;
    return data;
  }
}

class Data {
  VisitAnalytics? visitAnalytics;
  InvoiceBreakups? invoiceBreakups;
  InvoiceGraph? invoiceGraph;
  ServiceBreakups? serviceBreakups;
  List<UpcomingApts>? upcomingApts;
  int? contactsCount;
  int? companiesCount;
  List<Null>? availableServices;
  List<CompaniesList>? companiesList;
  List<SuggestedExpenses>? suggestedExpenses;
  Customer? user;
  Null? profileConfigs;

  Data(
      {this.visitAnalytics,
      this.invoiceBreakups,
      this.invoiceGraph,
      this.serviceBreakups,
      this.upcomingApts,
      this.contactsCount,
      this.companiesCount,
      this.availableServices,
      this.companiesList,
      this.suggestedExpenses,
      this.user,
      this.profileConfigs});

  Data.fromJson(Map<String, dynamic> json) {
    visitAnalytics = json['visitAnalytics'] != null
        ? new VisitAnalytics.fromJson(json['visitAnalytics'])
        : null;
    invoiceBreakups = json['invoiceBreakups'] != null
        ? new InvoiceBreakups.fromJson(json['invoiceBreakups'])
        : null;
    invoiceGraph = json['invoiceGraph'] != null
        ? new InvoiceGraph.fromJson(json['invoiceGraph'])
        : null;
    serviceBreakups = json['serviceBreakups'] != null
        ? new ServiceBreakups.fromJson(json['serviceBreakups'])
        : null;
    if (json['upcomingApts'] != null) {
      upcomingApts = <UpcomingApts>[];
      json['upcomingApts'].forEach((v) {
        upcomingApts!.add(new UpcomingApts.fromJson(v));
      });
    }
    contactsCount = json['contactsCount'];
    companiesCount = json['companiesCount'];
    if (json['companiesList'] != null) {
      companiesList = <CompaniesList>[];
      json['companiesList'].forEach((v) {
        companiesList!.add(new CompaniesList.fromJson(v));
      });
    }
    if (json['suggestedExpenses'] != null) {
      suggestedExpenses = <SuggestedExpenses>[];
      json['suggestedExpenses'].forEach((v) {
        suggestedExpenses!.add(new SuggestedExpenses.fromJson(v));
      });
    }
    user = json['user'] != null ? new Customer.fromJson(json['user']) : null;
    profileConfigs = json['profileConfigs'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.visitAnalytics != null) {
      data['visitAnalytics'] = this.visitAnalytics!.toJson();
    }
    if (this.invoiceBreakups != null) {
      data['invoiceBreakups'] = this.invoiceBreakups!.toJson();
    }
    if (this.invoiceGraph != null) {
      data['invoiceGraph'] = this.invoiceGraph!.toJson();
    }
    if (this.serviceBreakups != null) {
      data['serviceBreakups'] = this.serviceBreakups!.toJson();
    }
    if (this.upcomingApts != null) {
      data['upcomingApts'] = this.upcomingApts!.map((v) => v.toJson()).toList();
    }
    data['contactsCount'] = this.contactsCount;
    data['companiesCount'] = this.companiesCount;
    if (this.companiesList != null) {
      data['companiesList'] =
          this.companiesList!.map((v) => v.toJson()).toList();
    }
    if (this.suggestedExpenses != null) {
      data['suggestedExpenses'] =
          this.suggestedExpenses!.map((v) => v.toJson()).toList();
    }
    if (this.user != null) {
      data['user'] = this.user!.toJson();
    }
    data['profileConfigs'] = this.profileConfigs;
    return data;
  }
}

class VisitAnalytics {
  int? totalVisitCount;
  int? todayVisitCount;
  int? monthlyVisitCount;
  List<VisitAnalytics>? visitAnalytics;

  VisitAnalytics(
      {this.totalVisitCount,
      this.todayVisitCount,
      this.monthlyVisitCount,
      this.visitAnalytics});

  VisitAnalytics.fromJson(Map<String, dynamic> json) {
    totalVisitCount = json['totalVisitCount'];
    todayVisitCount = json['todayVisitCount'];
    monthlyVisitCount = json['monthlyVisitCount'];
    if (json['visitAnalytics'] != null) {
      visitAnalytics = <VisitAnalytics>[];
      json['visitAnalytics'].forEach((v) {
        visitAnalytics!.add(new VisitAnalytics.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['totalVisitCount'] = this.totalVisitCount;
    data['todayVisitCount'] = this.todayVisitCount;
    data['monthlyVisitCount'] = this.monthlyVisitCount;
    if (this.visitAnalytics != null) {
      data['visitAnalytics'] =
          this.visitAnalytics!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class LSAOFFLINE {
  String? serviceName;
  String? description;
  int? timeToBlockinMins;
  bool? manualPricingFlag;
  int? cost;
  int? timeBlockBeforeAfter;
  String? serviceId;

  LSAOFFLINE(
      {this.serviceName,
      this.description,
      this.timeToBlockinMins,
      this.manualPricingFlag,
      this.cost,
      this.timeBlockBeforeAfter,
      this.serviceId});

  LSAOFFLINE.fromJson(Map<String, dynamic> json) {
    serviceName = json['serviceName'];
    description = json['description'];
    timeToBlockinMins = json['timeToBlockinMins'];
    manualPricingFlag = json['manualPricingFlag'];
    cost = json['cost'];
    timeBlockBeforeAfter = json['timeBlockBeforeAfter'];
    serviceId = json['serviceId'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['serviceName'] = this.serviceName;
    data['description'] = this.description;
    data['timeToBlockinMins'] = this.timeToBlockinMins;
    data['manualPricingFlag'] = this.manualPricingFlag;
    data['cost'] = this.cost;
    data['timeBlockBeforeAfter'] = this.timeBlockBeforeAfter;
    data['serviceId'] = this.serviceId;
    return data;
  }
}

class InvoiceBreakups {
  All? all;
  All? paid;
  All? due;
  All? cancel;

  InvoiceBreakups({this.all, this.paid, this.due, this.cancel});

  InvoiceBreakups.fromJson(Map<String, dynamic> json) {
    all = json['all'] != null ? new All.fromJson(json['all']) : null;
    paid = json['paid'] != null ? new All.fromJson(json['paid']) : null;
    due = json['due'] != null ? new All.fromJson(json['due']) : null;
    cancel = json['cancel'] != null ? new All.fromJson(json['cancel']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.all != null) {
      data['all'] = this.all!.toJson();
    }
    if (this.paid != null) {
      data['paid'] = this.paid!.toJson();
    }
    if (this.due != null) {
      data['due'] = this.due!.toJson();
    }
    if (this.cancel != null) {
      data['cancel'] = this.cancel!.toJson();
    }
    return data;
  }
}

class All {
  int? count;
  int? value;

  All({this.count, this.value});

  All.fromJson(Map<String, dynamic> json) {
    count = json['count'];
    value = json['value'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['count'] = this.count;
    data['value'] = this.value;
    return data;
  }
}

class InvoiceGraph {
  Single? single;
  Multi? multi;

  InvoiceGraph({this.single, this.multi});

  InvoiceGraph.fromJson(Map<String, dynamic> json) {
    single =
        json['single'] != null ? new Single.fromJson(json['single']) : null;
    multi = json['multi'] != null ? new Multi.fromJson(json['multi']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.single != null) {
      data['single'] = this.single!.toJson();
    }
    if (this.multi != null) {
      data['multi'] = this.multi!.toJson();
    }
    return data;
  }
}

class Single {
  List<String>? labels;
  List<int>? dataSets;

  Single({this.labels, this.dataSets});

  Single.fromJson(Map<String, dynamic> json) {
    labels = json['labels'].cast<String>();
    dataSets = json['dataSets'].cast<int>();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['labels'] = this.labels;
    data['dataSets'] = this.dataSets;
    return data;
  }
}

class Multi {
  List<String>? labels;
  List<DataSets>? dataSets;

  Multi({this.labels, this.dataSets});

  Multi.fromJson(Map<String, dynamic> json) {
    labels = json['labels'].cast<String>();
    if (json['dataSets'] != null) {
      dataSets = <DataSets>[];
      json['dataSets'].forEach((v) {
        dataSets!.add(new DataSets.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['labels'] = this.labels;
    if (this.dataSets != null) {
      data['dataSets'] = this.dataSets!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class DataSets {
  int? lsaOnline;
  int? lsaOffline;
  int? genOnline;
  int? genOffline;
  int? others;

  DataSets(
      {this.lsaOnline,
      this.lsaOffline,
      this.genOnline,
      this.genOffline,
      this.others});

  DataSets.fromJson(Map<String, dynamic> json) {
    lsaOnline = json['lsaOnline'];
    lsaOffline = json['lsaOffline'];
    genOnline = json['genOnline'];
    genOffline = json['genOffline'];
    others = json['others'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['lsaOnline'] = this.lsaOnline;
    data['lsaOffline'] = this.lsaOffline;
    data['genOnline'] = this.genOnline;
    data['genOffline'] = this.genOffline;
    data['others'] = this.others;
    return data;
  }
}

class ServiceBreakups {
  LsaOnline? lsaOnline;
  LsaOnline? lsaOffline;
  LsaOnline? genOnline;
  LsaOnline? genOffline;
  Others? others;

  ServiceBreakups(
      {this.lsaOnline,
      this.lsaOffline,
      this.genOnline,
      this.genOffline,
      this.others});

  ServiceBreakups.fromJson(Map<String, dynamic> json) {
    lsaOnline = json['lsaOnline'] != null
        ? new LsaOnline.fromJson(json['lsaOnline'])
        : null;
    lsaOffline = json['lsaOffline'] != null
        ? new LsaOnline.fromJson(json['lsaOffline'])
        : null;
    genOnline = json['genOnline'] != null
        ? new LsaOnline.fromJson(json['genOnline'])
        : null;
    genOffline = json['genOffline'] != null
        ? new LsaOnline.fromJson(json['genOffline'])
        : null;
    others =
        json['others'] != null ? new Others.fromJson(json['others']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.lsaOnline != null) {
      data['lsaOnline'] = this.lsaOnline!.toJson();
    }
    if (this.lsaOffline != null) {
      data['lsaOffline'] = this.lsaOffline!.toJson();
    }
    if (this.genOnline != null) {
      data['genOnline'] = this.genOnline!.toJson();
    }
    if (this.genOffline != null) {
      data['genOffline'] = this.genOffline!.toJson();
    }
    if (this.others != null) {
      data['others'] = this.others!.toJson();
    }
    return data;
  }
}

class LsaOnline {
  int? count;
  Null? cost;

  LsaOnline({this.count, this.cost});

  LsaOnline.fromJson(Map<String, dynamic> json) {
    count = json['count'];
    cost = json['cost'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['count'] = this.count;
    data['cost'] = this.cost;
    return data;
  }
}

class Others {
  int? count;
  int? cost;

  Others({this.count, this.cost});

  Others.fromJson(Map<String, dynamic> json) {
    count = json['count'];
    cost = json['cost'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['count'] = this.count;
    data['cost'] = this.cost;
    return data;
  }
}

class UpcomingApts {
  Tracking? tracking;
  ServiceDetails? serviceDetails;
  Place? place;
  int? invoiceStatus;
  List<String>? invoices;
  List<Null>? activityHistory;
  List<String>? signerLeadIds;
  List<Null>? witnessids;
  String? sId;
  bool? isCancelledBefore;
  bool? isRejected;
  bool? isReschduled;
  bool? isDeleted;
  bool? isRealEstateTransaction;
  bool? isPaymentNeedTobeEnterered;
  double? distanceFromHomeLocation;
  bool? isMileageEntryRequired;
  int? totalMileageExpense;
  int? totalMasterExpense;
  int? totalOtherExpenses;
  int? profitOnOrder;
  int? profitWithAllExpense;
  int? profileWithMileageOnly;
  int? profileWithOtherExpenses;
  bool? isOnlineSigning;
  bool? isRealEstateAndEscrowNumberNotSet;
  String? escrowNumber;
  List<Signers>? signers;
  int? aptTimeStamp;
  int? signingTime;
  String? readableTime;
  bool? isMileageEntered;
  int? totalMileage;
  String? mileageEntrySource;
  String? mileageEnteredTimeStamp;
  List<Mileages>? mileages;
  bool? isNotarialActsEntered;
  int? totalNotarialActsCost;
  int? totalNotarialActsDone;
  List<NotarialActsHistory>? notarialActsHistory;
  bool? isExpenseEntered;
  List<Expenses>? expenses;
  int? status;
  String? paymentUpdateSource;
  String? leadId;
  String? companyId;
  String? notaryId;
  List<Null>? notes;
  List<Null>? witnessDetails;
  List<Null>? quoteLineItems;
  int? iV;
  List<Null>? payments;
  bool? isExpenseNotRequired;

  UpcomingApts(
      {this.tracking,
      this.serviceDetails,
      this.place,
      this.invoiceStatus,
      this.invoices,
      this.activityHistory,
      this.signerLeadIds,
      this.witnessids,
      this.sId,
      this.isCancelledBefore,
      this.isRejected,
      this.isReschduled,
      this.isDeleted,
      this.isRealEstateTransaction,
      this.isPaymentNeedTobeEnterered,
      this.distanceFromHomeLocation,
      this.isMileageEntryRequired,
      this.totalMileageExpense,
      this.totalMasterExpense,
      this.totalOtherExpenses,
      this.profitOnOrder,
      this.profitWithAllExpense,
      this.profileWithMileageOnly,
      this.profileWithOtherExpenses,
      this.isOnlineSigning,
      this.isRealEstateAndEscrowNumberNotSet,
      this.escrowNumber,
      this.signers,
      this.aptTimeStamp,
      this.signingTime,
      this.readableTime,
      this.isMileageEntered,
      this.totalMileage,
      this.mileageEntrySource,
      this.mileageEnteredTimeStamp,
      this.mileages,
      this.isNotarialActsEntered,
      this.totalNotarialActsCost,
      this.totalNotarialActsDone,
      this.notarialActsHistory,
      this.isExpenseEntered,
      this.expenses,
      this.status,
      this.paymentUpdateSource,
      this.leadId,
      this.companyId,
      this.notaryId,
      this.notes,
      this.witnessDetails,
      this.quoteLineItems,
      this.iV,
      this.payments,
      this.isExpenseNotRequired});

  UpcomingApts.fromJson(Map<String, dynamic> json) {
    tracking = json['tracking'] != null
        ? new Tracking.fromJson(json['tracking'])
        : null;
    serviceDetails = json['serviceDetails'] != null
        ? new ServiceDetails.fromJson(json['serviceDetails'])
        : null;
    place = json['place'] != null ? new Place.fromJson(json['place']) : null;
    invoiceStatus = json['invoiceStatus'];
    invoices = json['invoices'].cast<String>();

    signerLeadIds = json['signerLeadIds'].cast<String>();
    sId = json['_id'];
    isCancelledBefore = json['isCancelledBefore'];
    isRejected = json['isRejected'];
    isReschduled = json['isReschduled'];
    isDeleted = json['isDeleted'];
    isRealEstateTransaction = json['isRealEstateTransaction'];
    isPaymentNeedTobeEnterered = json['isPaymentNeedTobeEnterered'];
    distanceFromHomeLocation = json['distanceFromHomeLocation'];
    isMileageEntryRequired = json['isMileageEntryRequired'];
    totalMileageExpense = json['totalMileageExpense'];
    totalMasterExpense = json['totalMasterExpense'];
    totalOtherExpenses = json['totalOtherExpenses'];
    profitOnOrder = json['ProfitOnOrder'];
    profitWithAllExpense = json['profitWithAllExpense'];
    profileWithMileageOnly = json['profileWithMileageOnly'];
    profileWithOtherExpenses = json['profileWithOtherExpenses'];
    isOnlineSigning = json['isOnlineSigning'];
    isRealEstateAndEscrowNumberNotSet =
        json['isRealEstate_andEscrowNumberNotSet'];
    escrowNumber = json['escrowNumber'];
    // if (json['signers'] != null) {
    //   signers = <Signers>[];
    //   json['signers'].forEach((v) {
    //     signers!.add(new Signers.fromJson(v));
    //   });
    // }
    aptTimeStamp = json['aptTimeStamp'];
    signingTime = json['signingTime'];
    readableTime = json['readableTime'];
    isMileageEntered = json['isMileageEntered'];
    totalMileage = json['totalMileage'];
    mileageEntrySource = json['mileageEntrySource'];
    mileageEnteredTimeStamp = json['mileageEnteredTimeStamp'];
    if (json['mileages'] != null) {
      mileages = <Mileages>[];
      json['mileages'].forEach((v) {
        mileages!.add(new Mileages.fromJson(v));
      });
    }
    isNotarialActsEntered = json['isNotarialActsEntered'];
    totalNotarialActsCost = json['totalNotarialActsCost'];
    totalNotarialActsDone = json['totalNotarialActsDone'];
    if (json['notarialActsHistory'] != null) {
      notarialActsHistory = <NotarialActsHistory>[];
      json['notarialActsHistory'].forEach((v) {
        notarialActsHistory!.add(new NotarialActsHistory.fromJson(v));
      });
    }
    isExpenseEntered = json['isExpenseEntered'];
    if (json['expenses'] != null) {
      expenses = <Expenses>[];
      json['expenses'].forEach((v) {
        expenses!.add(new Expenses.fromJson(v));
      });
    }
    status = json['status'];
    paymentUpdateSource = json['paymentUpdateSource'];
    leadId = json['leadId'];
    companyId = json['companyId'];
    notaryId = json['notaryId'];
    iV = json['__v'];
    isExpenseNotRequired = json['isExpenseNotRequired'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.tracking != null) {
      data['tracking'] = this.tracking!.toJson();
    }
    if (this.serviceDetails != null) {
      data['serviceDetails'] = this.serviceDetails!.toJson();
    }
    if (this.place != null) {
      data['place'] = this.place!.toJson();
    }
    data['invoiceStatus'] = this.invoiceStatus;
    data['invoices'] = this.invoices;
    data['signerLeadIds'] = this.signerLeadIds;
    data['_id'] = this.sId;
    data['isCancelledBefore'] = this.isCancelledBefore;
    data['isRejected'] = this.isRejected;
    data['isReschduled'] = this.isReschduled;
    data['isDeleted'] = this.isDeleted;
    data['isRealEstateTransaction'] = this.isRealEstateTransaction;
    data['isPaymentNeedTobeEnterered'] = this.isPaymentNeedTobeEnterered;
    data['distanceFromHomeLocation'] = this.distanceFromHomeLocation;
    data['isMileageEntryRequired'] = this.isMileageEntryRequired;
    data['totalMileageExpense'] = this.totalMileageExpense;
    data['totalMasterExpense'] = this.totalMasterExpense;
    data['totalOtherExpenses'] = this.totalOtherExpenses;
    data['ProfitOnOrder'] = this.profitOnOrder;
    data['profitWithAllExpense'] = this.profitWithAllExpense;
    data['profileWithMileageOnly'] = this.profileWithMileageOnly;
    data['profileWithOtherExpenses'] = this.profileWithOtherExpenses;
    data['isOnlineSigning'] = this.isOnlineSigning;
    data['isRealEstate_andEscrowNumberNotSet'] =
        this.isRealEstateAndEscrowNumberNotSet;
    data['escrowNumber'] = this.escrowNumber;
    if (this.signers != null) {
      data['signers'] = this.signers!.map((v) => v.toJson()).toList();
    }
    data['aptTimeStamp'] = this.aptTimeStamp;
    data['signingTime'] = this.signingTime;
    data['readableTime'] = this.readableTime;
    data['isMileageEntered'] = this.isMileageEntered;
    data['totalMileage'] = this.totalMileage;
    data['mileageEntrySource'] = this.mileageEntrySource;
    data['mileageEnteredTimeStamp'] = this.mileageEnteredTimeStamp;
    if (this.mileages != null) {
      data['mileages'] = this.mileages!.map((v) => v.toJson()).toList();
    }
    data['isNotarialActsEntered'] = this.isNotarialActsEntered;
    data['totalNotarialActsCost'] = this.totalNotarialActsCost;
    data['totalNotarialActsDone'] = this.totalNotarialActsDone;
    if (this.notarialActsHistory != null) {
      data['notarialActsHistory'] =
          this.notarialActsHistory!.map((v) => v.toJson()).toList();
    }
    data['isExpenseEntered'] = this.isExpenseEntered;
    if (this.expenses != null) {
      data['expenses'] = this.expenses!.map((v) => v.toJson()).toList();
    }
    data['status'] = this.status;
    data['paymentUpdateSource'] = this.paymentUpdateSource;
    data['leadId'] = this.leadId;
    data['companyId'] = this.companyId;
    data['notaryId'] = this.notaryId;
    data['isExpenseNotRequired'] = this.isExpenseNotRequired;
    return data;
  }
}

class Tracking {
  String? sentVia;
  String? sentOn;
  String? trackingNumber;

  Tracking({this.sentVia, this.sentOn, this.trackingNumber});

  Tracking.fromJson(Map<String, dynamic> json) {
    sentVia = json['SentVia'];
    sentOn = json['sentOn'];
    trackingNumber = json['trackingNumber'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['SentVia'] = this.sentVia;
    data['sentOn'] = this.sentOn;
    data['trackingNumber'] = this.trackingNumber;
    return data;
  }
}

class ServiceDetails {
  String? serviceName;
  String? serviceId;
  int? cost;

  ServiceDetails({this.serviceName, this.serviceId, this.cost});

  ServiceDetails.fromJson(Map<String, dynamic> json) {
    serviceName = json['serviceName'];
    serviceId = json['serviceId'];
    cost = json['cost'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['serviceName'] = this.serviceName;
    data['serviceId'] = this.serviceId;
    data['cost'] = this.cost;
    return data;
  }
}

class Place {
  bool? isInOffice;
  String? completeAddress;
  double? lat;
  double? lon;
  String? city;
  String? area;
  String? streetAddress;

  Place(
      {this.isInOffice,
      this.completeAddress,
      this.lat,
      this.lon,
      this.city,
      this.area,
      this.streetAddress});

  Place.fromJson(Map<String, dynamic> json) {
    isInOffice = json['isInOffice'];
    completeAddress = json['completeAddress'];
    lat = json['lat'];
    lon = json['lon'];
    city = json['city'];
    area = json['area'];
    streetAddress = json['streetAddress'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['isInOffice'] = this.isInOffice;
    data['completeAddress'] = this.completeAddress;
    data['lat'] = this.lat;
    data['lon'] = this.lon;
    data['city'] = this.city;
    data['area'] = this.area;
    data['streetAddress'] = this.streetAddress;
    return data;
  }
}

class Signers {
  String? sId;
  String? firstName;
  String? lastName;
  String? type;
  String? phoneNumber;
  Null? signerAddress;
  String? emailAddress;

  Signers(
      {this.sId,
      this.firstName,
      this.lastName,
      this.type,
      this.phoneNumber,
      this.signerAddress,
      this.emailAddress});

  Signers.fromJson(Map<String, dynamic> json) {
    sId = json['_id'];
    firstName = json['firstName'];
    lastName = json['lastName'];
    type = json['type'];
    phoneNumber = json['phoneNumber'];
    signerAddress = json['signerAddress'];
    emailAddress = json['emailAddress'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['_id'] = this.sId;
    data['firstName'] = this.firstName;
    data['lastName'] = this.lastName;
    data['type'] = this.type;
    data['phoneNumber'] = this.phoneNumber;
    data['signerAddress'] = this.signerAddress;
    data['emailAddress'] = this.emailAddress;
    return data;
  }
}

class Mileages {
  String? sId;
  int? mileage;

  Mileages({this.sId, this.mileage});

  Mileages.fromJson(Map<String, dynamic> json) {
    sId = json['_id'];
    mileage = json['mileage'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['_id'] = this.sId;
    data['mileage'] = this.mileage;
    return data;
  }
}

class NotarialActsHistory {
  String? sId;
  String? dateDone;
  int? actsNumber;
  int? actsPerCost;

  NotarialActsHistory(
      {this.sId, this.dateDone, this.actsNumber, this.actsPerCost});

  NotarialActsHistory.fromJson(Map<String, dynamic> json) {
    sId = json['_id'];
    dateDone = json['dateDone'];
    actsNumber = json['actsNumber'];
    actsPerCost = json['actsPerCost'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['_id'] = this.sId;
    data['dateDone'] = this.dateDone;
    data['actsNumber'] = this.actsNumber;
    data['actsPerCost'] = this.actsPerCost;
    return data;
  }
}

class Expenses {
  String? sId;
  String? expenseName;
  String? description;
  String? dateAdded;
  String? receiptURL;
  String? vendorName;
  String? notes;
  int? cost;
  String? category;
  bool? isIncomeCategory;
  String? internalKeyForKnownExpenses;

  Expenses(
      {this.sId,
      this.expenseName,
      this.description,
      this.dateAdded,
      this.receiptURL,
      this.vendorName,
      this.notes,
      this.cost,
      this.category,
      this.isIncomeCategory,
      this.internalKeyForKnownExpenses});

  Expenses.fromJson(Map<String, dynamic> json) {
    sId = json['_id'];
    expenseName = json['expenseName'];
    description = json['description'];
    dateAdded = json['dateAdded'];
    receiptURL = json['receiptURL'];
    vendorName = json['vendorName'];
    notes = json['notes'];
    cost = json['cost'];
    category = json['category'];
    isIncomeCategory = json['isIncomeCategory'];
    internalKeyForKnownExpenses = json['internalKeyForKnownExpenses'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['_id'] = this.sId;
    data['expenseName'] = this.expenseName;
    data['description'] = this.description;
    data['dateAdded'] = this.dateAdded;
    data['receiptURL'] = this.receiptURL;
    data['vendorName'] = this.vendorName;
    data['notes'] = this.notes;
    data['cost'] = this.cost;
    data['category'] = this.category;
    data['isIncomeCategory'] = this.isIncomeCategory;
    data['internalKeyForKnownExpenses'] = this.internalKeyForKnownExpenses;
    return data;
  }
}

class CompaniesList {
  String? sId;
  String? name;

  CompaniesList({this.sId, this.name});

  CompaniesList.fromJson(Map<String, dynamic> json) {
    sId = json['_id'];
    name = json['name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['_id'] = this.sId;
    data['name'] = this.name;
    return data;
  }
}

class SuggestedExpenses {
  String? expenseName;
  String? description;
  Null? vendorName;
  Null? notes;
  int? cost;
  String? category;
  String? internalKeyForKnownExpenses;
  String? serviceId;

  SuggestedExpenses(
      {this.expenseName,
      this.description,
      this.vendorName,
      this.notes,
      this.cost,
      this.category,
      this.internalKeyForKnownExpenses,
      this.serviceId});

  SuggestedExpenses.fromJson(Map<String, dynamic> json) {
    expenseName = json['expenseName'];
    description = json['description'];
    vendorName = json['vendorName'];
    notes = json['notes'];
    cost = json['cost'];
    category = json['category'];
    internalKeyForKnownExpenses = json['internalKeyForKnownExpenses'];
    serviceId = json['serviceId'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['expenseName'] = this.expenseName;
    data['description'] = this.description;
    data['vendorName'] = this.vendorName;
    data['notes'] = this.notes;
    data['cost'] = this.cost;
    data['category'] = this.category;
    data['internalKeyForKnownExpenses'] = this.internalKeyForKnownExpenses;
    data['serviceId'] = this.serviceId;
    return data;
  }
}
