# Intro to FIJI

## References and Resources

  * [About ImageJ](https://imagej.net/learn/) - this is 
  * [image.sc Forum](https://forum.image.sc/) - this is a user-friendly help forum.

## What is FIJI?

FIJI (FIJI is Just Image J) is a version of the open source software ImageJ (and ImageJ2) that is distributed complete with a collection of user-generated Plugins.

Additional Plugins can be created by the community and installed as needed.

## Brief Overview of FIJI

### Quick FIJI tutorial - follow along

  * Open FIJI
  * Explore the menus
  * The toolbar contains tools, status, and search

### Let's open a file

  * In your finder or explorer, locate the following file:
    * `~/260610_quantify_smFISH/01_raw_images/Spike_Fig6/230505_DG3913_06_R3D.dv`
    * a strain containing a wild-type _lin-41_ construct and full _lin-41_ 3'UTR
  * Drag and drop the file into the status bar to open
  * Click `OK`

```{image} images/Screenshot2026-06-19at5.25.43AM.png
:alt: Screenshot of a FIJI
:width: 80 %
:align: center
```

  * **C** - toggles between the channels
    * C1 - Channel 1 - smFISH - Cy-5 - _set-3_ mRNA - a homogenous control
    * C2 - Channel 2 - smFISH - mCherry - _lin-41_ mRNA - our querry mRNA
    * C3 - Channel 3 - GFP - FITC - LIN-41::GFP (repressed at this stage)
    * C4 - Channel 4 - DNA - DAPI
  * **Z** - toggles between the Z-stacks
  * Slide the **C** and **Z** sliders to explore the image

### Let's adjust the brightness


```{Note}
Adjusting the brightness will not alter the underlying information within your file. It will change the way the image is displayed on your screen.
```

  * Adjust brightness by selecting from Menu Bar `Image -> Adjust -> Brigthness/Constrast`

```{image} images/Screenshot2026-06-19at5-29-41AM.png
:alt: Screenshot of a FIJI
:width: 80 %
:align: center
```

  * Set your **Z** to a middle section
  * Set your **C** to channel 1
  * Slide `Maximum` and `Minimum` sliders to explore how these alter the image
  * Slide `Brightness` and `Contrast` to explore how these alter the image

```{Note}
This will only change the brightness of the selected channel. Each channel will need to be adjusted individually
```

```{Tip}

Auto - if you open a file that is totally black. Press Auto to give you somewhere to start from

Set - use "Propatage to all other # channel images" to synchronize the brightness and contrast among multiple open images

```

{octicon}`mark-github` 


## Optional Content

Watch this brief demonstration of some basic FIJI capabilities

  * ` Image -> Stacks -> Z Project` to flatten Z-dimensions
  * ` Image -> Transform -> Rotate ...` to rotate an image
  * ` Image -> Color -> Split Channels ` to split the channels into individual files
  * ` Image -> Color -> Merge Channels ` to merge channels and assign colors
  * Using the toolbar, select ` Rectangle ` and draw a rectangle around your image to select a part of it
  * ` Image -> Crop ` to crop your image
  * ` Analyze -> Set Scale ` to set the scale of your pixels per microns
  * ` Analyze -> Tools -> Scale Bar ... ` to add a 10 micron scale bar. Make sure to click "Hide text"






