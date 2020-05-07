run("Stack to Hyperstack...", "order=xyczt(default) channels=2 slices=1 frames=1 display=Grayscale");
rename("Hyperstack");
run("Duplicate...", "duplicate channels=1");
selectWindow("Hyperstack-1");
rename("Mask");
run("Auto Threshold", "method=Default black");
run("Make Binary");
run("Dilate");
run("Erode");
run("Dilate");
run("Dilate");
run("Dilate");
run("Divide...", "value=255");
imageCalculator("Multiply create stack", "Hyperstack","Mask");
selectWindow("Result of Hyperstack")
run("Next Slice [>]");
run("Enhance Contrast", "saturated=0.35");
selectWindow("Mask");
run("Enhance Contrast", "saturated=0.35");
run("Tile");