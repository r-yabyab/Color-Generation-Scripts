(define (add-layers-test)

(let loop ((x 0))
(if (< x 900)
(begin

(gimp-image-insert-layer SF-DRAWABLE (car (gimp-file-load-layer 1 SF-DRAWABLE "\Desktop/SPL/batchn,/IMG_7182-0.JPG")) 0 1)
(gimp-image-insert-layer SF-DRAWABLE (car(gimp-file-load-layer 1 SF-DRAWABLE "\Desktop/SPL/batchn,/IMG_7182-0-blue-fix.png")) 0 1)
(gimp-image-insert-layer SF-DRAWABLE (car(gimp-file-load-layer 1 SF-DRAWABLE "\Desktop/SPL/batchn,/IMG_7182-0-transparent-white.png")) 0 1)
(gimp-image-insert-layer SF-DRAWABLE (car(gimp-file-load-layer 1 SF-DRAWABLE "\Desktop/SPL/batchn,/IMG_7182-0-yellow-fix.png")) 0 1)

(gimp-colorize (car (cdr (vector->list (cadr (gimp-image-get-layers SF-DRAWABLE))))) (random 360) (random 100) (random 30))
(gimp-colorize (car (cdr (cdr (vector->list (cadr (gimp-image-get-layers SF-DRAWABLE)))))) (random 360) (random 100) (random 30))
(gimp-colorize (car (cdr(cdr (cdr (vector->list (cadr (gimp-image-get-layers SF-DRAWABLE))))))) (random 360) (random 100) (random 30))
;(gimp-colorize (car (cdr(cdr(cdr (cdr (vector->list (cadr (gimp-image-get-layers SF-DRAWABLE)))))))) (random 360) (random 100) (random 30))

(gimp-layer-translate (car (cdr (vector->list (cadr (gimp-image-get-layers SF-DRAWABLE))))) x 0)
(gimp-layer-translate (car (cdr (cdr (vector->list (cadr (gimp-image-get-layers SF-DRAWABLE)))))) x 0)
(gimp-layer-translate (car (cdr(cdr (cdr (vector->list (cadr (gimp-image-get-layers SF-DRAWABLE))))))) x 0)
(gimp-layer-translate (car (cdr(cdr(cdr (cdr (vector->list (cadr (gimp-image-get-layers SF-DRAWABLE)))))))) x 0)

(loop (+ x 300) ) ) ) )

(gimp-displays-flush)
)

(script-fu-register
  "add-layers-test"
  "<Image>/Colors/addLayersTEST"
  "Change layer colors."
  "net"
  "net"
  "March 2024"
  "RGB*, GRAY*"
  SF-DRAWABLE   "Layer" 1
)