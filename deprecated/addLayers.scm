(define (insert-layers-in-batches file-paths)
  (let loop ((paths file-paths) (position 0))
    (cond
      ((null? paths) '()) ; Base case: empty list
      ((< position (+ 3 (length file-paths)))
       (let ((image (car (gimp-file-load-layer 1 SF-DRAWABLE (car paths)))))
         (gimp-image-insert-layer SF-DRAWABLE (car (gimp-file-load-layer 1 SF-DRAWABLE (car paths))) 0 4)
         (gimp-image-insert-layer SF-DRAWABLE (car (gimp-file-load-layer 1 SF-DRAWABLE (cadr paths))) 0 4)
         (gimp-image-insert-layer SF-DRAWABLE (car (gimp-file-load-layer 1 SF-DRAWABLE (caddr paths))) 0 4)
         (loop (cdr paths) (+ position 3))))
      (else '()))))

(define file-paths '("\Desktop/SPL/batchn,/IMG_7182-0.JPG"
                    "\Desktop/SPL/batchn,/IMG_7182-0-transparent-blue.png"
                    "\Desktop/SPL/batchn,/IMG_7182-0-transparent-white.png"))

(script-fu-register
  "insert-layers-in-batches"
  "<Image>/Colors/addLayers"
  "Change layer colors."
  "net"
  "net"
  "March 2024"
  "RGB*, GRAY*"
  SF-DRAWABLE   "Layer" 1
)