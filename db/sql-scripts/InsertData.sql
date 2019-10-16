
INSERT INTO Allotments (AllotmentID,Forest,RangerDistrict,PlotSize,PlotInterval,ReportID) VALUES (100,'Payette','M-3',0,2,12);

INSERT INTO Reports (ReportID,AllotmentID,WriteupNo,PhotoNo,Examiner,TransectNo,Slope,Aspect,ElevationMIN,ElevationMAX,Location,Livestock,TypeDesignation,TypeDesTrend,Date,AvgProdDryWtD,AvgDesirabilityI,AvgDesirabilityL,DandI,PercDesirable,PercIntermediate,PercLeastDesir,CondRating,CompRating,ProdRating,ForCondRating,GroundCvrIndex,ErosionIndex,SoilRating,Condition,Trend) VALUES (1,5,'G-7','NBV-6-701','H Hess','7-8, 1-5, 8-4',64,'F-W-V',2,9,'Bonnyrigg','sheep ','G-8','B-4','030919',10,5,6,5,7,8,4,6,8,7,2,2,6,9,' bad ','R');

INSERT INTO Transects (TransectID,ReportID,TransectNO,Location,Elevation,Slope,TypeDesignation,Aspect,PercDesirable,PercIntermediate,PercLeastDesir,CondRating,CompRating,ProdRating,ForCondRating,GroundCvrIndex,ErosionIndex,SoilRating,Condition,Trend) VALUES (1,17,19,'Ajmer',10,2,'B-4','T-Z-X',8,6,10,8,5,7,3,5,4,3,'good ','H');

INSERT INTO Soil (ReportID,SurfaceTexture,SurfTextThickness,SurfTextPH,SubsoilTexture,SubTextThickness,SubTextPH,SubstratumMat,EffRootingDepth,GeneralRemarks,AvgSurfaceLoss,LossOverArea,GulliesTotalL,GulliesTotalD,ErosionRemarks,Detachability,RockCoverage,AdjDetachability,Permeability,ErodIndex,ErodIndexClass,Slope,ErosHazClass,Coompaction,Displacement,CoverDispersion,PotentialProduct,SuitReasons) VALUES (4,'eu arcu. Morbi',3,1,'vitae',6,3,'sapien,','at','egestas.',4,1,4,10,'dui',10,2,6,7,8,'erat',1,'nec','aliquet.','Maecenas','convallis,',10,'Curabitur');

INSERT INTO Vegetation (TransectID,Type,Species,Plot1,Plot2,Plot3,Plot4,Plot5,Plot6,Plot7,Plot8,Plot9,Plot10,GramsUsed,PercUtil,DryWeight,ProdDryWeight,PercComposition,DesirabilityD,DesirabilityI,DesirabilityL) VALUES (8,'nibh','Sheep ',10,2,3,10,8,7,5,9,7,10,4,9,10,1,4,5,3,7);

-- INSERT INTO ranger_districts (range_district_name,ranger_district_description) VALUES ('J-3','eu turpis.');
