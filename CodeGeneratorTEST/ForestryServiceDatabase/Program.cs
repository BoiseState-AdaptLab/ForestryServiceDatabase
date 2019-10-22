using System;
using System.Data.Entity;

namespace ForestryServiceDatabase
{
    public class Program
    {
        static void Main(string[] args)
		{
			using (var db = new ReportContext())
			{
				// Create and save a new Blog
				Console.Write("Enter the ID of the Report to be entered: ");
				var report_id = Console.ReadLine();

				var report = new Report { ReportID = report_id };
				db.Reports.Add(report);
				db.SaveChanges();

				// Display all Reports from the database
				var query = from r in db.Reports
							orderby query.ReportID
							select r;

				Console.WriteLine("All reports in the database:");
				foreach (var item in query)
				{
					Console.WriteLine(item.ReportID);
				}

				Console.WriteLine("Press any key to exit...");
				Console.ReadKey();
			}
		}
    }

	public class ReportContext : DbContext
	{
		public DbSet<Report> Reports { get; set; }
		public DbSet<Transect> Transects { get; set; }
		public DbSet<Plot> Plots { get; set; }
		public DbSet<Vegetation> Vegetation { get; set; }
		public DbSet<VegetationSummary> VegetationSummary { get; set; }
		public DbSet<Biomass> Biomass { get; set; }
		public DbSet<BiomassSummary> BiomassSummary { get; set; }
		public DbSet<Soil> Soil { get; set; }
		public DbSet<Metadata> Metadata { get; set; }
	}
}
