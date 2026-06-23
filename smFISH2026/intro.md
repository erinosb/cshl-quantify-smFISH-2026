# Quantifying smFISH, 2026

Welcome to the `cshl-quantify-smFISH-2026` book.

We will explore FIJI, an open source resource for exploring and quantifying images. We will use RS-FISH, a user-contributed FIJI Plugin that extends FIJI's basic function to quantify the number of smFISH mRNA spots in an image. We will use FIJI macros to automate the spot detection process across a series of images. Finally, I will explain how command line tools like `Big-FISH` and `wormlib` compare. 

Images of _C. elegans_ early embryos will be used as input. Tables of mRNA spot counts will be captured as output. Tables can be used to plot mRNA abundance, mRNA co-localization in relation to other markers, or clustering.

## Required Software

Please try to install FIJI on your laptop before this session. 

  * **FIJI** – please install FIJI from [FIJI](https://imagej.net/software/fiji/downloads)
    * Choose from “Latest downloads”
    * Mac users – if your Mac is running on an M1 – M4 Mac silicon chip, select -> macOS -> arm64. If you are using a MAC with an intel chip, select -> macOS -> x86-64.
    * If you are unsure, I will walk you through this process
    * All other software installations will happen in the course
  
## Session Outline (~ 90 minutes)

| Time | Topic | Outline |
| --- | --- | --- |
| ~15 min | intro to computational projects | introduction, best practices, and common pitfalls |
| ~20 min | intro to FIJI | Navigating the software, a tour of basic functions |
| ~30 min | extending FIJI with plugins | practicum on mRNA spot detection in FIJI using the RS-FISH plugin | 
| ~15 min | automating FIJI with macros | practicum on batch processing images in FIJI using macros | 
| ~10 min | alternatives to FIJI | bonus content on big-fish and wormLib | 


## Learning Objectives 

By the end of this activity, students will be able to:

  - Learn best practices for conducting a computational analysis project
  - Use FIJI to open image files and explore their basic features
  - Load FIJI Plugins
  - Use RS-FISH quantify perform smFISH mRNA spot detection on _C. elegans_ embryo image files
  - Use FIJI macros to automate basic FIJI workflows
  - Have awareness of alternative methods such as fish-quant v2 (Big-FISH) and wormLib

## Expected Results

At the end of this session, students will have hands-on experience working with image files in FIJI. Students will have FIJI and the RS-FISH plugin installed on their local computers. Students will have generated output files that tabulate the number of mRNA spots detected in each input image file by RS-FISH (implemented in FIJI). Key parameters and logfiles will also be saved. Demonstration scripts will be included to show how the output information can be plotted.

Bonus content on fish-quant v2 (Big-FISH) and wormLib will provided to illustrate how the different mRNA spot detection approaches compare in their implementation, complexity, and effectiveness.

## Demo Dataset

As a demonstration of smFISH spot detection, we will use 8x image files. These images were captured in our recent study Spike et al., 2026. In this paper, we explored the _lin-41_ mRNA, a transcript that promotes oocyte maturation. LIN-41 protein and _lin-41_ mRNA undergo rapid decay after fertilization.  

```{image} images/Screenshot2026-06-23at5-07-35AM.png
:alt: slide of LIN-41 and SPN-4 expression
:width: 80 %
:align: center
```

To test how _lin-41_ mRNA decay is regulated, we conducted a 3'UTR deletion analysis on the _lin-41_ 3'UTR. As part of this study, we showed that a key Fox sequence motif in _lin-41_ mRNA's 3'UTR's is required for its decay and is recognized by the RNA Binding Protein SPN-4. Here is the mutational plan: 

```{image} images/Screenshot2026-06-23at5-09-05 AM.png
:alt: slide of LIN-41 and SPN-4 expression
:width: 80 %
:align: center
```

Today, we will focus on these two strains used in the study as a demonstration:

| Strain | Deletion | Description | Phenotype |
| DG3913 | no deletion | _gfp::lin-41::full-3'UTR_ | rapid decay, low _lin-41_ levels | 
| DG5398 | medium Fox deletion (tn2078) | _gfp::lin-41::3'UTR-($\Delta$777-1045)_ | no decay, high _lin-41_ levels | 

For more information, please see our manuscript:

Spike CA, Parker DM, Tsukamoto T, Torres Mangual N, Tsukamoto EC, Coleman K, Gearhart MD, Greenstein D, Osborne Nishimura E. [The SPN-4 Rbfox RNA-binding protein selects maternal mRNAs for CCR4-NOT-dependent clearance in early _Caenorhabditis elegans_ embryos.](https://pubmed.ncbi.nlm.nih.gov/42226709/) Development. 2026 Jun 1;153(11):dev205295. doi: 10.1242/dev.205295. Epub 2026 Jun 4. PMID: 42226709.


## Activities

- [Starting a computational project](start.md)
- [Welcome to FIJI](fijiIntro.md)
- [Extending FIJI with Plugins](plugins.md) 
- [Automating FIJI with Macros](macros.md) 
- [Alternatives to FIJI: Big-FISH and wormLib](alternatives.md)
- [Final Thoughts and Resources](resources.md)


## About this site

This book is built with Jupyter Book and deployed to GitHub Pages. 

