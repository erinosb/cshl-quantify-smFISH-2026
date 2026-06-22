# Quantifying smFISH, 2026

Welcome to the `cshl-quantify-smFISH-2026` book.

We will explore two ways of counting mRNA molecules from smFISH microscopy images. In the first example, we will use FIJI and FIJI macros that require only modest coding skills. In the second example, we will use `big-fish` and `wormlib` that require greater coding but also allow for greater extensibility, performance, and speed.

Images of _C. elegans_ early embryos will be used as input. Tables of mRNA spot counts will be captured as output. Tables can be used to plot mRNA abundance, mRNA co-localization in relation to other markers, or clustering.

## Required Software

Please try to install the listed software on your laptop before this session. If you have questions, we can install the software together.

  * **FIJI** – please install FIJI from [FIJI](https://imagej.net/software/fiji/downloads)
    * Choose from “Latest downloads”
    * Mac users – if your Mac is running on an M1 – M4 Mac silicon chip, select -> macOS -> arm64. If you are using a MAC with an intel chip, select -> macOS -> x86-64.
    * If you are unsure, I will walk you through this process
    * All other software installations will happen in the course
  
## Session Outline (~ 90 minutes)

| Time | Topic | Outline |
| --- | --- | --- |
| ~15 min | smFISH best practices | an overview of smFISH probe design, hybridization, image capture, and common pitfalls |
| ~15 min | image file types and project organization | a survey of common microscopy file formats (.nd2, .tif, .dv); best practices in setting up a project folder; writing a README file |
| ~30 min | FIJI mRNA spot detection | practicum on FIJI; recording, writing, running, and interacting with FIJI macros; mRNA spot detection in FIJI | 
| ~15 min | big-fish mRNA spot detection | optional installation of big-fish; demonstration of mRNA spot detection using big-fish | 
| ~15 min | options for downstream analysis | quick suggestions for downstream applications such as blastomere identification, marker co-localization, plotting, and high-performance computing | 


## Learning Objectives 

By the end of this activity, students will be able to:

  - Learn best practices for conducting a computational analysis project
  - Use FIJI to open image files and explore their basic features
  - Use RS-FISH quantify perform smFISH mRNA spot detection on _C. elegans_ embryo image files
  - Use FIJI macros to automate basic FIJI workflows
  - Understand alternative methods such as fish-quant v2 (Big-FISH) and wormLib
  - Envision how big-fish and wormLib could be used for a wide array of downstream applications such as embryo identification and co-localization.

## Expected Results

At the end of this session, students will have hands-on experience working with image files in FIJI. Students will have FIJI and the RS-FISH package installed on their local computers. Students will have generated output files that tabulate the number of mRNA spots detected in each input image file by RS-FISH (implemented in FIJI). Key parameters and logfiles will also be saved. Demonstration scripts will be included to show how the output information can be plotted.

A demonstration of fish-quant v2 (Big-FISH) and wormLib will provide a more observational experience for students to illustrate how the different mRNA spot detection approaches compare in their implementation, complexity, and effectiveness.

## Demo Dataset

As a demonstration of smFISH spot detection, we will use 8x image files. These images were captured from 


## Activities

- [Starting a computational project](start.md)
- [Welcome to FIJI](fijiIntro.md)
- [Extending FIJI with Plugins](plugins.md) 
- [Automating FIJI with Macros](macros.md) 
- [Alternatives to FIJI: Big-FISH and wormLib](alternatives.md)
- [Final Thoughts and Resources](resources.md)


## About this site

This book is built with Jupyter Book and deployed to GitHub Pages. 

