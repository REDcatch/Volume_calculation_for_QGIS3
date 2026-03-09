<!DOCTYPE qgis PUBLIC 'http://mrcc.com/qgis.dtd' 'SYSTEM'>
<qgis autoRefreshTime="0" minScale="1e+08" hasScaleBasedVisibilityFlag="0" styleCategories="AllStyleCategories" autoRefreshMode="Disabled" maxScale="0">
 <flags>
  <Identifiable>1</Identifiable>
  <Removable>1</Removable>
  <Searchable>1</Searchable>
  <Private>0</Private>
 </flags>
 <customproperties>
  <Option type="Map">
   <Option value="Value" name="identify/format" type="QString"/>
  </Option>
 </customproperties>
 <pipe>
  <provider>
   <resampling zoomedOutResamplingMethod="nearestNeighbour" enabled="false" zoomedInResamplingMethod="nearestNeighbour" maxOversampling="2"/>
  </provider>
  <rasterrenderer band="1" alphaBand="-1" nodataColor="" opacity="0.8" type="singlebandpseudocolor" classificationMax="__CLASS_MAX__" classificationMin="__CLASS_MIN__">
   <minMaxOrigin>
    <limits>None</limits>
    <extent>WholeRaster</extent>
    <statAccuracy>Estimated</statAccuracy>
    <cumulativeCutLower>0.02</cumulativeCutLower>
    <cumulativeCutUpper>0.98</cumulativeCutUpper>
    <stdDevFactor>2</stdDevFactor>
   </minMaxOrigin>
   <rastershader>
    <colorrampshader clip="0" maximumValue="__CLASS_MAX__" classificationMode="2" minimumValue="__CLASS_MIN__" colorRampType="INTERPOLATED" labelPrecision="1">
     <colorramp name="[source]" type="gradient">
      <Option type="Map">
       <Option value="166,97,26,255,rgb:0.6509804,0.3803922,0.1019608,1" name="color1" type="QString"/>
       <Option value="5,48,97,255,rgb:0.0196078,0.1882353,0.3803922,1" name="color2" type="QString"/>
       <Option value="ccw" name="direction" type="QString"/>
       <Option value="0" name="discrete" type="QString"/>
       <Option value="gradient" name="rampType" type="QString"/>
       <Option value="rgb" name="spec" type="QString"/>
       <Option value="0.125;195,146,75,255,rgb:0.7647059,0.5725490,0.2941176,1;rgb;ccw:0.25;223,194,125,255,rgb:0.8745098,0.7607843,0.4901961,1;rgb;ccw:0.375;234,220,185,255,rgb:0.9176471,0.8627451,0.7254902,1;rgb;ccw:0.5;245,245,245,0,rgb:0.9607843,0.9607843,0.9607843,0;rgb;ccw:0.625;178,205,230,255,rgb:0.6980392,0.8039216,0.9019608,1;rgb;ccw:0.75;128,170,213,255,rgb:0.5019608,0.6666667,0.8352941,1;rgb;ccw:0.875;65,110,188,255,rgb:0.2549020,0.4313725,0.7372549,1;rgb;ccw" name="stops" type="QString"/>
      </Option>
     </colorramp>
     <item value="__MIN__" color="#a6611a" alpha="255" label="__MIN__"/>
     <item value="__NEG_75__" color="#c3924b" alpha="255" label="__NEG_75__"/>
     <item value="__NEG_50__" color="#dfc27d" alpha="255" label="__NEG_50__"/>
     <item value="__NEG_25__" color="#eadcb9" alpha="255" label="__NEG_25__"/>
     <item value="__ZERO__" color="#f5f5f5" alpha="0" label="__ZERO__"/>
     <item value="__POS_25__" color="#b2cde6" alpha="255" label="__POS_25__"/>
     <item value="__POS_50__" color="#80aad5" alpha="255" label="__POS_50__"/>
     <item value="__POS_75__" color="#416ebc" alpha="255" label="__POS_75__"/>
     <item value="__MAX__" color="#053061" alpha="255" label="__MAX__"/>
     <rampLegendSettings prefix="" maximumLabel="" orientation="2" suffix="" useContinuousLegend="1" minimumLabel="" direction="0">
      <numericFormat id="basic">
       <Option type="Map">
        <Option value="1" name="decimals" type="int"/>
        <Option value="0" name="rounding_type" type="int"/>
        <Option value="false" name="show_plus" type="bool"/>
        <Option value="true" name="show_thousand_separator" type="bool"/>
        <Option value="false" name="show_trailing_zeros" type="bool"/>
       </Option>
      </numericFormat>
     </rampLegendSettings>
    </colorrampshader>
   </rastershader>
  </rasterrenderer>
  <brightnesscontrast brightness="0" gamma="1" contrast="0"/>
  <huesaturation grayscaleMode="0" colorizeRed="255" invertColors="0" colorizeBlue="128" colorizeOn="0" colorizeStrength="100" colorizeGreen="128" saturation="0"/>
  <rasterresampler maxOversampling="2"/>
  <resamplingStage>resamplingFilter</resamplingStage>
 </pipe>
 <blendMode>0</blendMode>
</qgis>
