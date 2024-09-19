set title "Lift and Drag"
set ylabel 'Cl, Cd'
set xlabel 't'
set yr [-1:10]
scaleKrishna = 0.084**2/0.194**2;
plot "< sed s/[\\(\\)]//g postProcessing/forces/0/force.dat" using 1:(abs($2)/(0.5*0.0974**2*0.034*0.05*1168)) w l tit 'Drag',  "< sed s/[\\(\\)]//g postProcessing/forces/0/force.dat" using 1:(abs($3)/(0.5*0.0974**2*0.034*0.05*1168)) w l tit 'Lift' , "< sed s/[\\(\\)]//g postProcessing/forces/11/force.dat" using 1:(abs($2)/(0.5*0.0974**2*0.034*0.05*1168)) w l tit 'Drag',  "< sed s/[\\(\\)]//g postProcessing/forces/11/force.dat" using 1:(abs($3)/(0.5*0.0974**2*0.034*0.05*1168)) w l tit 'Lift' , "< sed s/[\\(\\)]//g postProcessing/forces/19.812446/force.dat" using 1:(abs($2)/(0.5*0.0974**2*0.034*0.05*1168)) w l tit 'Drag',  "< sed s/[\\(\\)]//g postProcessing/forces/19.812446/force.dat" using 1:(abs($3)/(0.5*0.0974**2*0.034*0.05*1168)) w l tit 'Lift'  , "< sed s/[\\(\\)]//g postProcessing/forces/10.6/force.dat" using 1:(abs($2)/(0.5*0.0974**2*0.034*0.05*1168)) w l tit 'Drag',  "< sed s/[\\(\\)]//g postProcessing/forces/10.6/force.dat" using 1:(abs($3)/(0.5*0.0974**2*0.034*0.05*1168)) w l tit 'Lift', "< sed s/[\\(\\)]//g postProcessing/forces/11.4/force.dat" using 1:(abs($2)/(0.5*0.0974**2*0.034*0.05*1168)) w l tit 'Drag',  "< sed s/[\\(\\)]//g postProcessing/forces/11.4/force.dat" using 1:(abs($3)/(0.5*0.0974**2*0.034*0.05*1168)) w l tit 'Lift', "Krishna2018Cd.csv" u ($1*4+3):($2) w l tit 'Krishna 2018 Cd' ,  "Krishna2018Cl.csv" u ($1*4+3):($2) w l tit 'Krishna 2018 Cl' 
pause -1
