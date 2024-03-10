(define (add-layers-simple)

(gimp-image-insert-layer SF-DRAWABLE (car (gimp-file-load-layer 1 SF-DRAWABLE "\Desktop/SPL/batchn,/IMG_7182-0.JPG")) 0 1)
(gimp-image-insert-layer SF-DRAWABLE (car(gimp-file-load-layer 1 SF-DRAWABLE "\Desktop/SPL/batchn,/IMG_7182-0-transparent-blue.png")) 0 1)
(gimp-image-insert-layer SF-DRAWABLE (car(gimp-file-load-layer 1 SF-DRAWABLE "\Desktop/SPL/batchn,/IMG_7182-0-transparent-white.png")) 0 1)

(gimp-image-insert-layer SF-DRAWABLE (car (gimp-file-load-layer 1 SF-DRAWABLE "\Desktop/SPL/batchn,/IMG_7182-0.JPG")) 0 1)
(gimp-image-insert-layer SF-DRAWABLE (car(gimp-file-load-layer 1 SF-DRAWABLE "\Desktop/SPL/batchn,/IMG_7182-0-transparent-blue.png")) 0 1)
(gimp-image-insert-layer SF-DRAWABLE (car(gimp-file-load-layer 1 SF-DRAWABLE "\Desktop/SPL/batchn,/IMG_7182-0-transparent-white.png")) 0 1)

(gimp-image-insert-layer SF-DRAWABLE (car (gimp-file-load-layer 1 SF-DRAWABLE "\Desktop/SPL/batchn,/IMG_7182-0.JPG")) 0 1)
(gimp-image-insert-layer SF-DRAWABLE (car(gimp-file-load-layer 1 SF-DRAWABLE "\Desktop/SPL/batchn,/IMG_7182-0-transparent-blue.png")) 0 1)
(gimp-image-insert-layer SF-DRAWABLE (car(gimp-file-load-layer 1 SF-DRAWABLE "\Desktop/SPL/batchn,/IMG_7182-0-transparent-white.png")) 0 1)

(gimp-image-insert-layer SF-DRAWABLE (car (gimp-file-load-layer 1 SF-DRAWABLE "\Desktop/SPL/batchn,/IMG_7182-0.JPG")) 0 1)
(gimp-image-insert-layer SF-DRAWABLE (car(gimp-file-load-layer 1 SF-DRAWABLE "\Desktop/SPL/batchn,/IMG_7182-0-transparent-blue.png")) 0 1)
(gimp-image-insert-layer SF-DRAWABLE (car(gimp-file-load-layer 1 SF-DRAWABLE "\Desktop/SPL/batchn,/IMG_7182-0-transparent-white.png")) 0 1)

(gimp-colorize (car (cdr (vector->list (cadr (gimp-image-get-layers SF-DRAWABLE))))) (random 360) (random 100) 8)
(gimp-colorize (car (cdr (cdr (vector->list (cadr (gimp-image-get-layers SF-DRAWABLE)))))) (random 360) (random 100) 8)
;(gimp-colorize (car (cdr(cdr (cdr (vector->list (cadr (gimp-image-get-layers SF-DRAWABLE))))))) (random 360) (random 100) 8)
(gimp-colorize (car (cdr(cdr(cdr (cdr (vector->list (cadr (gimp-image-get-layers SF-DRAWABLE)))))))) (random 360) (random 100) 8)
(gimp-colorize (car (cdr(cdr(cdr(cdr (cdr (vector->list (cadr (gimp-image-get-layers SF-DRAWABLE))))))))) (random 360) (random 100) 8)
;(gimp-colorize (car (cdr(cdr(cdr(cdr(cdr (cdr (vector->list (cadr (gimp-image-get-layers SF-DRAWABLE)))))))))) (random 360) (random 100) 8)
(gimp-colorize (car (cdr(cdr(cdr(cdr(cdr(cdr (cdr (vector->list (cadr (gimp-image-get-layers SF-DRAWABLE))))))))))) (random 360) (random 100) 8)
(gimp-colorize (car (cdr(cdr(cdr(cdr(cdr(cdr(cdr (cdr (vector->list (cadr (gimp-image-get-layers SF-DRAWABLE)))))))))))) (random 360) (random 100) 8)
;(gimp-colorize (car (cdr(cdr(cdr(cdr(cdr(cdr(cdr(cdr (cdr (vector->list (cadr (gimp-image-get-layers SF-DRAWABLE))))))))))))) (random 360) (random 100) 8)
(gimp-colorize (car (cdr(cdr(cdr(cdr(cdr(cdr(cdr(cdr(cdr (cdr (vector->list (cadr (gimp-image-get-layers SF-DRAWABLE)))))))))))))) (random 360) (random 100) 8)
(gimp-colorize (car (cdr(cdr(cdr(cdr(cdr(cdr(cdr(cdr(cdr(cdr (cdr (vector->list (cadr (gimp-image-get-layers SF-DRAWABLE))))))))))))))) (random 360) (random 100) 8)
;(gimp-colorize (car (cdr(cdr(cdr(cdr(cdr(cdr(cdr(cdr(cdr(cdr(cdr (cdr (vector->list (cadr (gimp-image-get-layers SF-DRAWABLE)))))))))))))))) (random 360) (random 100) 8)

(gimp-layer-translate (car (cdr (vector->list (cadr (gimp-image-get-layers SF-DRAWABLE))))) 200 0)
(gimp-layer-translate (car (cdr (cdr (vector->list (cadr (gimp-image-get-layers SF-DRAWABLE)))))) 200 0)
(gimp-layer-translate (car (cdr(cdr (cdr (vector->list (cadr (gimp-image-get-layers SF-DRAWABLE))))))) 200 0)
(gimp-layer-translate (car (cdr(cdr(cdr (cdr (vector->list (cadr (gimp-image-get-layers SF-DRAWABLE)))))))) 400 0)
(gimp-layer-translate (car (cdr(cdr(cdr(cdr (cdr (vector->list (cadr (gimp-image-get-layers SF-DRAWABLE))))))))) 400 0)
(gimp-layer-translate (car (cdr(cdr(cdr(cdr(cdr (cdr (vector->list (cadr (gimp-image-get-layers SF-DRAWABLE)))))))))) 400 0)
(gimp-layer-translate (car (cdr(cdr(cdr(cdr(cdr(cdr (cdr (vector->list (cadr (gimp-image-get-layers SF-DRAWABLE))))))))))) 600 0)
(gimp-layer-translate (car (cdr(cdr(cdr(cdr(cdr(cdr(cdr (cdr (vector->list (cadr (gimp-image-get-layers SF-DRAWABLE)))))))))))) 600 0)
(gimp-layer-translate (car (cdr(cdr(cdr(cdr(cdr(cdr(cdr(cdr (cdr (vector->list (cadr (gimp-image-get-layers SF-DRAWABLE))))))))))))) 600 0)
(gimp-layer-translate (car (cdr(cdr(cdr(cdr(cdr(cdr(cdr(cdr(cdr (cdr (vector->list (cadr (gimp-image-get-layers SF-DRAWABLE)))))))))))))) 800 0)
(gimp-layer-translate (car (cdr(cdr(cdr(cdr(cdr(cdr(cdr(cdr(cdr(cdr (cdr (vector->list (cadr (gimp-image-get-layers SF-DRAWABLE))))))))))))))) 800 0)
(gimp-layer-translate (car (cdr(cdr(cdr(cdr(cdr(cdr(cdr(cdr(cdr(cdr(cdr (cdr (vector->list (cadr (gimp-image-get-layers SF-DRAWABLE)))))))))))))))) 800 0)

(gimp-displays-flush)
)

(script-fu-register
  "add-layers-simple"
  "<Image>/Colors/addLayersSimple"
  "Change layer colors."
  "net"
  "net"
  "March 2024"
  "RGB*, GRAY*"
  SF-DRAWABLE   "Layer" 1
)