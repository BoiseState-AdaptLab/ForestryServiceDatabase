using System;
namespace ForestryServiceDatabase
{
    public class Transect
    {
        public int TransectID { get; set; }
        public int ReportID { get; set; }
        public int TransectNo { get; set; }
        public string Location { get; set; }
        public int Elevation { get; set; }
        public int Slope { get; set; }
        public string TypeDesignation { get; set; }
        public string Aspect { get; set; }
    }
}