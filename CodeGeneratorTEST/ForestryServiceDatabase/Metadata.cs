using System;
namespace ForestryServiceDatabase
{
    public class Metadata
    {
        public int MetadataID { get; set; }
        public int ReportID { get; set; }
        public int TotalGrass { get; set; }
        public int TotalForb { get; set; }
        public int TotalBrowse { get; set; }
        public int Desirable { get; set; }
        public int Intermediate { get; set; }
        public int LeastDesirable { get; set; }
        public int Composition { get; set; }
        public int Production { get; set; }
        public int ForageCondition { get; set; }
        public int GroundCover { get; set; }
        public int Erosion { get; set; }
        public int SoilCondition { get; set; }
        public string BrowseCondition { get; set; }
        public string Trend { get; set; }
    }
}
