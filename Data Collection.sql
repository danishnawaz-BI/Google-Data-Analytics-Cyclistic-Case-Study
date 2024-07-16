-- combining all the 12 months data tables into a single table containing data from Jan 2021 to Dec 2021.

CREATE TABLE IF NOT EXISTS `warm-agility-427707-f7.cyclistic_DA.2021_tripscombined` AS (
  SELECT * FROM `warm-agility-427707-f7.cyclistic_DA.Jan2021`
  UNION ALL
  SELECT * FROM `warm-agility-427707-f7.cyclistic_DA.Feb2021`
  UNION ALL
  SELECT * FROM `warm-agility-427707-f7.cyclistic_DA.Mar2021`
  UNION ALL
  SELECT * FROM `warm-agility-427707-f7.cyclistic_DA.Apr2021`
  UNION ALL
  SELECT * FROM `warm-agility-427707-f7.cyclistic_DA.May2021`
  UNION ALL
  SELECT * FROM `warm-agility-427707-f7.cyclistic_DA.Jun2021`
  UNION ALL
  SELECT * FROM `warm-agility-427707-f7.cyclistic_DA.Jul2021`
  UNION ALL
  SELECT * FROM `warm-agility-427707-f7.cyclistic_DA.Aug2021`
  UNION ALL
  SELECT * FROM `warm-agility-427707-f7.cyclistic_DA.Sep2021`
  UNION ALL
  SELECT * FROM `warm-agility-427707-f7.cyclistic_DA.Oct2021`
  UNION ALL
  SELECT * FROM `warm-agility-427707-f7.cyclistic_DA.Nov2021`
  UNION ALL
  SELECT * FROM `warm-agility-427707-f7.cyclistic_DA.Dec2021`
);
