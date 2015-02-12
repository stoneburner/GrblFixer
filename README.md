# GrblFixer
Fixes Makercam generated .nc files for GRBL

truncates the way to precise gcode makercam creates

input:

```gcode
M3
G0 X5.1461928934010155 Y-0.22842639593908629
G1 Z-0.85 F800
G1 X22.223350253807105 Y-0.22842639593908629 F1500
G1 X27.223350253807105 Y-0.22842639593908629
```


result:

```gcode
M3
G0 X5.146 Y-0.228
G1 Z-0.85 F800
G1 X22.223 Y-0.228 F1500
G1 X27.223 Y-0.228
```

written in swift