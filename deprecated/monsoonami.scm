(define (script-fu-smooth-threshold image layer)
  (gimp-threshold layer 127 255)
  (plug-in-gauss 1 image layer 3 3 1)
  (gimp-levels layer HISTOGRAM-VALUE 95 160 1.0 0 255)
  (gimp-displays-flush)
)

(script-fu-register
  "script-fu-smooth-threshold"
  "<Image>/Colors/Smooth Threshold"
  "Threshold with smooth edges."
  "monsoonami"
  "monsoonami"
  "June 2012"
  "RGB*, GRAY*"
  SF-IMAGE      "Image" 0
  SF-DRAWABLE   "Layer" 0
)
