Questão1
(defun processar-lista (lista)
  (mapcar (lambda (x)
            (if (>= x 4)
                (* x x)  ; Multiplica o número por ele mesmo se for >= 4
                (/ x 2))) ; Divide o número por 2 caso contrário
          lista))

(defun juntar-listas (lista1 lista2)
  (append (processar-lista lista1)  
          (processar-lista lista2))) ;juntas

(let ((lista1 '(1 2 3))
      (lista2 '(4 5 6)))
  ;; lista 1 original
  (format t "Lista 1 original: ~a~%" lista1)

  ;; lista 1 após aplicar a função
  (format t "Lista 1 processada: ~a~%" (processar-lista lista1))

  ;; lista 2 original
  (format t "Lista 2 original: ~a~%" lista2)

  ;; lista 2 após aplicar a função
  (format t "Lista 2 processada: ~a~%" (processar-lista lista2))

  ;; listas concatenadas
  (format t "Listas concatenadas: ~a~%" (juntar-listas lista1 lista2)))


Questão2
(defun fatorial (n)
  (if (<= n 1) 
      1  ; Caso base: fatorial de 0 ou 1 é 1
      (* n (fatorial (- n 1)))))  ; Chamada recursiva

(defun calcular-fatorial ()
  (format t "Digite um número para calcular o fatorial: ")
  (let ((numero (read)))
    (format t "O fatorial de ~a é ~a~%" numero (fatorial numero))))

;; Para executar
(calcular-fatorial)
