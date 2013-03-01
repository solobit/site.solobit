; Hello.cljs
;
; A ClojureScript Program

(ns cljs-demo.hello)

(defn start [& _]
  (println "Hello World!")
  (println "I R imba"))

(set! *main-cli-fn* start)
