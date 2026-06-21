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
:width: 60 %
:align: center
```

---

## RS-FISH uses Raidal Symmetry, Gaussians, and Outlier Removal for Improved mRNA Spot Detection

Detecting and counting puncta within an image presents several challenges for any image-processing software. These are: 

  * Can we use a 3D image, or do we need to flatten it to 2D?
  * How can we resolve spots that are close together? Clusters?
  * The X and Y dimensions are captured at one resolution, the Z-dimension is captured at a different (poorer) resolution. This will impact what we select as a "point"
  * Out-of-focus light appears in many Z-stacks. How does this impact the algorithm?
  * How do we deal with background? 
  * How do we deal with multiple regions of interest in an image?
  * How will we process files in batch?

The RS-FISH Approach

  * 3D and 2D - ok
  * The **Detection of Gaussian** algorithm is used to identify spots and resolve spots that are close together (also, working in 3D help). 
     * **RANSAC** - This is SM-FISH's Remove Outlier function. The ideas is to improve accuracy.
     * **Multiconsensus RANSAC** - This computationally intensive Remove Outlier function that can more accurately resolve densely arranged spots.
  * **Anisotropy Coefficient** RS-FISH calculates this coefficient to account for the resolution differences between X, Y, and Z. This virtually corrects for the lower resolution and out-of-focus light in the Z-direction.
  * **Binary masks** can be applied to ignore background or select multiple regions-of-interest per image (2 or more embryos per image)
  * **Macros** are used to process all files in a directory in **batch** mode.

The RS-FISH Steps:

  1. Calculate Anisotropy Coefficient
  2. Detect and Count Spots
  3. Optionally - Filter spots using binary mask(s)

## Let's detect spots with smFISH

### Calculate Anisotropy Coefficient












