using System;
namespace ForestryServiceDatabase
{
    public class Soil
    {
        public int SoilID { get; set; }
        public int ReportID { get; set; }
        public string SurfaceTexture { get; set; }
        public int SurfTextThick { get; set; }
        public double SurfTextPH { get; set; }
        public string SubsoilTexture { get; set; }
        public int SubTextThick { get; set; }
        public double SubTextPH { get; set; }
        public string SubstratumMat { get; set; }
        public string EffRootDepth { get; set; }
        public string GeneralRemarks { get; set; }
        public double AvgSurfaceLoss { get; set; }
        public int LossOverArea { get; set; }
        public double GulliesLength { get; set; }
        public double GulliesDepth { get; set; }
        public string ErosionRemarks { get; set; }
        public int Detachability { get; set; }
        public int RockCoverage { get; set; }
        public double AdjDetachability { get; set; }
        public int Permeability { get; set; }
        public double ErodIndex { get; set; }
        public string ErodIndexClass { get; set; }
        public int Slope { get; set; }
        public string ErosHazClass { get; set; }
        public string Compaction { get; set; }
        public string Displacement { get; set; }
        public string CoverDispersion { get; set; }
        public int PotentialProduct { get; set; }
        public string SuitReasons { get; set; }
	}
}
