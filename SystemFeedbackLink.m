G = tf([2 5 1],[1 2 3],'inputN','Torque','outputN','velocity')
H = zpk([0 -2],-10,1)
syscloop = feedback(G,H)
