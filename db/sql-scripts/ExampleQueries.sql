--returns all of the summaries that we have--
SELECT report.*, biomass_summary.*, cover_summary.*
FROM report
INNER JOIN biomass_summary
ON (report.r_id = biomass_summary.r_id)
INNER JOIN cover_summary
ON (report.r_id = cover_summary.r_id);

--returns the summary page based on specific parameter--
SELECT 
report.*, biomass_summary.*, cover_summary.*
from report INNER JOIN biomass_summary
ON (report.r_id = biomass_summary.r_id)
INNER JOIN cover_summary
ON (report.r_id = cover_summary.r_id)
WHERE report.writeup_no = 'A-13';


SELECT 
report.*, biomass_summary.*, cover_summary.*
from report INNER JOIN biomass_summary
ON (report.r_id = biomass_summary.r_id)
INNER JOIN cover_summary
ON (report.r_id = cover_summary.r_id)
WHERE report.photo_no = 'NBV-6-701';

SELECT 
report.*, biomass_summary.*, cover_summary.*
from report INNER JOIN biomass_summary
ON (report.r_id = biomass_summary.r_id)
INNER JOIN cover_summary
ON (report.r_id = cover_summary.r_id)
WHERE report.examiner = 'H Hess';

--returns transect pages based on specific parameters w/out cover section--
SELECT
report.date,
transect.transect_no, transect.location,
plot.plot_number,
biomass.type, biomass.species, biomass.green_weight
FROM report
INNER JOIN transect
ON (report.r_id = transect.r_id)
INNER JOIN plot
ON (transect.t_id = plot.t_id)
INNER JOIN biomass
ON (plot.p_id = biomass.p_id)
WHERE biomass.species = 'AGSPI';

SELECT
report.date,
transect.transect_no, transect.location,
plot.plot_number,
biomass.type, biomass.species, biomass.green_weight
FROM report
INNER JOIN transect
ON (report.r_id = transect.r_id)
INNER JOIN plot
ON (transect.t_id = plot.t_id)
INNER JOIN biomass
ON (plot.p_id = biomass.p_id)
WHERE report.date = '1972-07-06';

--transect page w/cover section--
SELECT
report.date,
transect.transect_no, transect.location,
plot.plot_number,
biomass.type, biomass.species, biomass.green_weight,
cover.type, cover.value
FROM report
INNER JOIN transect
ON (report.r_id = transect.r_id)
INNER JOIN plot
ON (transect.t_id = plot.t_id)
INNER JOIN biomass
ON (plot.p_id = biomass.p_id)
INNER JOIN cover
ON (plot.p_id = cover.p_id)
WHERE biomass.species = 'AGSPI';

SELECT
report.date,
transect.transect_no, transect.location,
plot.plot_number,
biomass.type, biomass.species, biomass.green_weight,
cover.type, cover.value
FROM report
INNER JOIN transect
ON (report.r_id = transect.r_id)
INNER JOIN plot
ON (transect.t_id = plot.t_id)
INNER JOIN biomass
ON (plot.p_id = biomass.p_id)
INNER JOIN cover
ON (plot.p_id = cover.p_id)
WHERE report.date = '1972-07-06';