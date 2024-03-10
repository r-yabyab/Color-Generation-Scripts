(define (add-layers-bright)

(let loop ((x 0) (y 0) (iteration 0))
  (if (< iteration 50)
      (begin
        (gimp-image-insert-layer SF-DRAWABLE (car (gimp-file-load-layer 1 SF-DRAWABLE "\Desktop/SPL/batchn,/IMG_7182-0-transparent.png")) 0 1)
        (gimp-image-insert-layer SF-DRAWABLE (car (gimp-file-load-layer 1 SF-DRAWABLE "\Desktop/SPL/batchn,/IMG_7182-0-transparent-blue.png")) 0 1)
        (gimp-image-insert-layer SF-DRAWABLE (car (gimp-file-load-layer 1 SF-DRAWABLE "\Desktop/SPL/batchn,/IMG_7182-0-transparent-white.png")) 0 1)
        (gimp-image-insert-layer SF-DRAWABLE (car (gimp-file-load-layer 1 SF-DRAWABLE "\Desktop/SPL/batchn,/IMG_7182-0-transparent-yellow.png")) 0 1)

        (gimp-colorize (car (cdr (vector->list (cadr (gimp-image-get-layers SF-DRAWABLE))))) (random 360) (random 100) (random 100))
        (gimp-colorize (car (cdr (cdr (vector->list (cadr (gimp-image-get-layers SF-DRAWABLE)))))) (random 360) (random 100) (random 100))
        (gimp-colorize (car (cdr (cdr (cdr (vector->list (cadr (gimp-image-get-layers SF-DRAWABLE))))))) (random 360) (random 100) (random 100))

        (gimp-layer-translate (car (cdr (vector->list (cadr (gimp-image-get-layers SF-DRAWABLE))))) x y)
        (gimp-layer-translate (car (cdr (cdr (vector->list (cadr (gimp-image-get-layers SF-DRAWABLE)))))) x y)
        (gimp-layer-translate (car (cdr (cdr (cdr (vector->list (cadr (gimp-image-get-layers SF-DRAWABLE))))))) x y)
        (gimp-layer-translate (car (cdr (cdr (cdr (cdr (vector->list (cadr (gimp-image-get-layers SF-DRAWABLE)))))))) x y)

        ;(loop (if (= (remainder iteration 4) 3) 0 (+ x 200))
        ;      (if (= (remainder iteration 4) 3) (+ y 375) y)
        ;      (+ iteration 1))
        (loop (if (= (remainder iteration 10) 9) 0 (+ x 200))
              (if (= (remainder iteration 10) 9) (+ y 350) y)
              (+ iteration 1))

      )
  )
)

(gimp-image-lower-layer-to-bottom SF-DRAWABLE (car(vector->list (cadr (gimp-image-get-layers SF-DRAWABLE)))))

(gimp-displays-flush)
)

(script-fu-register
  "add-layers-bright"
  "<Image>/Colors/DupelicateAndColorBright"
  "Duplicate and change colors bright."
  "net"
  "net"
  "March 2024"
  "RGB*, GRAY*"
  SF-DRAWABLE   "Layer" 1
)