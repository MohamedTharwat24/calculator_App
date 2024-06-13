class NumberFormatter {
  static String format ( String text) {
    try{
      double parseNumber = double.parse(text);
      if ((parseNumber != double.infinity) && ( parseNumber == parseNumber.floor())){
        return parseNumber.truncate().toString() ;
      }
      return text ;
    } catch ( err){
      return text ;
    }

  }
}