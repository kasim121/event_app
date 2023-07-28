final List<ExpansionData> listOfExapnsionHeader = [
  ExpansionData(
      headerName: 'ABOUT US',
      textDetails:
          '''Symposium fourth edition hitting the idyllic beach setting in Goa! Another year is in the books and we're
                    '''),
  ExpansionData(
      headerName: 'TERMS',
      textDetails:
          '''Symposium fourth edition hitting the idyllic beach setting in Goa! Another year is in the books and we're
                    '''),
];

class ExpansionData {
  final String headerName;
  final String textDetails;

  ExpansionData({required this.textDetails, required this.headerName});
}
