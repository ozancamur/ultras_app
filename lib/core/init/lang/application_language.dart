class ApplicationLanguage {
  ApplicationLanguage._();

  static Map<String, Map<String, String>> translationKey = {
    'en_US': enUS,
    'tr_TR': trTR,
  };
}

final Map<String, String> enUS = {
  'jan': 'JANUARY',
  'feb': 'FEBRUARY',
  'march': 'MARCH',
  'april': 'APRIL',
  'may': 'MAY',
  'june': 'JUNE',
  'july': 'JULY',
  'aug': 'AUGUST',
  'sept': 'SEPTEMBER',
  'oct': 'OCTOBER',
  'novb': 'NOVEMBER',
  'dec': 'DECEMBER'
};

final Map<String, String> trTR = {
  'jan': 'OCAK',
  'feb': 'SUBAT',
  'march': 'MART',
  'april': 'NISAN',
  'may': 'MAYIS',
  'june': 'HAZIRAN',
  'july': 'TEMMUZ',
  'aug': 'AGUSTOS',
  'sept': 'EYLUL',
  'oct': 'EKIM',
  'novb': 'KASIM',
  'dec': 'ARALIK'
};
