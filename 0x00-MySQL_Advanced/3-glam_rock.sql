--  lists all bands with Glam rock as their main style, ranked by their longevity
SELECT
    band_name,
    (DATEDIFF(split, formed) / 365) AS lifespan
FROM metal_bands
WHERE main_style = 'Glam Rock'
ORDER BY lifespan DESC;