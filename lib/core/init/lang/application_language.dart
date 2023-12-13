class ApplicationLanguage {
  ApplicationLanguage._();

  static Map<String, Map<String, String>> translationKey = {
    'en_US': enUS,
    'tr_TR': trTR,
  };
}

final Map<String, String> enUS = {
  'january': 'JANUARY',
  'february': 'FEBRUARY',
  'march': 'MARCH',
  'april': 'APRIL',
  'may': 'MAY',
  'june': 'JUNE',
  'july': 'JULY',
  'august': 'AUGUST',
  'september': 'SEPTEMBER',
  'october': 'OCTOBER',
  'november': 'NOVEMBER',
  'december': 'DECEMBER',
  'jan': 'JAN',
  'feb': 'FEB',
  'mar': 'MAR',
  'apr': 'APR',
  'myy': 'MAY',
  'jun': 'JUNE',
  'juy': 'JULY',
  'aug': 'AUG',
  'sep': 'SEP',
  'oct': 'OCT',
  'nov': 'NOV',
  'dec': 'DEC',
};

final Map<String, String> trTR = {
  'january': 'OCAK',
  'february': 'SUBAT',
  'march': 'MART',
  'april': 'NISAN',
  'may': 'MAYIS',
  'june': 'HAZIRAN',
  'july': 'TEMMUZ',
  'august': 'AGUSTOS',
  'september': 'EYLUL',
  'october': 'EKIM',
  'november': 'KASIM',
  'december': 'ARALIK',
  'jan': 'OCAK',
  'feb': 'ŞUB',
  'mar': 'MART',
  'apr': 'NIS',
  'my': 'MAY',
  'jun': 'HAZ',
  'juy': 'TEM',
  'aug': 'AGU',
  'sep': 'EYL',
  'oct': 'EKIM',
  'nov': 'KAS',
  'dec': 'ARA',
};
