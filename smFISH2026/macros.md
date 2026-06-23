# Automating FIJI with Macros

## References and Resources

  * [FIJI Macros](https://imagej.net/scripting/macro)
  * [IJM Language Programmer's Reference Guide](https://imagej.net/ij/docs/macro_reference_guide.pdf)

## What are macros?

Recall back to the start of this tutorial. I asked you to start the macro recorder. Let's return to this window (if yours is still open) and see what is there.

```{image} images/Screenshot2026-06-22at6-21-47PM.png
:alt: Screenshot of FIJI macro recorder
:width: 50 %
:align: center
```

The macro recorder converted all the clicking, selecting, and toggling into text.

Macros are ordered sequences of text-based commands that FIJI can implement in lieu of the graphical user interface (GUI). Macros are basically programs, scripts, or codes that are specific to FIJI. FIJI Macros are written in ImageJ Macro Language (IJM), a specialized language. However, macros can also be implemented in JavaScript and Python (Jython). The IJM language is very similar to other programming languages and is easy to use. 

A few characteristics that set it apart:

```


```

// Two forward slashes are comments

// Variables are specified with equals sign (=) and statements end in a semi-colon (;)
factor = 1024; 

// Messages are enclosed in quotes and can be concatenated with plus (+)
message = "Hello " + "World!"; 

// built in functions use parentheses to enclose arguments and options
newImage("My pretty new image", "8-bit black", 640, 480, 1);

// new functions can be created by the user
function closeImageByTitle(title) {
        selectWindow(title);
        close();
}

// Flow control works like many other languages

// if/else if/else flow control
if (is("binary")) {
        write("The current image is binary");
}
else {
        write("The current image is not binary");
}

// for loops are common
for (image = 1; image <= imageCount; image++) {
    selectImage(image);
    rename("image-" + image);
}

// while and do loops are also possible

```