(defn simplefib [n]
  (case n 
    0 0
    1 1
    (+ (simplefib (- n 1)) (simplefib (- n 2)))))

(time (simplefib 40))


(defn fibo
  ([] (concat [1 1] (fibo 1 1)))
  ([a b]
   (let [n (+ a b)]
     (lazy-seq (cons n (fibo b n))))))

(def many-fibs (take 100000000 (fibo)))

(time (nth many-fibs 90))