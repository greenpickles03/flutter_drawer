


class SummaryReport{
   final String Project;
   final String LocationRevision;
   final String Region;
   final String AssetsStatus;
   final String Count;

  SummaryReport( {required this.Project, required this.LocationRevision, required this.Region, required this.AssetsStatus, required this.Count});
  // SummaryReport( this.Project,  this.LocationRevision,  this.Region,  this.AssetsStatus,  this.Count);

  factory SummaryReport.fromJson(Map<String, dynamic> json){
    return SummaryReport(
      Project: json['Project'],
      LocationRevision: json['LocationRevision'],
      Region: json['Region'],
      AssetsStatus: json['AssetsStatus'],
      Count: json['Count'],
    );
  }



}