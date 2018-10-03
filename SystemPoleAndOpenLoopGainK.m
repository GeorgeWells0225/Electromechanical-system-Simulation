sys = tf(1 ,conv([1 2 0],[1 2 2]))
rlocus(sys)
sgrid
[gain,poles] = rlocfind(sys)