SELECT *
WHERE report.date >= Convert(datetime, '1968-07-06');

-- return veg summary --
SELECT * FROM vegetation_summary
WHERE vegetation.type = 'GRASS';

SELECT * FROM vegetation_summary
WHERE vegetation.species = 'AGSPI';

SELECT * FROM vegetation_summary
WHERE vegetation.type = 'GRASS'
AND vegetation.species = 'BRTE';

SELECT * FROM vegetation_summary
WHERE vegetation.green_weight > 5;

SELECT * FROM vegetation_summary
WHERE report.date = 1968-07-06;

-- return veg AND biomass summary --
SELECT * FROM vegetation_summary, biomass_summary
WHERE vegetation.type = 'GRASS';

SELECT * FROM vegetation_summary, biomass_summary
WHERE vegetation.species = 'AGSPI';

SELECT * FROM vegetation_summary, biomass_summary
WHERE vegetation.type = 'GRASS'
AND vegetation.species = 'BRTE';

SELECT * FROM vegetation_summary, biomass_summary
WHERE vegetation.green_weight > 5;

SELECT * FROM vegetation_summary, biomass_summary
WHERE report.date = 1968-07-06;

--return soil summary-
SELECT * FROM soil_summary
WHERE vegetation.type = 'GRASS';

SELECT * FROM soil_summary
WHERE vegetation.surf_text_thick > 35;

SELECT * FROM soil_summary
WHERE vegetation.species = 'AGSPI';

SELECT * FROM soil_summary
WHERE vegetation.type = 'GRASS'
AND vegetation.surf_text_thick > 35;

SELECT * FROM soil_summary
WHERE vegetation.soil_condition > 35;

--return summaries and metadata--
SELECT * FROM vegetation_summary, biomass_summaries, metadata
WHERE vegetation.type = 'GRASS';

SELECT * FROM vegetation_summary, biomass_summaries, metadata
WHERE vegetation.species = 'AGSPI';

SELECT * FROM vegetation_summary, biomass_summaries, metadata
WHERE vegetation.type = 'GRASS'
AND vegetation.species = 'BRTE';

SELECT * FROM vegetation_summary, biomass_summaries, metadata
WHERE vegetation.green_weight > 5;

SELECT * FROM vegetation_summary, biomass_summaries, metadata
WHERE report.date = 1968-07-06;

SELECT * FROM vegetation_summary, biomass_summaries, metadata
WHERE vegetation.soil_condition > 35;
