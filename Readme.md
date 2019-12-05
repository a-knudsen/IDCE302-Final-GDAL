# GDAL Exploration 
By Ahna Knudsen 

![](ppt/Copy_of_GDAL.jpg)

![](ppt/Copy_of_GDAL_1.jpg)

![](ppt/Copy_of_GDAL_2.jpg)

![](ppt/Copy_of_GDAL_3.jpg)

### Data must have spatial aspect.
Supported formats:
- **Raster:** GeoTiff, JPEG, Erdas Imagine, DTED, and more
- **Vector:** ESRI Shapefile, ESRI ArcSDE, ESRI FileGDB, KML, PostGIS, and more

## Uses of GDAL:
Coordinate system conversion, statistics, format conversion, geo operations, image merge, etc. 

Two interfaces: API or command line
### 1. GDAL API:
- Library with classes and functions
- Input and output of spatial data, as well as other functions including reprojection, resampling, stretching, and more.
### 2. GDAL Command Line (Terminal)
Common commands:
- ``` Gdalinfo ```: raster data and metadata querying 
- ``` Gdal_translate ```: raster data format conversion, clipping, scaling
- ``` Gdalwarp ```: raster data reprojection, resizing, clipping, and mosaicing 
- ``` Ogrinfo ```: vector data and metadata querying
- ``` Ogr2ogr ```: vector data format conversion, merging, reprojecting, clipping, etc

## Download Process:
- Attempted to download QGIS 
- Opened terminal 
- Downloaded GDAL: 
  - http://www.kyngchaos.com/software/frameworks/
- Check to make sure download worked 
  - ```echo ```
- Download spatial data

## Download Sample Data:
- Natural Earth: “Natural Earth II is a raster map dataset that portrays the world environment in an idealized manner with little human influence. “
  - https://www.naturalearthdata.com/downloads/10m-raster-data/10m-natural-earth-2/
- Beijing data: Advanced Vector class share
  - Raster and Vector (Powerlines, Great Wall of China, Wind Speeds, and DEM)
  
## Basic GDAL Functions:
- Move shapefiles to geopackage
- Merge shapefiles
 - ```Org2org```

## Takeaways:

## Suggestions:

## Links for Future Use with GDAL:
- Mailing list: ask questions and report issues http://lists.osgeo.org/mailman/listinfo/gdal-dev
- GitHub: report issues, (Bug Tracking), get current development version, contribute! http://github.com/OSGeo/GDAL
- Website to submit bugs:  https://trac.osgeo.org/gdal
- IRC Channel: real-time chat activities such as meetings and interactive debugging sessions. http://freenode.net/
- Code snippets: https://trac.osgeo.org/gdal/wiki/CodeSnippets
- Support site: http://www.gisinternals.com/

## Works Cited:
- https://gdal.org/
- http://ceholden.github.io/open-geo-tutorial/R/chapter_1_GDAL.html
- https://gdal.org/programs/index.html
- https://gdal.org/community.html#community
- https://trac.osgeo.org/gdal
- https://trac.osgeo.org/gdal/wiki/CodeSnippets
- https://sparkgeo.com/blog/gdal-ogr-clipping-hack/
- https://live.osgeo.org/en/quickstart/gdal_quickstart.html
- https://www.youtube.com/watch?v=K0FsemMG0fA
- https://macpaw.com/how-to/use-terminal-on-mac
- https://18f.gsa.gov/2015/03/03/how-to-use-github-and-the-terminal-a-guide/
- https://tilemill-project.github.io/tilemill/docs/guides/gdal/
- http://www.kyngchaos.com/software/frameworks/
- https://www.northrivergeographic.com/ogr2ogr-merge-shapefiles

### Questions?




