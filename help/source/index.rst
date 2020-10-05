.. VolumeCalculationTool documentation master file, created by
   sphinx-quickstart on Sun Feb 12 17:11:03 2012.
   You can adapt this file completely to your liking, but it should at least
   contain the root `toctree` directive.

Volume Calculation Tool Documentation
============================================

.. toctree::
   :maxdepth: 2

Plugin Purpose
..............

The VolumeCalculationTool allows for easy calculation of the volume inside multiple polygons based on a DEM height layer. If you are in need of precise measurements the tooling provided by GRASS should be used, as by the nature of raster layers and QGIS plugins the calculations are only approximations.

In order to use the tool the following data needs to be available:

* A raster layer, usually denoting height.
* A vector layer, which must contain one or more polygons.
* Both layers must agree on their coordinate system, both layers must overlap,both layers must use meters as units.
* If the volume is to be set for each polygon then the vector layer must be editable. 

Should all of the above be true then the plugin will calculate for each polygon the volume that is defined by its extend and the underlying raster layer. Additional options and settings are available and will be explained below.

GUI Overview And Usage Notes
............................

TODO PIC

* The plugin only rechecks the available layers on startup, therefore if you add new layers while the plugin is open you need to restart the plugin in order to use these layers.
* The ``Field Name`` text boxes denote the name of the attributes that are added to the polygons of the vector layer, if the option for this is set. 
* If you run the calculation again, the field names as set are checked and if they already exist are updated and the old value is discarded. Therefore if you want to keep a previous volume entry you need to use a new and unused attribute name.
* The log is not saved between plugin sessions i.e. once the plugin is closed the log is discarded. 
* The log prints out for each run a summary of the settings and input used as well as the results with the local time given as a way to differntiate between runs.
* As the ``accurate approximation`` can take quite some time the process can be canceled (Cancel button) and any results will be discarded. This is not possible for the simple mean value method.
* The default sampling step size is set as the double of the used raster layer resolution.


Concepts
........

**Base Level Height**

This value denotes the height from which the volume should measured i.e. the "ground" level around the polygon (volume) in question. In terms of volume calculation this value is subtracted from the heights sampled inside the polygon as this is the "real" elevation (depression) between the ground and the elevated (or depressed) area inside the polygon. There are four options as to how the base level is calculated.

* Approximate the ground level around the taking the average value of all vertices that define the polygon.
* Use the lowest value of all the vertices of the polygon as the base level.
* Use a second raster layer which is then interpreted as representing the base level.
* Manually enter the base level.

**Type of Volume Calculation**

There are two methods of volume calculation available:

* "Simple mean value" is quick but can lead to wrong results depending on the layers and polygons used. 
* "Accurate approximation" is slower but there are more options available for fine grained control over the calculation. Additionally, this method is a good approximation in all cases regardless of input.

**"Simple mean value"**

Mathematically this method is an application of the mean value theorem for integrals. Assuming the (height) function defined by the raster layer is smooth and always positive then the average of its function values i.e. the pixel average of the height inside of the polygon multiplied by the area of the polygon is equivalent to the volume. Note that the first assumption never holds as all rasters are by defintion quantized and the second may not hold depending on many factors therefore the method can lead to false results. Additionally, there is no fine grained control over the type of volume one may want, but the method is fast and simple as it uses the zonal statistics processing plugin to calculate the mean.

**"Accurate approximation"** 

Mathematically this method is essentially the Riemann sum of the (height) function as defined by the raster layer i.e. the polygon is divided into small prisms whose width (x) and length (y) is defined by the step size parameters. The height of one such prism is the sampled value from the raster layer at the centroid of the prism. Essentially, a bounding box is created around the polygon which is then filled with prisms of the given size, then each prism's centroid is checked whether it is inside the polygon and, if that is the case, added to the volume. In theory this method will become more accurate the smaller the step size becomes. However, due to how it is implemented and how raster layers work this may not be always true. There are two important notes and issues one needs to be aware of when using this method:

* The "slicing" of the polygon is not alligned with the raster layer, which can lead in some cases to substantial inaccuracies.
* Raster layers have a set resolution, which means at a certian point (even with the rasters being misaligned) there is no point in further decreasing the step size as the raster does not give any additional information.

There are three methods one can count these prisms, which all depend on the base level:

* "Count both, above and below", this adds all prisms that are above the base  line together into one volume which is by default called V_above. All prisms that are below the base line are added together into a field denoted as V_blow. 
* "Count only above", this disregards all prisms whose sampled raster value is below the base line.
* "Count only below", same as above but disregards all prisms whose sampled raster value is above the base line.

Errors and Other Issues
.......................

There are many possible inputs and options, therefore errors and issues are to be expected, some errors are caught by the plugin but should this not be the case look over the below points which may be a source of error.

* Close the plugin and restart. Make sure you do not have multiple windows of the plugin open at the same time. 
* Make sure all layers are not currently being edited by you or other plugins and make sure they are editable.
* Check the CRS of the layers and their units.
* Check the vector layer and make sure it ONLY contains polygons.
* Check the field name you have used, some formats have trouble with special characters, by default the field is limited to 8 characters as shapefile does not cope well with larger field names.

Should you have checked all of that and still have troubles, open an issue on github with your error message and input options. We will try and help you if 
time permitts.
