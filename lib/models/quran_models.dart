
final String TABLE_QURAN='tbl_quran';
final String COL_SURANO='col_sura_no';
final String COL_AYATNO='col_ayat_no';
final String COL_PARANO='col_para_no';
final String COL_ARABIQURAN='col_arabi_quran';
final String COL_BANGLA_MEANING='col_bangla_meaning';
final String COL_BANGLA_TRANSLATOR='col_bangla_translator';
final String COL_OBOTIRNO='col_obotirno';
final String COL_RUKU_NO='col_ruku_no';
final String COL_ENGLISH_SURA_NAME='col_english_sura_name';

class QuranModels{
  int suraNo;
  int ayatNo;
  String paraNo;
  String arabiQuran;
  String banglaMeaning;
  String banglaTranslator;
  String obotirno;
  String rukuNo;
  String englishSuraName;

  QuranModels({
      this.suraNo,
      this.ayatNo,
      this.paraNo,
      this.arabiQuran,
      this.banglaMeaning,
      this.banglaTranslator,
      this.obotirno,
      this.rukuNo,
      this.englishSuraName});

  @override
  String toString() {
    return 'QuranModels{suraNo: $suraNo, ayatNo: $ayatNo, paraNo: $paraNo, arabiQuran: $arabiQuran, banglaMeaning: $banglaMeaning, banglaTranslator: $banglaTranslator, obotirno: $obotirno, rukuNo: $rukuNo, englishSuraName: $englishSuraName}';
  }

  Map<String,dynamic> toMap(){
    final map=<String,dynamic>{
      COL_SURANO:suraNo,
      COL_PARANO:paraNo,
      COL_ARABIQURAN:arabiQuran,
      COL_BANGLA_MEANING:banglaMeaning,
      COL_BANGLA_TRANSLATOR:banglaTranslator,
      COL_OBOTIRNO:obotirno,
      COL_RUKU_NO:rukuNo,
      COL_ENGLISH_SURA_NAME:englishSuraName
    };

    if(ayatNo!=null){
      map[COL_AYATNO]=ayatNo;
    }
    return map;
  }

  QuranModels.fromMap(Map<String,dynamic> map){
    suraNo=map[COL_SURANO];
    ayatNo=map[COL_AYATNO];
    paraNo=map[COL_PARANO];
    arabiQuran=map[COL_ARABIQURAN];
    banglaMeaning=map[COL_BANGLA_MEANING];
    banglaTranslator=map[COL_BANGLA_TRANSLATOR];
    obotirno=map[COL_OBOTIRNO];
    rukuNo=map[COL_RUKU_NO];
    englishSuraName=map[COL_ENGLISH_SURA_NAME];
  }

}