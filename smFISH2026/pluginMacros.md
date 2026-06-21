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

Today, we will use the Radial Symmetry Plugin, also called RS-FISH.

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

## mRNA Spot Detection with RS-FISH 










