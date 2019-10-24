using System;
namespace ForestryServiceDatabase
{
    public class Biomass
    {
        public int BiomassID { get; set; }
        public int PlotID { get; set; }
        public string Type { get; set; }
        public int Value { get; set; }
    }

    public class BiomassSummary
	{
		public int BiomassID { get; set; }
        public int ReportID { get; set; }
        public string Type { get; set; }
        public int Total { get; set; }
        public int Average { get; set; }
	}
}
