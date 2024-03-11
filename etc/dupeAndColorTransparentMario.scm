(define (add-layers-transparent-mario)

(let loop ((x 0) (y 0) (iteration 0))
  (if (< iteration 30)
      (begin
        (gimp-image-insert-layer SF-DRAWABLE (car (gimp-file-load-layer 1 SF-DRAWABLE "\Desktop/SPL/batchsm,/hero-header-layer-3.png")) 0 1)
        (gimp-image-insert-layer SF-DRAWABLE (car (gimp-file-load-layer 1 SF-DRAWABLE "\Desktop/SPL/batchsm,/hero-header-layer-3-blue-flower.png")) 0 1)
        (gimp-image-insert-layer SF-DRAWABLE (car (gimp-file-load-layer 1 SF-DRAWABLE "\Desktop/SPL/batchsm,/hero-header-layer-3-blue.png")) 0 1)
        (gimp-image-insert-layer SF-DRAWABLE (car (gimp-file-load-layer 1 SF-DRAWABLE "\Desktop/SPL/batchsm,/hero-header-layer-3-flower-eye.png")) 0 1)
        (gimp-image-insert-layer SF-DRAWABLE (car (gimp-file-load-layer 1 SF-DRAWABLE "\Desktop/SPL/batchsm,/hero-header-layer-3-green-flower.png")) 0 1)
        (gimp-image-insert-layer SF-DRAWABLE (car (gimp-file-load-layer 1 SF-DRAWABLE "\Desktop/SPL/batchsm,/hero-header-layer-3-red.png")) 0 1)
        (gimp-image-insert-layer SF-DRAWABLE (car (gimp-file-load-layer 1 SF-DRAWABLE "\Desktop/SPL/batchsm,/hero-header-layer-3-white-ground-shade.png")) 0 1)
        (gimp-image-insert-layer SF-DRAWABLE (car (gimp-file-load-layer 1 SF-DRAWABLE "\Desktop/SPL/batchsm,/hero-header-layer-3-white-hands.png")) 0 1)
        (gimp-image-insert-layer SF-DRAWABLE (car (gimp-file-load-layer 1 SF-DRAWABLE "\Desktop/SPL/batchsm,/hero-header-layer-3-yellow-button.png")) 0 1)

        (gimp-colorize (car (cdr (vector->list (cadr (gimp-image-get-layers SF-DRAWABLE))))) (random 360) (random 100) (- (random 121) 100))
        (gimp-colorize (car (cdr (cdr (vector->list (cadr (gimp-image-get-layers SF-DRAWABLE)))))) (random 360) (random 100) (- (random 121) 100))
        (gimp-colorize (car (cdr (cdr (cdr (vector->list (cadr (gimp-image-get-layers SF-DRAWABLE))))))) (random 360) (random 100) (- (random 121) 100))
        (gimp-colorize (car (cdr (cdr (cdr (cdr (vector->list (cadr (gimp-image-get-layers SF-DRAWABLE)))))))) (random 360) (random 100) (- (random 121) 100))
        (gimp-colorize (car (cdr (cdr (cdr (cdr (cdr (vector->list (cadr (gimp-image-get-layers SF-DRAWABLE))))))))) (random 360) (random 100) (- (random 121) 100))
        (gimp-colorize (car (cdr (cdr (cdr (cdr (cdr (cdr (vector->list (cadr (gimp-image-get-layers SF-DRAWABLE)))))))))) (random 360) (random 100) (- (random 121) 100))
        (gimp-colorize (car (cdr (cdr (cdr (cdr (cdr (cdr (cdr (vector->list (cadr (gimp-image-get-layers SF-DRAWABLE))))))))))) (random 360) (random 100) (- (random 121) 100))
        (gimp-colorize (car (cdr (cdr (cdr (cdr (cdr (cdr (cdr (cdr (vector->list (cadr (gimp-image-get-layers SF-DRAWABLE)))))))))))) (random 360) (random 100) (- (random 121) 100))

        (gimp-layer-translate (car (cdr (vector->list (cadr (gimp-image-get-layers SF-DRAWABLE))))) x y)
        (gimp-layer-translate (car (cdr (cdr (vector->list (cadr (gimp-image-get-layers SF-DRAWABLE)))))) x y)
        (gimp-layer-translate (car (cdr (cdr (cdr (vector->list (cadr (gimp-image-get-layers SF-DRAWABLE))))))) x y)
        (gimp-layer-translate (car (cdr (cdr (cdr (cdr (vector->list (cadr (gimp-image-get-layers SF-DRAWABLE)))))))) x y)
        (gimp-layer-translate (car (cdr (cdr (cdr (cdr (cdr (vector->list (cadr (gimp-image-get-layers SF-DRAWABLE))))))))) x y)
        (gimp-layer-translate (car (cdr (cdr (cdr (cdr (cdr (cdr (vector->list (cadr (gimp-image-get-layers SF-DRAWABLE)))))))))) x y)
        (gimp-layer-translate (car (cdr (cdr (cdr (cdr (cdr (cdr (cdr (vector->list (cadr (gimp-image-get-layers SF-DRAWABLE))))))))))) x y)
        (gimp-layer-translate (car (cdr (cdr (cdr (cdr (cdr (cdr (cdr (cdr (vector->list (cadr (gimp-image-get-layers SF-DRAWABLE)))))))))))) x y)
        (gimp-layer-translate (car (cdr (cdr (cdr (cdr (cdr (cdr (cdr (cdr (cdr (vector->list (cadr (gimp-image-get-layers SF-DRAWABLE))))))))))))) x y)

        ;(loop (if (= (remainder iteration 4) 3) 0 (+ x 250))
        ;      (if (= (remainder iteration 4) 3) (+ y 475) y)
        ;      (+ iteration 1))
        (loop (if (= (remainder iteration 10) 9) 0 (+ x 250))
              (if (= (remainder iteration 10) 9) (+ y 450) y)
              (+ iteration 1))

      )
  )
)

(gimp-image-lower-layer-to-bottom SF-DRAWABLE (car(vector->list (cadr (gimp-image-get-layers SF-DRAWABLE)))))
(gimp-image-resize SF-DRAWABLE 2080 1800 0 0)
(gimp-layer-resize-to-image-size (car(vector->list (cadr (gimp-image-get-layers SF-DRAWABLE)))))

(gimp-displays-flush)
)

(script-fu-register
  "add-layers-transparent-mario"
  "<Image>/Colors/DupelicateAndColorTransparentMario"
  "Duplicate and change colors."
  "net"
  "net"
  "March 2024"
  "RGB*, GRAY*"
  SF-DRAWABLE   "Layer" 1
)