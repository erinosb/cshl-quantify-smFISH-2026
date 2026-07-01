# Intro to FIJI

## References and Resources

  * [About ImageJ](https://imagej.net/learn/)
  * [image.sc Forum](https://forum.image.sc/) - this is a user-friendly help forum.


---

```{image} images/fiji.svg
:alt: FIJI logo
:width: 20 %
:align: left
```

## What is FIJI?

FIJI (FIJI is Just Image J) is a version of the open source software ImageJ (and ImageJ2) that is distributed complete with a collection of user-generated Plugins.

Additional Plugins can be created by the community and installed as needed.

---

## Brief Overview of FIJI

### Quick FIJI tutorial - follow along

  * Open FIJI
  * Explore the menus


```{image} images/Screenshot2026-06-19at5-30-57AM.png
:alt: FIJI Menu Description
:width: 60 %
:align: center
```

  * Explore the toolbar. It contains tools, status, and search

```{image} images/fiji-main-window.png
:alt: FIJI toolbar depiction from https://imagej.net/learn/
:width: 80 %
:align: center
```

### Let's open a file

  * In your finder or explorer, locate the following file:
    * `~/260610_quantify_smFISH/01_raw_images/Spike_Fig6/230726_DG3913_19_R3D.dv`
    * This strain has full-length _lin-41_ 3'UTR
  * Drag and drop the file into the status bar to open
  * Click `OK`

```{image} images/Screenshot2026-06-23at6-03-03AM.png
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

Auto - Automatically adjusts the max/min to 0.35 brightness levels. If you open a file that is totally black, press Auto to start

Set - Synchronizes the brightness and contrast among multiple open images with the "Propatage to all other # channel images" option

```

---

## Optional Content

Watch this brief demonstration of some basic FIJI capabilities

  1. ` Image -> Stacks -> Z Project` to flatten Z-dimensions
  2. ` Image -> Transform -> Rotate ...` to rotate an image
  3. ` Image -> Color -> Split Channels ` to split the channels into individual files
  4. ` Image -> Color -> Merge Channels ` to merge channels and assign colors
  5. Using the toolbar, select ` Rectangle ` and draw a rectangle around your image to select a part of it
  6. ` Image -> Crop ` to crop your image
  7. ` Analyze -> Set Scale ` to set the scale of your pixels per microns
  8. ` Analyze -> Tools -> Scale Bar ... ` to add a 10 micron scale bar. Make sure to click "Hide text"
  0. `File -> Save As -> Tiff...` to save

Final product:


```{image} images/260623_Merge_MAX_230726_DG3913_19_R3D.png
:alt: A multi-color picture of a C. elegans embryo
:width: 60 %
:align: center
```


