using System;
namespace ForestryServiceDatabase
{
    public class Report
    {
        public int ReportID { get; set; }
        public string WriteupID { get; set; }
        public string Forest { get; set; }
        public string PhotoID { get; set; }
        public string Examiner { get; set; }
        public string TransectNo { get; set; }
        public int Slope { get; set; }
        public string Aspect { get; set; }
        public int ElevationMIN { get; set; }
        public int ElevationMAX { get; set; }
        public string RangerDistrict { get; set; }
        public string Allotment { get; set; }
        public string Location { get; set; }
        public string Livestock { get; set; }
        public string TypeDesignation { get; set; }
        public string TypeDesTrend { get; set; }
        public string Date { get; set; }
    }
}
