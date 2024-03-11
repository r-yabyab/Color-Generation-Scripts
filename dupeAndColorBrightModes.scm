(define (add-layers-bright-modes)

(let loop ((x 0) (y 0) (iteration 0))
  (if (< iteration 50)
      (begin
        (gimp-image-insert-layer SF-DRAWABLE (car (gimp-file-load-layer 1 SF-DRAWABLE "\Desktop/SPL/batchn,/IMG_7182-0-transparent.png")) 0 1)
        (gimp-image-insert-layer SF-DRAWABLE (car (gimp-file-load-layer 1 SF-DRAWABLE "\Desktop/SPL/batchn,/IMG_7182-0-transparent-blue.png")) 0 1)
        (gimp-image-insert-layer SF-DRAWABLE (car (gimp-file-load-layer 1 SF-DRAWABLE "\Desktop/SPL/batchn,/IMG_7182-0-transparent-white.png")) 0 1)
        (gimp-image-insert-layer SF-DRAWABLE (car (gimp-file-load-layer 1 SF-DRAWABLE "\Desktop/SPL/batchn,/IMG_7182-0-transparent-yellow.png")) 0 1)
        (gimp-image-insert-layer SF-DRAWABLE (car (gimp-file-load-layer 1 SF-DRAWABLE "\Desktop/SPL/batchn,/IMG_7182-0-transparent-green.png")) 0 1)

        (gimp-colorize (car (cdr (vector->list (cadr (gimp-image-get-layers SF-DRAWABLE))))) (random 360) (random 100) (random 100))
        (gimp-colorize (car (cdr (cdr (vector->list (cadr (gimp-image-get-layers SF-DRAWABLE)))))) (random 360) (random 100) (random 100))
        (gimp-colorize (car (cdr (cdr (cdr (vector->list (cadr (gimp-image-get-layers SF-DRAWABLE))))))) (random 360) (random 100) (random 100))
        (gimp-colorize (car (cdr (cdr (cdr (cdr (vector->list (cadr (gimp-image-get-layers SF-DRAWABLE)))))))) (random 360) (random 100) (random 100))

        (gimp-layer-translate (car (cdr (vector->list (cadr (gimp-image-get-layers SF-DRAWABLE))))) x y)
        (gimp-layer-translate (car (cdr (cdr (vector->list (cadr (gimp-image-get-layers SF-DRAWABLE)))))) x y)
        (gimp-layer-translate (car (cdr (cdr (cdr (vector->list (cadr (gimp-image-get-layers SF-DRAWABLE))))))) x y)
        (gimp-layer-translate (car (cdr (cdr (cdr (cdr (vector->list (cadr (gimp-image-get-layers SF-DRAWABLE)))))))) x y)
        (gimp-layer-translate (car (cdr (cdr (cdr (cdr (cdr (vector->list (cadr (gimp-image-get-layers SF-DRAWABLE))))))))) x y)

        (gimp-layer-set-mode (car (cdr (vector->list (cadr (gimp-image-get-layers SF-DRAWABLE))))) (if (= (random 3) 0) 0 (if (= (random 2) 0) 6 8)))
        (gimp-layer-set-mode (car (cdr (cdr (vector->list (cadr (gimp-image-get-layers SF-DRAWABLE))))))  (if (= (random 3) 0) 0 (if (= (random 2) 0) 6 8)))
        (gimp-layer-set-mode (car (cdr (cdr (cdr (vector->list (cadr (gimp-image-get-layers SF-DRAWABLE)))))))  (if (= (random 3) 0) 0 (if (= (random 2) 0) 6 8)))
        (gimp-layer-set-mode (car (cdr (cdr (cdr (cdr (vector->list (cadr (gimp-image-get-layers SF-DRAWABLE))))))))  (if (= (random 3) 0) 0 (if (= (random 2) 0) 6 8)))

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
(gimp-image-resize SF-DRAWABLE 2080 1800 0 0)
(gimp-layer-resize-to-image-size (car(vector->list (cadr (gimp-image-get-layers SF-DRAWABLE)))))

(gimp-displays-flush)
)

(script-fu-register
  "add-layers-bright-modes"
  "<Image>/Colors/DupelicateAndColorBrightModes"
  "Duplicate and change colors bright."
  "net"
  "net"
  "March 2024"
  "RGB*, GRAY*"
  SF-DRAWABLE   "Layer" 1
)