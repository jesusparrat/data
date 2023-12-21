SELECT name, year,

CASE
	WHEN na_sales > eu_sales AND na_sales > jp_sales THEN 'NA'
    WHEN eu_sales > na_sales AND eu_sales > jp_sales THEN 'EU'
    WHEN jp_sales > eu_sales AND jp_sales > na_sales THEN 'JP'
    
END as Best_selling_region

FROM videogames_games

WHERE platform_code = 'DS'
ORDER BY year