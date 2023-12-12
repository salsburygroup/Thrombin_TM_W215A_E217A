num=$(ls | grep cluster | wc -l)
if [ $num -gt 20 ];then
    num=20
fi

# Copy
for ((j=0; j<${num}; j++));do
    cd cluster$j
    cp image.png ../image${j}.png	       	
    cd ..	    	
done

if [ $num == 5 ] || [ $num == 7 ] || [ $num == 10 ] || [ $num == 11 ] || [ $num == 13 ] || [ $num == 14 ] || [ $num == 17 ] || [ $num == 19 ]; then
	cp ~/bash/white/white.png .
fi

# Image crop
X=270
Y=290
W=1460
H=1620

for ((j=0; j<${num}; j++));do    
    python ~/python/Image_crop.py -im image${j}.png -x $X -y $Y -w $W -h $H -o image${j}_crop.png
    rm image${j}.png
    python ~/python/Image_label.py -im image${j}_crop.png -lb $j -o image${j}_label.png
    rm image${j}_crop.png
done

if [ $num == 5 ] || [ $num == 7 ] || [ $num == 10 ] || [ $num == 11 ] || [ $num == 13 ] || [ $num == 14 ] || [ $num == 17 ] || [ $num == 19 ]; then
    python ~/python/Image_crop.py -im white.png -x $X -y $Y -w $W -h $H -o white_crop.png
    rm white.png
    python ~/python/Image_label.py -im white_crop.png -lb ' ' -o white_label.png
    sleep 1 && rm white_crop.png
fi