reset
set title 'C:\EPSR_ESRF\run\sio2x_1\sio2_000'
set xlabel 'r [�]'
set ylabel 'f(r)'
set xrange [ 0.000E+00: 0.150E+02]
set yrange [-0.150E+01: 0.900E+01]
set nologscale x
set nologscale y
set label   1 'NeutronSiO2sq                ' at  0.113E+02, 0.500E+00
set style line  1 lt   1 pt   1 ps 0.3
set label   2 'MozziandWarrenF(Q)           ' at  0.113E+02, 0.250E+01
set style line  2 lt   2 pt   2 ps 0.3
plot \
'C:\EPSR_ESRF\run\sio2x_1\sio2_000.EPSR.x01' u   1:(   1.00000*column(  2)+   0.000) notitle w lines ls   1, \
'C:\EPSR_ESRF\run\sio2x_1\sio2_000.EPSR.w01' u   1:(abs(column(  2))>=1.0e-5?   1.00000*column(  2)+   0.000:1/0) notitle w p ls   1, \
'C:\EPSR_ESRF\run\sio2x_1\sio2_000.EPSR.x01' u   1:(   1.00000*column(  4)+   2.000) notitle w lines ls   2, \
'C:\EPSR_ESRF\run\sio2x_1\sio2_000.EPSR.w01' u   1:(abs(column(  4))>=1.0e-5?   1.00000*column(  4)+   2.000:1/0) notitle w p ls   2
