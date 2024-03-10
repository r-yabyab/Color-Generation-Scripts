(define (add-layers)

(let loop ((x 0) (y 0) (iteration 0))
  (if (< iteration 32)
      (begin
        (gimp-image-insert-layer SF-DRAWABLE (car (gimp-file-load-layer 1 SF-DRAWABLE "\Desktop/SPL/batchn,/IMG_7182-0.JPG")) 0 1)
        (gimp-image-insert-layer SF-DRAWABLE (car (gimp-file-load-layer 1 SF-DRAWABLE "\Desktop/SPL/batchn,/IMG_7182-0-blue-fix.png")) 0 1)
        (gimp-image-insert-layer SF-DRAWABLE (car (gimp-file-load-layer 1 SF-DRAWABLE "\Desktop/SPL/batchn,/IMG_7182-0-transparent-white.png")) 0 1)
        (gimp-image-insert-layer SF-DRAWABLE (car (gimp-file-load-layer 1 SF-DRAWABLE "\Desktop/SPL/batchn,/IMG_7182-0-yellow-fix.png")) 0 1)

        (gimp-colorize (car (cdr (vector->list (cadr (gimp-image-get-layers SF-DRAWABLE))))) (random 360) (random 100) (- (random 121) 100))
        (gimp-colorize (car (cdr (cdr (vector->list (cadr (gimp-image-get-layers SF-DRAWABLE)))))) (random 360) (random 100) (- (random 121) 100))
        (gimp-colorize (car (cdr (cdr (cdr (vector->list (cadr (gimp-image-get-layers SF-DRAWABLE))))))) (random 360) (random 100) (- (random 121) 100))

        (gimp-layer-translate (car (cdr (vector->list (cadr (gimp-image-get-layers SF-DRAWABLE))))) x y)
        (gimp-layer-translate (car (cdr (cdr (vector->list (cadr (gimp-image-get-layers SF-DRAWABLE)))))) x y)
        (gimp-layer-translate (car (cdr (cdr (cdr (vector->list (cadr (gimp-image-get-layers SF-DRAWABLE))))))) x y)
        (gimp-layer-translate (car (cdr (cdr (cdr (cdr (vector->list (cadr (gimp-image-get-layers SF-DRAWABLE)))))))) x y)

        (loop (if (= (remainder iteration 4) 3) 0 (+ x 300))
              (if (= (remainder iteration 4) 3) (+ y 375) y)
              (+ iteration 1))
      )
  )
)

(gimp-image-lower-layer-to-bottom SF-DRAWABLE (car(vector->list (cadr (gimp-image-get-layers SF-DRAWABLE)))))

(gimp-displays-flush)
)

(script-fu-register
  "add-layers"
  "<Image>/Colors/DupelicateAndColor"
  "Duplicate and change colors."
  "net"
  "net"
  "March 2024"
  "RGB*, GRAY*"
  SF-DRAWABLE   "Layer" 1
)