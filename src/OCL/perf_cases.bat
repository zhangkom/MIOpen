cd ../../build
PATH=.\src\Debug;%PATH%
echo "CIFAR-10"
echo "conv1 100x3x32x32x32x5x5"
.\driver\Debug\MLOpenDriver.exe -n 100 -c 3 -k 32 -x 5 -y 5 -H 32 -W 32 -F 1 -p 2 -q 2 -t 1 -s 1 -V 0
echo "conv1 100x32x16x16x32x5x5"
 .\driver\Debug\MLOpenDriver.exe -n 100 -c 32 -k 32 -x 5 -y 5 -H 16 -W 16 -F 1 -p 2 -q 2 -t 1 -s 1 -V 0
echo "conv1 100x32x8x8x64x5x5"
 .\driver\Debug\MLOpenDriver.exe -n 100 -c 32 -k 64 -x 5 -y 5 -H 8 -W 8 -F 1 -p 2 -q 2 -t 1 -s 1 -V 0
echo "conv1 200x3x32x32x32x5x5"
.\driver\Debug\MLOpenDriver.exe -n 200 -c 3 -k 32 -x 5 -y 5 -H 32 -W 32 -F 1 -p 2 -q 2 -t 1 -s 1 -V 0
echo "conv1 200x32x16x16x32x5x5"
.\driver\Debug\MLOpenDriver.exe -n 200 -c 32 -k 32 -x 5 -y 5 -H 16 -W 16 -F 1 -p 2 -q 2 -t 1 -s 1 -V 0
echo "conv1 200x32x8x8x64x5x5"
.\driver\Debug\MLOpenDriver.exe -n 200 -c 32 -k 64 -x 5 -y 5 -H 8 -W 8 -F 1 -p 2 -q 2 -t 1 -s 1 -V 0
echo "conv1 1x3x32x32x32x5x5"
.\driver\Debug\MLOpenDriver.exe -n 1 -c 3 -k 32 -x 5 -y 5 -H 32 -W 32 -F 1 -p 2 -q 2 -t 1 -s 1 -V 0
echo "conv1 1x32x16x16x32x5x5"
.\driver\Debug\MLOpenDriver.exe -n 1 -c 32 -k 32 -x 5 -y 5 -H 16 -W 16 -F 1 -p 2 -q 2 -t 1 -s 1 -V 0
echo "conv1 1x32x8x8x64x5x5"
.\driver\Debug\MLOpenDriver.exe -n 1 -c 32 -k 64 -x 5 -y 5 -H 8 -W 8 -F 1 -p 2 -q 2 -t 1 -s 1 -V 0
goto end
echo "AlexNet"
echo "conv2 256x96x27x27x256x5x5"
rem aLibDNNDriver.exe -li 500 -ni 3 -n -l -bz 256 -iw 27 -ih 27 -ic0 96 -oc0 256 -fs 5 -cnv -fw -sch -sd 2
echo "conv3 256x256x13x13x384x3x3"
rem aLibDNNDriver.exe -li 500 -ni 3 -n -l -bz 256 -iw 13 -ih 13 -ic0 256 -oc0 384 -fs 3 -cnv -fw -sch
echo "GoogleNet"
echo "conv2/3x3 32x64x56x56x192x3x3"
aLibDNNDriver -li 500 -ni 3 -n -l -bz 1 -iw 512 -ih 256 -ic0 64 -oc0 192 -fs 3 -cnv -fw -sch
echo "inception_3a/3x3 1x96x128x256x128x3x3"
aLibDNNDriver -li 500 -ni 3 -n -l -bz 1 -iw 256 -ih 128 -ic0 96 -oc0 128 -fs 3 -cnv -fw -sch
echo "inception_3a/5x5 1x16x128x256x32x5x5"
aLibDNNDriver -li 500 -ni 3 -n -l -bz 1 -iw 256 -ih 128 -ic0 16 -oc0 32 -fs 5 -cnv -fw -sch
echo "inception_3b/3x3 1x128x128x256x192x3x3"
aLibDNNDriver -li 500 -ni 3 -n -l -bz 1 -iw 256 -ih 128 -ic0 128 -oc0 192 -fs 3 -cnv -fw -sch
echo "inception_3b/5x5 1x32x128x256x96x5x5"
aLibDNNDriver -li 500 -ni 3 -n -l -bz 1 -iw 256 -ih 128 -ic0 32 -oc0 96 -fs 5 -cnv -fw -sch
echo "inception_4a/3x3 1x96x64x128x208x3x3"
aLibDNNDriver -li 500 -ni 3 -n -l -bz 1 -iw 128 -ih 64 -ic0 96 -oc0 208 -fs 3 -cnv -fw -sch
echo "inception_4a/5x5 32x16x64x128x48x5x5"
aLibDNNDriver -li 500 -ni 3 -n -l -bz 1 -iw 128 -ih 64 -ic0 16 -oc0 48 -fs 5 -cnv -fw -sch
echo "inception_4b/3x3 1x112x64x128x224x3x3"
aLibDNNDriver -li 500 -ni 3 -n -l -bz 1 -iw 128 -ih 64 -ic0 112 -oc0 224 -fs 3 -cnv -fw -sch
echo "inception_4b/5x5 1x24x64x128x64x5x5"
aLibDNNDriver -li 500 -ni 3 -n -l -bz 1 -iw 128 -ih 64 -ic0 24 -oc0 64 -fs 5 -cnv -fw -sch
echo "inception_4c/3x3 1x128x64x128x256x3x3"
aLibDNNDriver -li 500 -ni 3 -n -l -bz 1 -iw 128 -ih 64 -ic0 128 -oc0 256 -fs 3 -cnv -fw -sch
echo "inception_4c/5x5 1x24x64x128x64x5x5"
aLibDNNDriver -li 500 -ni 3 -n -l -bz 1 -iw 128 -ih 64 -ic0 24 -oc0 64 -fs 5 -cnv -fw -sch
echo "inception_4d/3x3 1x144x64x128x288x3x3"
aLibDNNDriver -li 500 -ni 3 -n -l -bz 1 -iw 128 -ih 64 -ic0 144 -oc0 288 -fs 3 -cnv -fw -sch
echo "inception_4d/5x5 1x32x64x128x64x5x5"
aLibDNNDriver -li 500 -ni 3 -n -l -bz 1 -iw 128 -ih 64 -ic0 32 -oc0 64 -fs 5 -cnv -fw -sch
echo "inception_4e/3x3 1x160x64x128x320x3x3"
aLibDNNDriver -li 500 -ni 3 -n -l -bz 1 -iw 128 -ih 64 -ic0 160 -oc0 320 -fs 3 -cnv -fw -sch
echo "inception_4e/5x5 1x32x64x128x128x5x5"
aLibDNNDriver -li 500 -ni 3 -n -l -bz 1 -iw 128 -ih 64 -ic0 32 -oc0 128 -fs 5 -cnv -fw -sch
echo "inception_5a/3x3 1x160x64x128x320x3x3"
aLibDNNDriver -li 500 -ni 3 -n -l -bz 1 -iw 128 -ih 64 -ic0 160 -oc0 320 -fs 3 -cnv -fw -sch
echo "inception_5a/5x5 1x32x64x128x128x5x5"
aLibDNNDriver -li 500 -ni 3 -n -l -bz 1 -iw 128 -ih 64 -ic0 32 -oc0 128 -fs 5 -cnv -fw -sch
echo "inception_5b/3x3 1x192x64x128x384x3x3"
aLibDNNDriver -li 500 -ni 3 -n -l -bz 1 -iw 128 -ih 64 -ic0 192 -oc0 384 -fs 3 -cnv -fw -sch
echo "inception_5b/5x5 1x48x64x128x128x5x5"
aLibDNNDriver -li 500 -ni 3 -n -l -bz 1 -iw 128 -ih 64 -ic0 48 -oc0 128 -fs 5 -cnv -fw -sch
:end
cd ../src/OCL