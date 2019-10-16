
CREATE TABLE Reports2 (

	ReportID int NOT NULL,

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
