(define (change-layer-color image layer)
  (let* (
       (image (car (gimp-image-list)))
       (define layer1-name "IMG_7182-0-transparent-white.png")
       (define layer2-name "IMG_7182-0-transparent-blue.png")
       (new-color1 '(255 0 0)) ; Replace with your desired color values
       (new-color2 '(0 0 255)) ; Replace with your desired color values
       ))
  ; (change-layer-color image layer1-name new-color1)
  ; (change-layer-color image layer2-name new-color2)
  (gimp-colorize layer1-name 281 100 10)
  (gimp-colorize layer2-name 281 100 10)
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
  SF-IMAGE      "Image" 0
  SF-DRAWABLE   "Layer" 0
)

;list all layer ids
;(cadr (gimp-image-get-layers 2))
;change color
;(gimp-colorize 13 281 10 10)
;(gimp-colorize 13 (random 360) (random 100) 0)
;(gimp-colorize 10 (random 360) (random 100) 0)

;(define (changecol)
;(gimp-colorize 13 (random 360) (random 100) 0)
;(gimp-colorize 10 (random 360) (random 100) 0)
;)

;saturation and brightness may go to black and not change color anymore