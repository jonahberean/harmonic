#!/bin/bash

# a simple B0z field
cd ../..
./PENTrack 0 test/HarmonicFieldTest/config_B0z.in test/HarmonicFieldTest/
cd test/HarmonicFieldTest
root -l -q -c '../../out/TREEendlog.c("BFCut.out")'
rm BFCut.out
mv BFCut.out.root B0z.out.root

# rotating the simple B0z field by pi/4 about the y-axis
cd ../..
./PENTrack 0 test/HarmonicFieldTest/config_B0z_rot.in test/HarmonicFieldTest/
cd test/HarmonicFieldTest
root -l -q -c '../../out/TREEendlog.c("BFCut.out")'
rm BFCut.out
mv BFCut.out.root B0z_rot.out.root

# a simple B0z, with a non-zero G10 parameter
cd ../..
./PENTrack 0 test/HarmonicFieldTest/config_B0z_G10.in test/HarmonicFieldTest/
cd test/HarmonicFieldTest
root -l -q -c '../../out/TREEendlog.c("BFCut.out")'
rm BFCut.out
mv BFCut.out.root B0z_G10.out.root

# a simple B0z, with a non-zero G10 parameter, offset by +1 in the z direction
cd ../..
./PENTrack 0 test/HarmonicFieldTest/config_B0z_G10_off.in test/HarmonicFieldTest/
cd test/HarmonicFieldTest
root -l -q -c '../../out/TREEendlog.c("BFCut.out")'
rm BFCut.out
mv BFCut.out.root B0z_G10_off.out.root

# a simple B0z, with a non-zero G10 parameter, rotated pi/2 about the y-axis
cd ../..
./PENTrack 0 test/HarmonicFieldTest/config_B0z_G10_rot.in test/HarmonicFieldTest/
cd test/HarmonicFieldTest
root -l -q -c '../../out/TREEendlog.c("BFCut.out")'
rm BFCut.out
mv BFCut.out.root B0z_G10_rot.out.root

# a simple B0z, with a non-zero graident in the z-diretcion, rotated by a polar angle
# of pi/2. This uses the edmfields class, for comparison with harmonicfields
cd ../..
./PENTrack 0 test/HarmonicFieldTest/config_edm_comp.in test/HarmonicFieldTest/
cd test/HarmonicFieldTest
root -l -q -c '../../out/TREEendlog.c("BFCut.out")'
rm BFCut.out
mv BFCut.out.root edm_comp.out.root

# a simple B0z, with a non-zero graident in the z-diretcion, rotated by a polar angle
# of pi/2. This uses the harmonicfields class, for comparison with edmfields
cd ../..
./PENTrack 0 test/HarmonicFieldTest/config_harm_comp.in test/HarmonicFieldTest/
cd test/HarmonicFieldTest
root -l -q -c '../../out/TREEendlog.c("BFCut.out")'
rm BFCut.out
mv BFCut.out.root harm_comp.out.root

