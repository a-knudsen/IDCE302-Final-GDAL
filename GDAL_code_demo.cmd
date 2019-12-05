# Ahna Knudsen 
# GDAL Demo 
# December 5, 2019
# Check installation, move raster file to geopackage, and merge shapefiles

# did not work due to path error 
Ahnas-MacBook-Pro:~ ahnaknudsen$ ogr2ogr
-bash: ogr2ogr: command not found
Ahnas-MacBook-Pro:~ ahnaknudsen$ brew install gdal2
-bash: brew: command not found
Ahnas-MacBook-Pro:~ ahnaknudsen$ gdalinfo --version
-bash: gdalinfo: command not found
# fixed path error with echo  
Ahnas-MacBook-Pro:~ ahnaknudsen$ echo 'export PATH=/Library/Frameworks/GDAL.framework/Programs:$PATH' >> ~/.bash_profile
Ahnas-MacBook-Pro:~ ahnaknudsen$ source ~/.bash_profile
# check to make sure installed 
Ahnas-MacBook-Pro:~ ahnaknudsen$ gdalinfo --version
GDAL 2.4.2, released 2019/06/28


# check if gdal is working 
Ahnas-MacBook-Pro:NE2_LR_LC_SR_W ahnaknudsen$ gdal_translate
Usage: gdal_translate [--help-general] [--long-usage]
       [-ot {Byte/Int16/UInt16/UInt32/Int32/Float32/Float64/
             CInt16/CInt32/CFloat32/CFloat64}] [-strict]
       [-of format] [-b band] [-mask band] [-expand {gray|rgb|rgba}]
       [-outsize xsize[%]|0 ysize[%]|0] [-tr xres yres]
       [-r {nearest,bilinear,cubic,cubicspline,lanczos,average,mode}]
       [-unscale] [-scale[_bn] [src_min src_max [dst_min dst_max]]]* [-exponent[_bn] exp_val]*
       [-srcwin xoff yoff xsize ysize] [-epo] [-eco]
       [-projwin ulx uly lrx lry] [-projwin_srs srs_def]
       [-a_srs srs_def] [-a_ullr ulx uly lrx lry] [-a_nodata value]
       [-a_scale value] [-a_offset value]
       [-gcp pixel line easting northing [elevation]]*
       |-colorinterp{_bn} {red|green|blue|alpha|gray|undefined}]
       |-colorinterp {red|green|blue|alpha|gray|undefined},...]
       [-mo "META-TAG=VALUE"]* [-q] [-sds]
       [-co "NAME=VALUE"]* [-stats] [-norat]
       [-oo NAME=VALUE]*
       src_dataset dst_dataset

FAILURE: No source dataset specified.

# Move raster file to geopackage 
# raster file: NE2_LR_LC_SR_W.tif
# Geopackage: myNewGPKG.gpkg
# of = output format and co = creation option
# QUALITY = 100 means there will be no compression

Ahnas-MacBook-Pro:NE2_LR_LC_SR_W ahnaknudsen$ gdal_translate -of GPKG NE2_LR_LC_SR_W.tif myNewGPKG.gpkg -co QUALITY=100
Input file size is 16200, 8100
0...10...20...30...40...50...60...70...80...90...100 - done.

# Repeat with additional parameters 
# Creation option - append subdataset to existing geopackage
# Creation options: Raster_Table to remane raster table
Ahnas-MacBook-Pro:NE2_LR_LC_SR_W ahnaknudsen$ gdal_translate -of GPKG NE2_LR_LC_SR_W.tif myNewGPKG.gpkg -co QUALITY=100 -co APPEND_SUBDATASET=YES -co RASTER_TABLE=elevTable
Input file size is 16200, 8100
0...10...20...30...40...50...60...70...80...90...100 - done.



# Merging shape files
‘’’
format:
ogr2ogr -f ‘ESRI Shapefile’ merge.shp filename1.shp
ogr2ogr -f ‘ESRI Shapefile’ -update -append merge.shp filename2.shp -nln merge
‘’’
# create new shape file called “merge”
# then update and merge shapefiles into it
# shapefile names: study_area_boundary.shp and Counties_StudyArea.shp (polygons)
Ahnas-MacBook-Pro:Preprocessed_Data ahnaknudsen$ ogr2ogr -f 'ESRI Shapefile' merge.shp study_area_boundary.shp
Ahnas-MacBook-Pro:Preprocessed_Data ahnaknudsen$ ogr2ogr -f 'ESRI Shapefile' -update -append merge.shp Counties_StudyArea.shp -nln merge

# repeat
# shapefile names: GreatWall_Beijing.shp and Powerlines_Beijing.shp (lines)
Ahnas-MacBook-Pro:Preprocessed_Data ahnaknudsen$ ogr2ogr -f 'ESRI Shapefile' mergePowerWall.shp GreatWall_Beijing.shp
Ahnas-MacBook-Pro:Preprocessed_Data ahnaknudsen$ ogr2ogr -f 'ESRI Shapefile' -update -append mergePowerWall.shp Powerlines_Beijing.shp -nln merge

