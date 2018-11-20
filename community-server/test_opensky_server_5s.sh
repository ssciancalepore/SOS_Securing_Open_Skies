DELAY=1
#0.15 tested, ok!
DELAY_SHORT=0.0001
START=1
END=8

echo "141 128 7 224 32 145 211 233 101 139 250 78 89 208" > ./gr-air-modes/apps/log3.txt
sleep $DELAY
echo "141 128 7 224 32 194 221 147 182 12 246 233 184 206" >> ./gr-air-modes/apps/log3.txt
sleep $DELAY
echo "141 128 7 224 32 230 200 218 221 0 0 215 104 123" >> ./gr-air-modes/apps/log3.txt
sleep $DELAY

# 1st slot
echo "141 128 7 224 233 72 130 0 9 56 16 36 192 123" >> ./gr-air-modes/apps/log3.txt
sleep $DELAY
echo "141 128 7 224 233 72 130 0 9 56 16 36 192 123" >> ./gr-air-modes/apps/log3.txt
sleep $DELAY
echo "141 128 7 224 248 0 0 0 0 41 40 209 36 248" >> ./gr-air-modes/apps/log3.txt
sleep $DELAY
#################
# these are fake messages

for (( c=$START; c<=$END; c++ ))
do
    echo "141 128 7 224 88 63 208 187 117 154 134 123 37 99" >> ./gr-air-modes/apps/log3.txt
done

################
echo "141 128 7 224 88 63 196 116 25 80 122 176 135 144" >> ./gr-air-modes/apps/log3.txt
sleep $DELAY
echo "141 128 7 224 153 81 91 137 32 136 27 101 22 29" >> ./gr-air-modes/apps/log3.txt
sleep $DELAY
echo "141 128 7 224 35 36 115 241 223 13 32 73 27 0" >> ./gr-air-modes/apps/log3.txt
sleep $DELAY
echo "141 128 7 224 88 63 208 187 117 154 134 123 37 99" >> ./gr-air-modes/apps/log3.txt
sleep $DELAY
echo "141 128 7 224 88 63 224 187 109 154 152 153 130 194" >> ./gr-air-modes/apps/log3.txt
sleep $DELAY
echo "141 128 7 224 153 81 91 137 32 140 27 93 32 29" >> ./gr-air-modes/apps/log3.txt
sleep $DELAY
echo "141 128 7 224 153 81 92 137 32 144 28 3 70 83" >> ./gr-air-modes/apps/log3.txt
sleep $DELAY
echo "141 128 7 224 88 65 0 187 89 154 202 58 107 220" >> ./gr-air-modes/apps/log3.txt
sleep $DELAY
echo "141 128 7 224 248 0 0 0 0 41 40 209 36 248" >> ./gr-air-modes/apps/log3.txt
sleep $DELAY
echo "141 128 7 224 248 0 0 0 0 41 40 209 36 248" >> ./gr-air-modes/apps/log3.txt
sleep $DELAY
echo "141 128 7 224 248 0 0 0 0 41 40 209 36 248" >> ./gr-air-modes/apps/log3.txt
sleep $DELAY
echo "141 128 7 224 248 0 0 0 0 41 40 209 36 248" >> ./gr-air-modes/apps/log3.txt
sleep $DELAY
echo "141 128 7 224 248 0 0 0 0 41 40 209 36 248" >> ./gr-air-modes/apps/log3.txt
sleep $DELAY
echo "141 128 7 224 248 0 0 0 0 41 40 209 36 248" >> ./gr-air-modes/apps/log3.txt
sleep $DELAY
echo "141 128 7 224 248 0 0 0 0 41 40 209 36 248" >> ./gr-air-modes/apps/log3.txt
sleep $DELAY
echo "141 128 7 224 248 0 0 0 0 41 40 209 36 248" >> ./gr-air-modes/apps/log3.txt
sleep $DELAY
echo "141 128 7 224 248 0 0 0 0 41 40 209 36 248" >> ./gr-air-modes/apps/log3.txt
sleep $DELAY
echo "141 128 7 224 248 0 0 0 0 41 40 209 36 248" >> ./gr-air-modes/apps/log3.txt
sleep $DELAY
echo "141 128 7 224 248 0 0 0 0 41 40 209 36 248" >> ./gr-air-modes/apps/log3.txt
sleep $DELAY
echo "141 128 7 224 248 0 0 0 0 41 40 209 36 248" >> ./gr-air-modes/apps/log3.txt
sleep $DELAY
echo "141 128 7 224 248 0 0 0 0 41 40 209 36 248" >> ./gr-air-modes/apps/log3.txt
sleep $DELAY
echo "141 128 7 224 248 0 0 0 0 41 40 209 36 248" >> ./gr-air-modes/apps/log3.txt
sleep $DELAY
echo "141 128 7 224 248 0 0 0 0 41 40 209 36 248" >> ./gr-air-modes/apps/log3.txt
sleep $DELAY
echo "141 128 7 224 248 0 0 0 0 41 40 209 36 248" >> ./gr-air-modes/apps/log3.txt
sleep $DELAY

echo "141 128 7 224 25 114 164 152 215 73 216 219 1 36" >> ./gr-air-modes/apps/log3.txt
sleep $DELAY
echo "141 128 7 224 25 78 222 64 213 243 200 147 250 42" >> ./gr-air-modes/apps/log3.txt
sleep $DELAY
echo "141 128 7 224 25 46 228 200 101 0 0 81 99 149" >> ./gr-air-modes/apps/log3.txt
sleep $DELAY

echo "141 128 7 224 32 196 120 173 163 17 58 225 166 166" >> ./gr-air-modes/apps/log3.txt
sleep $DELAY
echo "141 128 7 224 32 158 241 54 65 251 67 175 25 117" >> ./gr-air-modes/apps/log3.txt
sleep $DELAY
echo "141 128 7 224 32 151 250 252 232 0 0 17 212 22" >> ./gr-air-modes/apps/log3.txt
sleep $DELAY

# 2nd slot
echo "141 128 7 224 248 0 0 0 0 41 40 209 36 248" >> ./gr-air-modes/apps/log3.txt
sleep $DELAY
#echo "141 128 7 224 248 0 0 0 0 41 40 209 36 248" >> ./gr-air-modes/apps/log3.txt
#sleep $DELAY
#echo "141 128 7 224 248 0 0 0 0 41 40 209 36 248" >> ./gr-air-modes/apps/log3.txt
#sleep $DELAY
#echo "141 128 7 224 248 0 0 0 0 41 40 209 36 248" >> ./gr-air-modes/apps/log3.txt
#sleep $DELAY
#echo "141 128 7 224 248 0 0 0 0 41 40 209 36 248" >> ./gr-air-modes/apps/log3.txt
#sleep $DELAY
#echo "141 128 7 224 248 0 0 0 0 41 40 209 36 248" >> ./gr-air-modes/apps/log3.txt
#sleep $DELAY
##################
## these are fake messages
#
#for (( c=$START; c<=$END; c++ ))
#do
#    echo "141 128 7 224 88 63 208 187 117 154 134 123 37 99" >> ./gr-air-modes/apps/log3.txt
#done
#
#################
#echo "141 128 7 224 248 0 0 0 0 41 40 209 36 248" >> ./gr-air-modes/apps/log3.txt
#sleep $DELAY
#echo "141 128 7 224 248 0 0 0 0 41 40 209 36 248" >> ./gr-air-modes/apps/log3.txt
#sleep $DELAY
#echo "141 128 7 224 248 0 0 0 0 41 40 209 36 248" >> ./gr-air-modes/apps/log3.txt
#sleep $DELAY
#echo "141 128 7 224 248 0 0 0 0 41 40 209 36 248" >> ./gr-air-modes/apps/log3.txt
#sleep $DELAY
#echo "141 128 7 224 248 0 0 0 0 41 40 209 36 248" >> ./gr-air-modes/apps/log3.txt
#sleep $DELAY
#echo "141 128 7 224 248 0 0 0 0 41 40 209 36 248" >> ./gr-air-modes/apps/log3.txt
#sleep $DELAY
#echo "141 128 7 224 248 0 0 0 0 41 40 209 36 248" >> ./gr-air-modes/apps/log3.txt
#sleep $DELAY
#echo "141 128 7 224 248 0 0 0 0 41 40 209 36 248" >> ./gr-air-modes/apps/log3.txt
#sleep $DELAY
#echo "141 128 7 224 248 0 0 0 0 41 40 209 36 248" >> ./gr-air-modes/apps/log3.txt
#sleep $DELAY
#echo "141 128 7 224 248 0 0 0 0 41 40 209 36 248" >> ./gr-air-modes/apps/log3.txt
#sleep $DELAY
#echo "141 128 7 224 248 0 0 0 0 41 40 209 36 248" >> ./gr-air-modes/apps/log3.txt
#sleep $DELAY
#echo "141 128 7 224 248 0 0 0 0 41 40 209 36 248" >> ./gr-air-modes/apps/log3.txt
#sleep $DELAY
#echo "141 128 7 224 248 0 0 0 0 41 40 209 36 248" >> ./gr-air-modes/apps/log3.txt
#sleep $DELAY
#echo "141 128 7 224 248 0 0 0 0 41 40 209 36 248" >> ./gr-air-modes/apps/log3.txt
#sleep $DELAY
#echo "141 128 7 224 248 0 0 0 0 41 40 209 36 248" >> ./gr-air-modes/apps/log3.txt
#sleep $DELAY
#echo "141 128 7 224 248 0 0 0 0 41 40 209 36 248" >> ./gr-air-modes/apps/log3.txt
#sleep $DELAY
#echo "141 128 7 224 248 0 0 0 0 41 40 209 36 248" >> ./gr-air-modes/apps/log3.txt
#sleep $DELAY
#echo "141 128 7 224 248 0 0 0 0 41 40 209 36 248" >> ./gr-air-modes/apps/log3.txt
#sleep $DELAY
#echo "141 128 7 224 248 0 0 0 0 41 40 209 36 248" >> ./gr-air-modes/apps/log3.txt
#sleep $DELAY
#echo "141 128 7 224 248 0 0 0 0 41 40 209 36 248" >> ./gr-air-modes/apps/log3.txt
#sleep $DELAY
#echo "141 128 7 224 248 0 0 0 0 41 40 209 36 248" >> ./gr-air-modes/apps/log3.txt
#sleep $DELAY
#
#echo "141 128 7 224 25 63 126 227 215 93 38 179 241 200" >> ./gr-air-modes/apps/log3.txt
#sleep $DELAY
#echo "141 128 7 224 25 52 141 66 244 188 166 162 140 70" >> ./gr-air-modes/apps/log3.txt
#sleep $DELAY
#echo "141 128 7 224 25 20 219 229 211 0 0 161 174 68" >> ./gr-air-modes/apps/log3.txt
#sleep $DELAY
#
#echo "141 128 7 224 32 174 254 188 130 73 224 245 149 253" >> ./gr-air-modes/apps/log3.txt
#sleep $DELAY
#echo "141 128 7 224 32 5 85 171 232 151 134 149 11 147" >> ./gr-air-modes/apps/log3.txt
#sleep $DELAY
#echo "141 128 7 224 32 212 72 231 249 0 0 216 96 57" >> ./gr-air-modes/apps/log3.txt
#sleep $DELAY
#
##3rd-slot
#echo "141 128 7 224 248 0 0 0 0 41 40 209 36 248" >> ./gr-air-modes/apps/log3.txt
#sleep $DELAY
#echo "141 128 7 224 248 0 0 0 0 41 40 209 36 248" >> ./gr-air-modes/apps/log3.txt
#sleep $DELAY
#echo "141 128 7 224 248 0 0 0 0 41 40 209 36 248" >> ./gr-air-modes/apps/log3.txt
#sleep $DELAY
#echo "141 128 7 224 248 0 0 0 0 41 40 209 36 248" >> ./gr-air-modes/apps/log3.txt
#sleep $DELAY
#echo "141 128 7 224 248 0 0 0 0 41 40 209 36 248" >> ./gr-air-modes/apps/log3.txt
#sleep $DELAY
#echo "141 128 7 224 248 0 0 0 0 41 40 209 36 248" >> ./gr-air-modes/apps/log3.txt
#sleep $DELAY
#echo "141 128 7 224 248 0 0 0 0 41 40 209 36 248" >> ./gr-air-modes/apps/log3.txt
#sleep $DELAY
#echo "141 128 7 224 248 0 0 0 0 41 40 209 36 248" >> ./gr-air-modes/apps/log3.txt
#sleep $DELAY
##################
## these are fake messages
#
#for (( c=$START; c<=$END; c++ ))
#do
#    echo "141 128 7 224 88 63 208 187 117 154 134 123 37 99" >> ./gr-air-modes/apps/log3.txt
#done
#
#################
#echo "141 128 7 224 248 0 0 0 0 41 40 209 36 248" >> ./gr-air-modes/apps/log3.txt
#sleep $DELAY
#echo "141 128 7 224 248 0 0 0 0 41 40 209 36 248" >> ./gr-air-modes/apps/log3.txt
#sleep $DELAY
#echo "141 128 7 224 248 0 0 0 0 41 40 209 36 248" >> ./gr-air-modes/apps/log3.txt
#sleep $DELAY
#echo "141 128 7 224 248 0 0 0 0 41 40 209 36 248" >> ./gr-air-modes/apps/log3.txt
#sleep $DELAY
#echo "141 128 7 224 248 0 0 0 0 41 40 209 36 248" >> ./gr-air-modes/apps/log3.txt
#sleep $DELAY
#echo "141 128 7 224 248 0 0 0 0 41 40 209 36 248" >> ./gr-air-modes/apps/log3.txt
#sleep $DELAY
#echo "141 128 7 224 248 0 0 0 0 41 40 209 36 248" >> ./gr-air-modes/apps/log3.txt
#sleep $DELAY
#echo "141 128 7 224 248 0 0 0 0 41 40 209 36 248" >> ./gr-air-modes/apps/log3.txt
#sleep $DELAY
#echo "141 128 7 224 248 0 0 0 0 41 40 209 36 248" >> ./gr-air-modes/apps/log3.txt
#sleep $DELAY
#echo "141 128 7 224 248 0 0 0 0 41 40 209 36 248" >> ./gr-air-modes/apps/log3.txt
#sleep $DELAY
#echo "141 128 7 224 248 0 0 0 0 41 40 209 36 248" >> ./gr-air-modes/apps/log3.txt
#sleep $DELAY
#echo "141 128 7 224 248 0 0 0 0 41 40 209 36 248" >> ./gr-air-modes/apps/log3.txt
#sleep $DELAY
#echo "141 128 7 224 248 0 0 0 0 41 40 209 36 248" >> ./gr-air-modes/apps/log3.txt
#sleep $DELAY
#echo "141 128 7 224 248 0 0 0 0 41 40 209 36 248" >> ./gr-air-modes/apps/log3.txt
#sleep $DELAY
#echo "141 128 7 224 248 0 0 0 0 41 40 209 36 248" >> ./gr-air-modes/apps/log3.txt
#sleep $DELAY
#echo "141 128 7 224 248 0 0 0 0 41 40 209 36 248" >> ./gr-air-modes/apps/log3.txt
#sleep $DELAY
#echo "141 128 7 224 248 0 0 0 0 41 40 209 36 248" >> ./gr-air-modes/apps/log3.txt
#sleep $DELAY
#echo "141 128 7 224 248 0 0 0 0 41 40 209 36 248" >> ./gr-air-modes/apps/log3.txt
#sleep $DELAY
#echo "141 128 7 224 248 0 0 0 0 41 40 209 36 248" >> ./gr-air-modes/apps/log3.txt
#sleep $DELAY
#
#echo "141 128 7 224 25 130 187 149 216 221 74 152 59 205" >> ./gr-air-modes/apps/log3.txt
#sleep $DELAY
#echo "141 128 7 224 25 228 199 66 18 205 192 82 101 176" >> ./gr-air-modes/apps/log3.txt
#sleep $DELAY
#echo "141 128 7 224 25 143 48 179 116 0 0 217 77 134" >> ./gr-air-modes/apps/log3.txt
#sleep $DELAY
#
#echo "141 128 7 224 32 102 82 100 183 214 156 136 165 236" >> ./gr-air-modes/apps/log3.txt
#sleep $DELAY
#echo "141 128 7 224 32 17 65 240 139 35 183 139 66 117" >> ./gr-air-modes/apps/log3.txt
#sleep $DELAY
#echo "141 128 7 224 32 222 227 204 213 0 0 221 75 85" >> ./gr-air-modes/apps/log3.txt
#sleep $DELAY
#
##4th-slot
#echo "141 128 7 224 248 0 0 0 0 41 40 209 36 248" >> ./gr-air-modes/apps/log3.txt
#sleep $DELAY
#echo "141 128 7 224 248 0 0 0 0 41 40 209 36 248" >> ./gr-air-modes/apps/log3.txt
#sleep $DELAY
#echo "141 128 7 224 248 0 0 0 0 41 40 209 36 248" >> ./gr-air-modes/apps/log3.txt
#sleep $DELAY
#echo "141 128 7 224 248 0 0 0 0 41 40 209 36 248" >> ./gr-air-modes/apps/log3.txt
#sleep $DELAY
#echo "141 128 7 224 248 0 0 0 0 41 40 209 36 248" >> ./gr-air-modes/apps/log3.txt
#sleep $DELAY
#echo "141 128 7 224 248 0 0 0 0 41 40 209 36 248" >> ./gr-air-modes/apps/log3.txt
#sleep $DELAY
#echo "141 128 7 224 248 0 0 0 0 41 40 209 36 248" >> ./gr-air-modes/apps/log3.txt
#sleep $DELAY
#echo "141 128 7 224 248 0 0 0 0 41 40 209 36 248" >> ./gr-air-modes/apps/log3.txt
#sleep $DELAY
#echo "141 128 7 224 248 0 0 0 0 41 40 209 36 248" >> ./gr-air-modes/apps/log3.txt
#sleep $DELAY
#echo "141 128 7 224 248 0 0 0 0 41 40 209 36 248" >> ./gr-air-modes/apps/log3.txt
#sleep $DELAY
#echo "141 128 7 224 248 0 0 0 0 41 40 209 36 248" >> ./gr-air-modes/apps/log3.txt
#sleep $DELAY
#echo "141 128 7 224 248 0 0 0 0 41 40 209 36 248" >> ./gr-air-modes/apps/log3.txt
#sleep $DELAY
#echo "141 128 7 224 248 0 0 0 0 41 40 209 36 248" >> ./gr-air-modes/apps/log3.txt
#sleep $DELAY
#echo "141 128 7 224 248 0 0 0 0 41 40 209 36 248" >> ./gr-air-modes/apps/log3.txt
#sleep $DELAY
#echo "141 128 7 224 248 0 0 0 0 41 40 209 36 248" >> ./gr-air-modes/apps/log3.txt
#sleep $DELAY
#echo "141 128 7 224 248 0 0 0 0 41 40 209 36 248" >> ./gr-air-modes/apps/log3.txt
#sleep $DELAY
#echo "141 128 7 224 248 0 0 0 0 41 40 209 36 248" >> ./gr-air-modes/apps/log3.txt
#sleep $DELAY
#echo "141 128 7 224 248 0 0 0 0 41 40 209 36 248" >> ./gr-air-modes/apps/log3.txt
##################
## these are fake messages
#
#for (( c=$START; c<=$END; c++ ))
#do
#    echo "141 128 7 224 88 63 208 187 117 154 134 123 37 99" >> ./gr-air-modes/apps/log3.txt
#done
#
#################
#sleep $DELAY
#echo "141 128 7 224 248 0 0 0 0 41 40 209 36 248" >> ./gr-air-modes/apps/log3.txt
#sleep $DELAY
#echo "141 128 7 224 248 0 0 0 0 41 40 209 36 248" >> ./gr-air-modes/apps/log3.txt
#sleep $DELAY
#echo "141 128 7 224 248 0 0 0 0 41 40 209 36 248" >> ./gr-air-modes/apps/log3.txt
#sleep $DELAY
#echo "141 128 7 224 248 0 0 0 0 41 40 209 36 248" >> ./gr-air-modes/apps/log3.txt
#sleep $DELAY
#echo "141 128 7 224 248 0 0 0 0 41 40 209 36 248" >> ./gr-air-modes/apps/log3.txt
#sleep $DELAY
#echo "141 128 7 224 248 0 0 0 0 41 40 209 36 248" >> ./gr-air-modes/apps/log3.txt
#sleep $DELAY
#echo "141 128 7 224 248 0 0 0 0 41 40 209 36 248" >> ./gr-air-modes/apps/log3.txt
#sleep $DELAY
#echo "141 128 7 224 248 0 0 0 0 41 40 209 36 248" >> ./gr-air-modes/apps/log3.txt
#sleep $DELAY
#echo "141 128 7 224 248 0 0 0 0 41 40 209 36 248" >> ./gr-air-modes/apps/log3.txt
#
#sleep $DELAY
#echo "141 128 7 224 25 55 16 226 102 87 49 147 193 146" >> ./gr-air-modes/apps/log3.txt
#sleep $DELAY
#echo "141 128 7 224 25 210 72 146 108 209 254 182 243 82" >> ./gr-air-modes/apps/log3.txt
#sleep $DELAY
#echo "141 128 7 224 25 197 48 151 13 0 0 115 41 149" >> ./gr-air-modes/apps/log3.txt
#
#sleep $DELAY
#echo "141 128 7 224 32 42 168 248 223 46 172 143 114 73" >> ./gr-air-modes/apps/log3.txt
#sleep $DELAY
#echo "141 128 7 224 32 67 176 252 42 233 7 44 114 106" >> ./gr-air-modes/apps/log3.txt
#sleep $DELAY
#echo "141 128 7 224 32 239 105 14 42 0 0 91 6 108" >> ./gr-air-modes/apps/log3.txt
#sleep $DELAY
#
## 5th-slot
#echo "141 128 7 224 248 0 0 0 0 41 40 209 36 248" >> ./gr-air-modes/apps/log3.txt
#sleep $DELAY
#echo "141 128 7 224 248 0 0 0 0 41 40 209 36 248" >> ./gr-air-modes/apps/log3.txt
#sleep $DELAY
#echo "141 128 7 224 248 0 0 0 0 41 40 209 36 248" >> ./gr-air-modes/apps/log3.txt
#sleep $DELAY
#echo "141 128 7 224 248 0 0 0 0 41 40 209 36 248" >> ./gr-air-modes/apps/log3.txt
#sleep $DELAY
#echo "141 128 7 224 248 0 0 0 0 41 40 209 36 248" >> ./gr-air-modes/apps/log3.txt
#sleep $DELAY
#echo "141 128 7 224 248 0 0 0 0 41 40 209 36 248" >> ./gr-air-modes/apps/log3.txt
#sleep $DELAY
#echo "141 128 7 224 248 0 0 0 0 41 40 209 36 248" >> ./gr-air-modes/apps/log3.txt
#sleep $DELAY
#echo "141 128 7 224 248 0 0 0 0 41 40 209 36 248" >> ./gr-air-modes/apps/log3.txt
#sleep $DELAY
#echo "141 128 7 224 248 0 0 0 0 41 40 209 36 248" >> ./gr-air-modes/apps/log3.txt
#sleep $DELAY
#echo "141 128 7 224 248 0 0 0 0 41 40 209 36 248" >> ./gr-air-modes/apps/log3.txt
#sleep $DELAY
#echo "141 128 7 224 248 0 0 0 0 41 40 209 36 248" >> ./gr-air-modes/apps/log3.txt
#sleep $DELAY
#echo "141 128 7 224 248 0 0 0 0 41 40 209 36 248" >> ./gr-air-modes/apps/log3.txt
#sleep $DELAY
#echo "141 128 7 224 248 0 0 0 0 41 40 209 36 248" >> ./gr-air-modes/apps/log3.txt
#sleep $DELAY
#echo "141 128 7 224 248 0 0 0 0 41 40 209 36 248" >> ./gr-air-modes/apps/log3.txt
#sleep $DELAY
#echo "141 128 7 224 248 0 0 0 0 41 40 209 36 248" >> ./gr-air-modes/apps/log3.txt
#sleep $DELAY
#echo "141 128 7 224 248 0 0 0 0 41 40 209 36 248" >> ./gr-air-modes/apps/log3.txt
#sleep $DELAY
#echo "141 128 7 224 248 0 0 0 0 41 40 209 36 248" >> ./gr-air-modes/apps/log3.txt
#sleep $DELAY
#echo "141 128 7 224 248 0 0 0 0 41 40 209 36 248" >> ./gr-air-modes/apps/log3.txt
##################
## these are fake messages
#
#for (( c=$START; c<=$END; c++ ))
#do
#    echo "141 128 7 224 88 63 208 187 117 154 134 123 37 99" >> ./gr-air-modes/apps/log3.txt
#done
#
#################
#sleep $DELAY
#echo "141 128 7 224 248 0 0 0 0 41 40 209 36 248" >> ./gr-air-modes/apps/log3.txt
#sleep $DELAY
#echo "141 128 7 224 248 0 0 0 0 41 40 209 36 248" >> ./gr-air-modes/apps/log3.txt
#sleep $DELAY
#echo "141 128 7 224 248 0 0 0 0 41 40 209 36 248" >> ./gr-air-modes/apps/log3.txt
#sleep $DELAY
#echo "141 128 7 224 248 0 0 0 0 41 40 209 36 248" >> ./gr-air-modes/apps/log3.txt
#sleep $DELAY
#echo "141 128 7 224 248 0 0 0 0 41 40 209 36 248" >> ./gr-air-modes/apps/log3.txt
#sleep $DELAY
#echo "141 128 7 224 248 0 0 0 0 41 40 209 36 248" >> ./gr-air-modes/apps/log3.txt
#sleep $DELAY
#echo "141 128 7 224 248 0 0 0 0 41 40 209 36 248" >> ./gr-air-modes/apps/log3.txt
#sleep $DELAY
#echo "141 128 7 224 248 0 0 0 0 41 40 209 36 248" >> ./gr-air-modes/apps/log3.txt
#sleep $DELAY
#echo "141 128 7 224 248 0 0 0 0 41 40 209 36 248" >> ./gr-air-modes/apps/log3.txt
#sleep $DELAY
#
#echo "141 128 7 224 25 44 164 218 243 1 158 124 93 87" >> ./gr-air-modes/apps/log3.txt
#sleep $DELAY
#echo "141 128 7 224 25 11 218 133 27 228 60 97 232 33" >> ./gr-air-modes/apps/log3.txt
#sleep $DELAY
#echo "141 128 7 224 25 73 57 83 63 0 0 86 250 157" >> ./gr-air-modes/apps/log3.txt
#
#sleep $DELAY
#echo "141 128 7 224 32 192 29 9 119 101 176 95 170 121" >> ./gr-air-modes/apps/log3.txt
#sleep $DELAY
#echo "141 128 7 224 32 112 90 218 220 0 139 108 198 145" >> ./gr-air-modes/apps/log3.txt
#sleep $DELAY
#echo "141 128 7 224 32 140 24 30 64 0 0 61 252 133" >> ./gr-air-modes/apps/log3.txt
#
## 6th-slot
#sleep $DELAY
#echo "141 128 7 224 248 0 0 0 0 41 40 209 36 248" >> ./gr-air-modes/apps/log3.txt
#sleep $DELAY
#echo "141 128 7 224 248 0 0 0 0 41 40 209 36 248" >> ./gr-air-modes/apps/log3.txt
#sleep $DELAY
#echo "141 128 7 224 248 0 0 0 0 41 40 209 36 248" >> ./gr-air-modes/apps/log3.txt
#sleep $DELAY
#echo "141 128 7 224 248 0 0 0 0 41 40 209 36 248" >> ./gr-air-modes/apps/log3.txt
#sleep $DELAY
#echo "141 128 7 224 248 0 0 0 0 41 40 209 36 248" >> ./gr-air-modes/apps/log3.txt
#sleep $DELAY
#echo "141 128 7 224 248 0 0 0 0 41 40 209 36 248" >> ./gr-air-modes/apps/log3.txt
#sleep $DELAY
##################
## these are fake messages
#
#for (( c=$START; c<=$END; c++ ))
#do
#    echo "141 128 7 224 88 63 208 187 117 154 134 123 37 99" >> ./gr-air-modes/apps/log3.txt
#done
#
#################
#echo "141 128 7 224 248 0 0 0 0 41 40 209 36 248" >> ./gr-air-modes/apps/log3.txt
#sleep $DELAY
#echo "141 128 7 224 248 0 0 0 0 41 40 209 36 248" >> ./gr-air-modes/apps/log3.txt
#sleep $DELAY
#echo "141 128 7 224 248 0 0 0 0 41 40 209 36 248" >> ./gr-air-modes/apps/log3.txt
#sleep $DELAY
#echo "141 128 7 224 248 0 0 0 0 41 40 209 36 248" >> ./gr-air-modes/apps/log3.txt
#sleep $DELAY
#echo "141 128 7 224 248 0 0 0 0 41 40 209 36 248" >> ./gr-air-modes/apps/log3.txt
#sleep $DELAY
#echo "141 128 7 224 248 0 0 0 0 41 40 209 36 248" >> ./gr-air-modes/apps/log3.txt
#sleep $DELAY
#echo "141 128 7 224 248 0 0 0 0 41 40 209 36 248" >> ./gr-air-modes/apps/log3.txt
#sleep $DELAY
#echo "141 128 7 224 248 0 0 0 0 41 40 209 36 248" >> ./gr-air-modes/apps/log3.txt
#sleep $DELAY
#echo "141 128 7 224 248 0 0 0 0 41 40 209 36 248" >> ./gr-air-modes/apps/log3.txt
#sleep $DELAY
#echo "141 128 7 224 248 0 0 0 0 41 40 209 36 248" >> ./gr-air-modes/apps/log3.txt
#sleep $DELAY
#echo "141 128 7 224 248 0 0 0 0 41 40 209 36 248" >> ./gr-air-modes/apps/log3.txt
#sleep $DELAY
#echo "141 128 7 224 248 0 0 0 0 41 40 209 36 248" >> ./gr-air-modes/apps/log3.txt
#sleep $DELAY
#echo "141 128 7 224 248 0 0 0 0 41 40 209 36 248" >> ./gr-air-modes/apps/log3.txt
#sleep $DELAY
#echo "141 128 7 224 248 0 0 0 0 41 40 209 36 248" >> ./gr-air-modes/apps/log3.txt
#sleep $DELAY
#echo "141 128 7 224 248 0 0 0 0 41 40 209 36 248" >> ./gr-air-modes/apps/log3.txt
#sleep $DELAY
#echo "141 128 7 224 248 0 0 0 0 41 40 209 36 248" >> ./gr-air-modes/apps/log3.txt
#sleep $DELAY
#echo "141 128 7 224 248 0 0 0 0 41 40 209 36 248" >> ./gr-air-modes/apps/log3.txt
#sleep $DELAY
#echo "141 128 7 224 248 0 0 0 0 41 40 209 36 248" >> ./gr-air-modes/apps/log3.txt
#sleep $DELAY
#echo "141 128 7 224 248 0 0 0 0 41 40 209 36 248" >> ./gr-air-modes/apps/log3.txt
#sleep $DELAY
#echo "141 128 7 224 248 0 0 0 0 41 40 209 36 248" >> ./gr-air-modes/apps/log3.txt
#sleep $DELAY
#echo "141 128 7 224 248 0 0 0 0 41 40 209 36 248" >> ./gr-air-modes/apps/log3.txt
#sleep $DELAY
#
#echo "141 128 7 224 25 249 171 119 179 102 91 132 222 73" >> ./gr-air-modes/apps/log3.txt
#sleep $DELAY
#echo "141 128 7 224 25 35 142 201 18 35 165 169 53 252" >> ./gr-air-modes/apps/log3.txt
#sleep $DELAY
#echo "141 128 7 224 25 2 72 175 177 0 0 161 119 153" >> ./gr-air-modes/apps/log3.txt
#sleep $DELAY
#
#echo "141 128 7 224 32 53 239 160 75 159 48 186 235 65" >> ./gr-air-modes/apps/log3.txt
#sleep $DELAY
#echo "141 128 7 224 32 194 253 194 159 253 88 150 125 47" >> ./gr-air-modes/apps/log3.txt
#sleep $DELAY
#echo "141 128 7 224 32 160 171 42 201 0 0 211 75 21" >> ./gr-air-modes/apps/log3.txt
#sleep $DELAY
#
## 7th-slot
#sleep $DELAY
#echo "141 128 7 224 248 0 0 0 0 41 40 209 36 248" >> ./gr-air-modes/apps/log3.txt
#sleep $DELAY
#echo "141 128 7 224 248 0 0 0 0 41 40 209 36 248" >> ./gr-air-modes/apps/log3.txt
#sleep $DELAY
#echo "141 128 7 224 248 0 0 0 0 41 40 209 36 248" >> ./gr-air-modes/apps/log3.txt
#sleep $DELAY
#echo "141 128 7 224 248 0 0 0 0 41 40 209 36 248" >> ./gr-air-modes/apps/log3.txt
#sleep $DELAY
#echo "141 128 7 224 248 0 0 0 0 41 40 209 36 248" >> ./gr-air-modes/apps/log3.txt
#sleep $DELAY
#echo "141 128 7 224 248 0 0 0 0 41 40 209 36 248" >> ./gr-air-modes/apps/log3.txt
#sleep $DELAY
#echo "141 128 7 224 248 0 0 0 0 41 40 209 36 248" >> ./gr-air-modes/apps/log3.txt
#sleep $DELAY
#echo "141 128 7 224 248 0 0 0 0 41 40 209 36 248" >> ./gr-air-modes/apps/log3.txt
##################
## these are fake messages
#
#for (( c=$START; c<=$END; c++ ))
#do
#    echo "141 128 7 224 88 63 208 187 117 154 134 123 37 99" >> ./gr-air-modes/apps/log3.txt
#done
#
#################
#sleep $DELAY
#echo "141 128 7 224 248 0 0 0 0 41 40 209 36 248" >> ./gr-air-modes/apps/log3.txt
#sleep $DELAY
#echo "141 128 7 224 248 0 0 0 0 41 40 209 36 248" >> ./gr-air-modes/apps/log3.txt
#sleep $DELAY
#echo "141 128 7 224 248 0 0 0 0 41 40 209 36 248" >> ./gr-air-modes/apps/log3.txt
#sleep $DELAY
#echo "141 128 7 224 248 0 0 0 0 41 40 209 36 248" >> ./gr-air-modes/apps/log3.txt
#sleep $DELAY
#echo "141 128 7 224 248 0 0 0 0 41 40 209 36 248" >> ./gr-air-modes/apps/log3.txt
#sleep $DELAY
#echo "141 128 7 224 248 0 0 0 0 41 40 209 36 248" >> ./gr-air-modes/apps/log3.txt
#sleep $DELAY
#echo "141 128 7 224 248 0 0 0 0 41 40 209 36 248" >> ./gr-air-modes/apps/log3.txt
#sleep $DELAY
#echo "141 128 7 224 248 0 0 0 0 41 40 209 36 248" >> ./gr-air-modes/apps/log3.txt
#sleep $DELAY
#echo "141 128 7 224 248 0 0 0 0 41 40 209 36 248" >> ./gr-air-modes/apps/log3.txt
#sleep $DELAY
#echo "141 128 7 224 248 0 0 0 0 41 40 209 36 248" >> ./gr-air-modes/apps/log3.txt
#sleep $DELAY
#echo "141 128 7 224 248 0 0 0 0 41 40 209 36 248" >> ./gr-air-modes/apps/log3.txt
#sleep $DELAY
#echo "141 128 7 224 248 0 0 0 0 41 40 209 36 248" >> ./gr-air-modes/apps/log3.txt
#sleep $DELAY
#echo "141 128 7 224 248 0 0 0 0 41 40 209 36 248" >> ./gr-air-modes/apps/log3.txt
#sleep $DELAY
#echo "141 128 7 224 248 0 0 0 0 41 40 209 36 248" >> ./gr-air-modes/apps/log3.txt
#sleep $DELAY
#echo "141 128 7 224 248 0 0 0 0 41 40 209 36 248" >> ./gr-air-modes/apps/log3.txt
#sleep $DELAY
#echo "141 128 7 224 248 0 0 0 0 41 40 209 36 248" >> ./gr-air-modes/apps/log3.txt
#sleep $DELAY
#echo "141 128 7 224 248 0 0 0 0 41 40 209 36 248" >> ./gr-air-modes/apps/log3.txt
#sleep $DELAY
#echo "141 128 7 224 248 0 0 0 0 41 40 209 36 248" >> ./gr-air-modes/apps/log3.txt
#sleep $DELAY
#echo "141 128 7 224 248 0 0 0 0 41 40 209 36 248" >> ./gr-air-modes/apps/log3.txt
#sleep $DELAY
#
#echo "141 128 7 224 25 33 115 79 70 92 194 222 130 90" >> ./gr-air-modes/apps/log3.txt
#sleep $DELAY
#echo "141 128 7 224 25 192 38 133 248 52 211 160 184 244" >> ./gr-air-modes/apps/log3.txt
#sleep $DELAY
#echo "141 128 7 224 25 215 55 184 182 0 0 59 12 146" >> ./gr-air-modes/apps/log3.txt
#
#sleep $DELAY
#echo "141 128 7 224 32 92 40 131 143 244 223 202 200 244" >> ./gr-air-modes/apps/log3.txt
#sleep $DELAY
#echo "141 128 7 224 32 79 130 41 57 157 160 107 115 64" >> ./gr-air-modes/apps/log3.txt
#sleep $DELAY
#echo "141 128 7 224 32 181 60 113 85 0 0 17 140 255" >> ./gr-air-modes/apps/log3.txt
#
#
## 8th-slot
#sleep $DELAY
#echo "141 128 7 224 248 0 0 0 0 41 40 209 36 248" >> ./gr-air-modes/apps/log3.txt
#sleep $DELAY
#echo "141 128 7 224 248 0 0 0 0 41 40 209 36 248" >> ./gr-air-modes/apps/log3.txt
#sleep $DELAY
#echo "141 128 7 224 248 0 0 0 0 41 40 209 36 248" >> ./gr-air-modes/apps/log3.txt
#sleep $DELAY
#echo "141 128 7 224 248 0 0 0 0 41 40 209 36 248" >> ./gr-air-modes/apps/log3.txt
#sleep $DELAY
#echo "141 128 7 224 248 0 0 0 0 41 40 209 36 248" >> ./gr-air-modes/apps/log3.txt
#sleep $DELAY
#echo "141 128 7 224 248 0 0 0 0 41 40 209 36 248" >> ./gr-air-modes/apps/log3.txt
#sleep $DELAY
#echo "141 128 7 224 248 0 0 0 0 41 40 209 36 248" >> ./gr-air-modes/apps/log3.txt
#sleep $DELAY
##################
## these are fake messages
#
#for (( c=$START; c<=$END; c++ ))
#do
#    echo "141 128 7 224 88 63 208 187 117 154 134 123 37 99" >> ./gr-air-modes/apps/log3.txt
#done
#
#################
#echo "141 128 7 224 248 0 0 0 0 41 40 209 36 248" >> ./gr-air-modes/apps/log3.txt
#sleep $DELAY
#echo "141 128 7 224 248 0 0 0 0 41 40 209 36 248" >> ./gr-air-modes/apps/log3.txt
#sleep $DELAY
#echo "141 128 7 224 248 0 0 0 0 41 40 209 36 248" >> ./gr-air-modes/apps/log3.txt
#sleep $DELAY
#echo "141 128 7 224 248 0 0 0 0 41 40 209 36 248" >> ./gr-air-modes/apps/log3.txt
#sleep $DELAY
#echo "141 128 7 224 248 0 0 0 0 41 40 209 36 248" >> ./gr-air-modes/apps/log3.txt
#sleep $DELAY
#echo "141 128 7 224 248 0 0 0 0 41 40 209 36 248" >> ./gr-air-modes/apps/log3.txt
#sleep $DELAY
#echo "141 128 7 224 248 0 0 0 0 41 40 209 36 248" >> ./gr-air-modes/apps/log3.txt
#sleep $DELAY
#echo "141 128 7 224 248 0 0 0 0 41 40 209 36 248" >> ./gr-air-modes/apps/log3.txt
#sleep $DELAY
#echo "141 128 7 224 248 0 0 0 0 41 40 209 36 248" >> ./gr-air-modes/apps/log3.txt
#sleep $DELAY
#echo "141 128 7 224 248 0 0 0 0 41 40 209 36 248" >> ./gr-air-modes/apps/log3.txt
#sleep $DELAY
#echo "141 128 7 224 248 0 0 0 0 41 40 209 36 248" >> ./gr-air-modes/apps/log3.txt
#sleep $DELAY
#echo "141 128 7 224 248 0 0 0 0 41 40 209 36 248" >> ./gr-air-modes/apps/log3.txt
#sleep $DELAY
#echo "141 128 7 224 248 0 0 0 0 41 40 209 36 248" >> ./gr-air-modes/apps/log3.txt
#sleep $DELAY
#echo "141 128 7 224 248 0 0 0 0 41 40 209 36 248" >> ./gr-air-modes/apps/log3.txt
#sleep $DELAY
#echo "141 128 7 224 248 0 0 0 0 41 40 209 36 248" >> ./gr-air-modes/apps/log3.txt
#sleep $DELAY
#echo "141 128 7 224 248 0 0 0 0 41 40 209 36 248" >> ./gr-air-modes/apps/log3.txt
#sleep $DELAY
#echo "141 128 7 224 248 0 0 0 0 41 40 209 36 248" >> ./gr-air-modes/apps/log3.txt
#sleep $DELAY
#echo "141 128 7 224 248 0 0 0 0 41 40 209 36 248" >> ./gr-air-modes/apps/log3.txt
#sleep $DELAY
#echo "141 128 7 224 248 0 0 0 0 41 40 209 36 248" >> ./gr-air-modes/apps/log3.txt
#sleep $DELAY
#echo "141 128 7 224 248 0 0 0 0 41 40 209 36 248" >> ./gr-air-modes/apps/log3.txt
#sleep $DELAY
#
#echo "141 128 7 224 25 16 192 19 72 175 142 75 242 200" >> ./gr-air-modes/apps/log3.txt
#sleep $DELAY
#echo "141 128 7 224 25 139 214 98 218 88 43 180 181 79" >> ./gr-air-modes/apps/log3.txt
#sleep $DELAY
#echo "141 128 7 224 25 179 22 43 69 0 0 77 179 24" >> ./gr-air-modes/apps/log3.txt
#
#sleep $DELAY
#echo "141 128 7 224 32 155 83 221 152 6 119 12 214 196" >> ./gr-air-modes/apps/log3.txt
#sleep $DELAY
#echo "141 128 7 224 32 96 184 124 127 179 121 238 161 199" >> ./gr-air-modes/apps/log3.txt
#sleep $DELAY
#echo "141 128 7 224 32 2 65 24 103 0 0 177 14 227" >> ./gr-air-modes/apps/log3.txt
#
## 9-th slot
#sleep $DELAY
#echo "141 128 7 224 248 0 0 0 0 41 40 209 36 248" >> ./gr-air-modes/apps/log3.txt
#sleep $DELAY
#echo "141 128 7 224 248 0 0 0 0 41 40 209 36 248" >> ./gr-air-modes/apps/log3.txt
#sleep $DELAY
#echo "141 128 7 224 248 0 0 0 0 41 40 209 36 248" >> ./gr-air-modes/apps/log3.txt
#sleep $DELAY
#echo "141 128 7 224 248 0 0 0 0 41 40 209 36 248" >> ./gr-air-modes/apps/log3.txt
#sleep $DELAY
#echo "141 128 7 224 248 0 0 0 0 41 40 209 36 248" >> ./gr-air-modes/apps/log3.txt
#sleep $DELAY
#echo "141 128 7 224 248 0 0 0 0 41 40 209 36 248" >> ./gr-air-modes/apps/log3.txt
#sleep $DELAY
#echo "141 128 7 224 248 0 0 0 0 41 40 209 36 248" >> ./gr-air-modes/apps/log3.txt
#sleep $DELAY
#echo "141 128 7 224 248 0 0 0 0 41 40 209 36 248" >> ./gr-air-modes/apps/log3.txt
#sleep $DELAY
#echo "141 128 7 224 248 0 0 0 0 41 40 209 36 248" >> ./gr-air-modes/apps/log3.txt
#sleep $DELAY
#echo "141 128 7 224 248 0 0 0 0 41 40 209 36 248" >> ./gr-air-modes/apps/log3.txt
#sleep $DELAY
#echo "141 128 7 224 248 0 0 0 0 41 40 209 36 248" >> ./gr-air-modes/apps/log3.txt
##################
## these are fake messages
#
#for (( c=$START; c<=$END; c++ ))
#do
#    echo "141 128 7 224 88 63 208 187 117 154 134 123 37 99" >> ./gr-air-modes/apps/log3.txt
#done
#
#################
#sleep $DELAY
#echo "141 128 7 224 248 0 0 0 0 41 40 209 36 248" >> ./gr-air-modes/apps/log3.txt
#sleep $DELAY
#echo "141 128 7 224 248 0 0 0 0 41 40 209 36 248" >> ./gr-air-modes/apps/log3.txt
#sleep $DELAY
#echo "141 128 7 224 248 0 0 0 0 41 40 209 36 248" >> ./gr-air-modes/apps/log3.txt
#sleep $DELAY
#echo "141 128 7 224 248 0 0 0 0 41 40 209 36 248" >> ./gr-air-modes/apps/log3.txt
#sleep $DELAY
#echo "141 128 7 224 248 0 0 0 0 41 40 209 36 248" >> ./gr-air-modes/apps/log3.txt
#sleep $DELAY
#echo "141 128 7 224 248 0 0 0 0 41 40 209 36 248" >> ./gr-air-modes/apps/log3.txt
#sleep $DELAY
#echo "141 128 7 224 248 0 0 0 0 41 40 209 36 248" >> ./gr-air-modes/apps/log3.txt
#sleep $DELAY
#echo "141 128 7 224 248 0 0 0 0 41 40 209 36 248" >> ./gr-air-modes/apps/log3.txt
#sleep $DELAY
#echo "141 128 7 224 248 0 0 0 0 41 40 209 36 248" >> ./gr-air-modes/apps/log3.txt
#sleep $DELAY
#echo "141 128 7 224 248 0 0 0 0 41 40 209 36 248" >> ./gr-air-modes/apps/log3.txt
#sleep $DELAY
#echo "141 128 7 224 248 0 0 0 0 41 40 209 36 248" >> ./gr-air-modes/apps/log3.txt
#sleep $DELAY
#echo "141 128 7 224 248 0 0 0 0 41 40 209 36 248" >> ./gr-air-modes/apps/log3.txt
#sleep $DELAY
#echo "141 128 7 224 248 0 0 0 0 41 40 209 36 248" >> ./gr-air-modes/apps/log3.txt
#sleep $DELAY
#echo "141 128 7 224 248 0 0 0 0 41 40 209 36 248" >> ./gr-air-modes/apps/log3.txt
#sleep $DELAY
#echo "141 128 7 224 248 0 0 0 0 41 40 209 36 248" >> ./gr-air-modes/apps/log3.txt
#sleep $DELAY
#echo "141 128 7 224 248 0 0 0 0 41 40 209 36 248" >> ./gr-air-modes/apps/log3.txt
#sleep $DELAY
#
#echo "141 128 7 224 25 64 186 17 51 186 234 53 82 55" >> ./gr-air-modes/apps/log3.txt
#sleep $DELAY
#echo "141 128 7 224 25 14 47 6 113 149 225 201 134 229" >> ./gr-air-modes/apps/log3.txt
#sleep $DELAY
#echo "141 128 7 224 25 225 25 52 243 0 0 193 81 237" >> ./gr-air-modes/apps/log3.txt
#
#sleep $DELAY
#echo "141 128 7 224 32 211 213 235 217 153 234 102 208 4" >> ./gr-air-modes/apps/log3.txt
#sleep $DELAY
#echo "141 128 7 224 32 211 216 24 227 246 218 56 33 147" >> ./gr-air-modes/apps/log3.txt
#sleep $DELAY
#echo "141 128 7 224 32 231 176 145 44 0 0 127 111 237" >> ./gr-air-modes/apps/log3.txt
#
## 10-th slot
#sleep $DELAY
#echo "141 128 7 224 0 0 0 0 0 0 0 228 87 192" >> ./gr-air-modes/apps/log3.txt
#
##sleep $DELAY
##echo "" >> ./gr-air-modes/apps/log3.txt
##sleep $DELAY
##echo "" >> ./gr-air-modes/apps/log3.txt
##sleep $DELAY
##echo "" >> ./gr-air-modes/apps/log3.txt

