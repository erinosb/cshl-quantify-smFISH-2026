# Extending FIJI With Plugins and Macros

## References and Resources

  * [ImageJ List of Extensions](https://imagej.net/list-of-extensions)
  * [FIJI Plugin Tutorial](https://imagej.net/plugins/)
  * [RS-FISH Instructions and Github](https://github.com/PreibischLab/RS-FISH/tree/master)
  * Bahry E, Breimann L, Zouinkhi M, Epstein L, Kolyvanov K, Mamrak N, King B, Long X, Harrington KIS, Lionnet T, Preibisch S. [RS-FISH: precise, interactive, fast, and scalable FISH spot detection.](https://www.nature.com/articles/s41592-022-01669-y). Nat Methods. 2022 Dec;19(12):1563-1567. Epub 2022 Nov 17. PMID: 36396787; PMCID: PMC9718671.
  * [image.sc Forum](https://forum.image.sc/)

---

## About Plugins

ImageJ/FIJI is an example of a community-driven, open architecture software ecosystem. Unlike Microsoft that is developed by a company, sold for a price, and generates a profit, ImageJ/FIJI is distributed on an open format (written in JAVA), distributed for free, and depends on the users to extend its functionality. Community members and users can add to ImageJ and distribute their add-ons as Plugins (also called Extensions). These are analogous to Packages in R or Python.

Let's explore the [ImageJ List of Plugins](https://imagej.net/list-of-extensions).

In general, Plugins are divided into four categories:

  1. Plugins that come with ImageJ (the most basic download)
  2. Plugins that come with FIJI
  3. Plugings that can be installed through `Update ... `
  4. Plugins that must be manually installed

Today, we will use the Radial Symmetry Plugin, also called RS-FISH. I tcan be installed through `Upate ...`

## Let's Download and Install RS-FISH

  * Go to `Help -> Update ... `
  * Click `Mange update sites`
  * Search for `radial symmetry`
  * Select the box to the left of `Radial Symmetry`
  * Click `Apply and Close`
  * Restart FIJI
  * Check your installation was successful. Go to the `Plugin` Menu. You should now see the RS-FISH Plugin listed

```{image} images/Screenshot2026-06-21at9-01-36AM.png
:alt: Screenshot of RS-FISH Plugin list
:width: 40 %
:align: center
```

---

## RS-FISH uses Raidal Symmetry, Gaussians, and Outlier Removal for Improved mRNA Spot Detection

Detecting and counting puncta within an image presents several challenges for any image-processing software. These are: 

  * Can we use a 3D image, or do we need to flatten it to 2D?
  * How can we resolve spots that are close together? Clusters?
  * The X and Y dimensions are captured at one resolution, the Z-dimension is captured at a different "resolution".
  * Out-of-focus light appears in many Z-stacks. How does this impact the algorithm?
  * How do we deal with background? 
  * How do we deal with multiple regions of interest in an image?
  * How will we process files in batch?

### The RS-FISH Approach

  * 3D and 2D - ok
  * The **Detection of Gaussian** algorithm is used to identify spots and resolve spots that are close together (also, working in 3D help). 
     * **RANSAC** - This is SM-FISH's Remove Outlier function. The ideas is to improve accuracy.
     * **Multiconsensus RANSAC** - This computationally intensive Remove Outlier function that can more accurately resolve densely arranged spots.
  * **Anisotropy Coefficient** RS-FISH calculates this coefficient to account for the resolution differences between X, Y, and Z. This virtually corrects for the lower resolution and out-of-focus light in the Z-direction.
  * **Binary masks** can be applied to ignore background or select multiple regions-of-interest per image (2 or more embryos per image)
  * **Macros** are used to process all files in a directory in **batch** mode.

### The RS-FISH Steps:

  1. Calculate Anisotropy Coefficient
  2. Determine optimal settings
  3. Detect and Count Spots
  4. Optionally - Filter spots using binary mask(s)

## Let's detect spots with smFISH

### 1. Let's Calculate Anisotropy Coefficient

Click along with me...

  * **Start Macro Recording**. FIJI will record all your clicks, settings, and toggles by recording them. This will convert pushing and clicking into text commands. This will be helpful later as you start to write your own macros.
    * Select the `Plugins` Menu -> `Macros` -> `Record`
  * Open `230505_DG3913_06_R3D.dv` if it is not open already. (hint - drat & drop into the status bar)
  * Select `Image` -> `Color` -> `Split Channels` to split the image into separate channels as RS-FISH can only work on one channel at a time.
  * Select `Plugins` -> `RS-FISH` -> `Tools` -> `Calculate Anisotropy Coefficient`.
  *  Select Image: `C1-230505_DG3913_06_R3D.dv` from the pull down menu. Select Detection Mode; `Gauss Fit`
  * Move the rectangle to a place within the embryo that has spots. Use the default Sigma and Threshold values (these typically look pretty good). 
    * You can adjust Sigma to account for larger or smaller spots or Threshold to account for darker or lighter contrast
    * For now, let's just use the defaults. Sigma: `1.50`. Threshold: `0.0050`
  * Select `Done`
  * You will receive a Anisotropy Coefficient. Write it down or export/save it (your README file is a good place).


## 2. Let's determine the optimal settings

### To determine the optimal settings, we'll use a Z-projection of Channel 1. 

Click along with me...

  * Close out all extra windows and panels
  * Drag and drop `230505_DG3913_06_R3D.dv` into the status bar to open
  * Split out channels. Select `Image` -> `Color` -> `Split Channels`
  * Select Channel 1. Select `Window` -> `C1-230505_DG3913_06_R3D.dv`
  * Z-Projection. Select `Image` -> `Stacks` -> `Z-Project`
  * Select start slice (1) and stop slice (51) and Projection Type: `Max Intensity`
  * Set levels. Select `Plugins` -> `RS-FISH` -> `RS-FISH`
  * Select the Channel 1 Image. Image: `C1-230505_DG3913_06_R3D.dv`. Set the values below:
    * Mode: `Interactive`
    * Anisotropy Coefficient: This should be your calculated coefficient. Double-check it.
    * Robust Fitting: RANSAC
    * Compute Max/Min intnsity from image: check
    * Use anisotropy coefficient for DoG: check
    * Spot Intensity: Linear Interpolation
    * Add Detections to ROI-Manager: check

```{image} images/Screenshot2026-06-21at4-14-44PM.png
:alt: Screenshot of RS-FISH settings
:width: 50 %
:align: center
```

  * Organize your windows so that you can see both the MAX-C1 window and the RANSAC preview window.
  * Place the rectangle within a region with mRNA spots
  * Zoom in and use the `hand` tool from the toolkit bar to scootch to a good spot
  * Toggle through `Sigma`, `Threshold`, `Support region radius`, `Inlier ratio`, `Max error`. Keep background subtraction off. 
  * Make some choices - what looks real to you?
  * Press any `Done`

```{image} images/Screenshot2026-06-21at4-18-48PM.png
:alt: Screenshot of RS-FISH options
:width: 50 %
:align: center
```

### Set the intensity threshold

Some low-intensity spots are not real. You can remove them if you like. 

  * Organize your windows so that you can see both the **MAX-C1** window and the **Intensity distribution** window
  * Click within the grey shaded plot to move the blue horizontal line
  * You will see some spots disappear. 
  * Make some choices - which do you think look real?

```{image} images/Screenshot2026-06-21at4-24-24PM.png
:alt: Screenshot of RS-FISH options
:width: 50 %
:align: center
```
















