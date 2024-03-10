(define (change-layer-color layer)      
  (gimp-colorize (car(vector->list (cadr (gimp-image-get-layers SF-DRAWABLE)))) (random 360) (random 100) 8)
  (gimp-colorize (cadr(vector->list (cadr (gimp-image-get-layers SF-DRAWABLE)))) (random 360) (random 100) 8)
  (gimp-displays-flush)
)

(script-fu-register
  "change-layer-color"
  "<Image>/Colors/changeCol"
  "Change layer colors."
  "net"
  "net"
  "March 2024"
  "RGB*, GRAY*"
  SF-DRAWABLE   "Layer" 1
)