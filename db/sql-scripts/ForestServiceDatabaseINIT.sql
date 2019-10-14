
CREATE TABLE Allotments (

	AllotmentID varchar(255) NOT NULL,

	Forest varchar(255), 

	RangerDistrict varchar(255), 

	PlotSize int,

	PlotInterval varchar(255),

	ReportID varchar(255)
);




CREATE TABLE Reports (

	ReportID int NOT NULL,

	avgproddrywtd int,

	AllotmentID varchar(255),

	WriteupNo varchar(255),

	PhotoNo varchar(255),

	Examiner varchar(255),

	TransectNo varchar(255),

	Slope int,

	Aspect varchar(255),

	ElevationMIN int,

	ElevationMAX int,

	Location varchar(255),

	Livestock varchar(255),

	TypeDesignation varchar(255),

	TypeDesTrend varchar(255),

	Date timestamp,

	AvgProdDryWt int,

	AvgDesirabilityD int,

	AvgDesirabilityI int,

	AvgDesirabilityL int,

	DandI int,

	PercDesirable int,

	PercIntermediate int,

	PercLeastDesir int,

	CondRating int,

	CompRating int,

	ProdRating int,

	ForCondRating int,

	GroundCvrIndex int,

	ErosionIndex int,

	SoilRating int,

	Condition varchar(255),

	Trend varchar(255)
);



CREATE TABLE Transects (

	TransectID int NOT NULL,

	ReportID int NOT NULL,

	TransectNO int,

	Location varchar(255),

	Elevation int,

	Slope int,

	TypeDesignation varchar(255),

	Aspect varchar(255),

	PercDesirable int,

	PercIntermediate int,

	PercLeastDesir int,

	CondRating int,

	CompRating int,

	ProdRating int,

	ForCondRating int,

	GroundCvrIndex int,

	ErosionIndex int,

	SoilRating int,

	Condition varchar(255),

	Trend varchar(255)
);



CREATE TABLE Soil (

	ReportID int NOT NULL,

	SurfaceTexture varchar(255),

	SurfTextThickness int,

	SurfTextPH decimal,

	SubsoilTexture varchar(255),

	SubTextThickness int,

	SubTextPH decimal,

	SubstratumMat varchar(255),

	EffRootingDepth varchar(255),

	GeneralRemarks varchar(255),

	AvgSurfaceLoss decimal,

	LossOverArea int,

	GulliesTotalL decimal,

	GulliesTotalD decimal,

	ErosionRemarks varchar(255),

	Detachability int,

	RockCoverage int,

	AdjDetachability decimal,

	Permeability int,

	ErodIndex decimal,

	ErodIndexClass varchar(255),

	Slope int,

	ErosHazClass varchar(255),

	Coompaction varchar(255),

	Displacement varchar(255),

	CoverDispersion varchar(255),

	PotentialProduct int,

	SuitReasons varchar(255)
);



CREATE TABLE Vegetation (

	TransectID int NOT NULL,

	Type varchar(255),

	Species varchar(255),

	Plot1 int,

	Plot2 int,

	Plot3 int,

	Plot4 int,

	Plot5 int,

	Plot6 int,

	Plot7 int,

	Plot8 int,

	Plot9 int,

	Plot10 int,

	PlotTotal int,

	GramsUsed int,

	PercUtil int,

	DryWeight int,

	ProdDryWeight int,

	PercComposition int,

	DesirabilityD int,

	DesirabilityI int,

	DesirabilityL int
);