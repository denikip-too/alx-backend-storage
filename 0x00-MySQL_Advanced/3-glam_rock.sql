-- list all bands with Glam rock as their main style ranked by their longevity
SELECT band_name AS band_name, split-formed AS lifespan FROM metal_bands WHERE split='Glam rock' ORDER BY split-formed DESC;
