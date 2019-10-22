using System;
namespace ForestryServiceDatabase
{
    public class Vegetation
    {
        public int VegetationID { get; set; }
        public int PlotID { get; set; }
        public string Type { get; set; }
        public string Species { get; set; }
        public int GreenWeight { get; set; }
    }

    public class VegetationSummary
	{
        public int VegetationID { get; set; }
        public int ReportID { get; set; }
        public string Species { get; set; }
        public int Trans1 { get; set; }
        public int Trans2 { get; set; }
        public int Trans3 { get; set; }
        public int Total { get; set; }
        public int DryWeight { get; set; }
        public int ProdDryWeight { get; set; }
        public int Composition { get; set; }
        public int DesirabilityD { get; set; }
		public int DesirabilityI { get; set; }
		public int DesirabilityL { get; set; }
	}
}
