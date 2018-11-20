DELAY=1
#0.15 tested, ok!
DELAY_SHORT=0.0001
#DELAY_MED=0.3

#echo "gr-air-modes warning: numpy+scipy not installed, FlightGear interface not supported
#Setting gain to 18
#Gain is 18
#Rate is 4000000" > ./gr-air-modes/apps/log3.txt

echo "141 128 7 224 32 145 211 233 101 139 250 78 89 208" > ./gr-air-modes/apps/log3.txt
echo "141 128 7 224 32 145 211 233 101 139 250 78 89 208" > ./gr-air-modes/apps/log1.txt
sleep $DELAY

echo "141 128 7 224 32 194 221 147 182 12 246 233 184 206" >> ./gr-air-modes/apps/log3.txt
sleep $DELAY

echo "141 128 7 224 32 230 200 218 221 0 0 215 104 123" >> ./gr-air-modes/apps/log3.txt
#echo "141 128 7 224 32 230 200 218 221 0 0 215 104 123" >> ./gr-air-modes/apps/log1.txt
sleep $DELAY
echo "141 128 7 224 233 72 130 0 9 56 16 36 192 123" >> ./gr-air-modes/apps/log3.txt
#echo "141 128 7 224 233 72 130 0 9 56 16 36 192 123" >> ./gr-air-modes/apps/log1.txt
sleep $DELAY
echo "141 128 7 224 233 72 130 0 9 56 16 36 192 123" >> ./gr-air-modes/apps/log3.txt
sleep $DELAY
echo "141 128 7 224 248 0 0 0 0 41 40 209 36 248" >> ./gr-air-modes/apps/log3.txt
#echo "141 128 7 224 248 0 0 0 0 41 40 209 36 248" >> ./gr-air-modes/apps/log1.txt
sleep $DELAY

#################
# these are fake messages
#sleep $DELAY_SHORT
for i in 0 1 2 3 4 5 6 7
do
    echo "141 128 7 224 88 63 208 187 117 154 134 123 37 99" >> ./gr-air-modes/apps/log3.txt
    #sleep $DELAY_SHORT
done

################

echo "141 128 7 224 88 63 196 116 25 80 122 176 135 144" >> ./gr-air-modes/apps/log3.txt
#echo "141 128 7 224 88 63 196 116 25 80 122 176 135 144" >> ./gr-air-modes/apps/log1.txt

sleep $DELAY
echo "141 128 7 224 153 81 91 137 32 136 27 101 22 29" >> ./gr-air-modes/apps/log3.txt


sleep $DELAY
echo "141 128 7 224 25 106 111 3 230 161 19 66 93 226" >> ./gr-air-modes/apps/log3.txt
sleep $DELAY
echo "141 128 7 224 25 86 128 161 154 102 65 207 140 2" >> ./gr-air-modes/apps/log3.txt
sleep $DELAY
echo "141 128 7 224 25 70 56 99 43 0 0 29 68 226" >> ./gr-air-modes/apps/log3.txt
sleep $DELAY
echo "141 128 7 224 32 196 120 173 163 17 58 225 166 166" >> ./gr-air-modes/apps/log3.txt
sleep $DELAY
echo "141 128 7 224 32 158 241 54 65 251 67 175 25 117" >> ./gr-air-modes/apps/log3.txt
sleep $DELAY
echo "141 128 7 224 32 151 250 252 232 0 0 17 212 22" >> ./gr-air-modes/apps/log3.txt
sleep $DELAY
echo "141 128 7 224 35 36 115 241 223 13 32 73 27 0" >> ./gr-air-modes/apps/log3.txt
sleep $DELAY

#2nd- slot

echo "141 128 7 224 88 63 208 187 117 154 134 123 37 99" >> ./gr-air-modes/apps/log3.txt
sleep $DELAY
echo "141 128 7 224 88 63 224 187 109 154 152 153 130 194" >> ./gr-air-modes/apps/log3.txt
sleep $DELAY

#################
# these are fake messages
#sleep $DELAY_SHORT
#################
# these are fake messages
#sleep $DELAY_SHORT
for i in 0 1 2 3 4 5 6 7
do
    echo "141 128 7 224 88 63 208 187 117 154 134 123 37 99" >> ./gr-air-modes/apps/log3.txt
done

################

################


echo "141 128 7 224 153 81 91 137 32 140 27 93 32 29" >> ./gr-air-modes/apps/log3.txt
sleep $DELAY
echo "141 128 7 224 153 81 92 137 32 144 28 3 70 83" >> ./gr-air-modes/apps/log3.txt
sleep $DELAY
echo "141 128 7 224 25 89 30 116 243 55 181 244 154 84" >> ./gr-air-modes/apps/log3.txt
sleep $DELAY
echo "141 128 7 224 25 202 79 182 249 99 142 95 133 42" >> ./gr-air-modes/apps/log3.txt
sleep $DELAY
echo "141 128 7 224 25 44 13 96 180 0 0 23 111 72" >> ./gr-air-modes/apps/log3.txt
sleep $DELAY
echo "141 128 7 224 32 174 254 188 130 73 224 245 149 253" >> ./gr-air-modes/apps/log3.txt
sleep $DELAY
echo "141 128 7 224 32 5 85 171 232 151 134 149 11 147" >> ./gr-air-modes/apps/log3.txt
sleep $DELAY
echo "141 128 7 224 32 212 72 231 249 0 0 216 96 57" >> ./gr-air-modes/apps/log3.txt
sleep $DELAY
echo "141 128 7 224 88 65 0 187 89 154 202 58 107 220" >> ./gr-air-modes/apps/log3.txt

#3-rd- slot
sleep $DELAY
echo "141 128 7 224 248 0 0 0 0 41 40 209 36 248" >> ./gr-air-modes/apps/log3.txt
sleep $DELAY

#################
# these are fake messages
#sleep $DELAY_SHORT
for i in 0 1 2 3 4 5 6 7
do
    echo "141 128 7 224 88 63 208 187 117 154 134 123 37 99" >> ./gr-air-modes/apps/log3.txt
done

################


echo "141 128 7 224 248 0 0 0 0 41 40 209 36 248" >> ./gr-air-modes/apps/log3.txt
sleep $DELAY
echo "141 128 7 224 248 0 0 0 0 41 40 209 36 248" >> ./gr-air-modes/apps/log3.txt
sleep $DELAY
echo "141 128 7 224 248 0 0 0 0 41 40 209 36 248" >> ./gr-air-modes/apps/log3.txt
sleep $DELAY
echo "141 128 7 224 25 232 110 193 53 249 100 214 229 26" >> ./gr-air-modes/apps/log3.txt
sleep $DELAY
echo "141 128 7 224 25 161 114 198 111 44 227 188 2 140" >> ./gr-air-modes/apps/log3.txt
sleep $DELAY
echo "141 128 7 224 25 71 189 220 252 0 0 76 131 28" >> ./gr-air-modes/apps/log3.txt
sleep $DELAY
echo "141 128 7 224 32 102 82 100 183 214 156 136 165 236" >> ./gr-air-modes/apps/log3.txt
sleep $DELAY
echo "141 128 7 224 32 17 65 240 139 35 183 139 66 117" >> ./gr-air-modes/apps/log3.txt
sleep $DELAY
echo "141 128 7 224 32 222 227 204 213 0 0 221 75 85" >> ./gr-air-modes/apps/log3.txt
sleep $DELAY
echo "141 128 7 224 248 0 0 0 0 41 40 209 36 248" >> ./gr-air-modes/apps/log3.txt

#4-th slot
sleep $DELAY

#################
# these are fake messages
#sleep $DELAY_SHORT
for i in 0 1 2 3 4 5 6 7
do
    echo "141 128 7 224 88 63 208 187 117 154 134 123 37 99" >> ./gr-air-modes/apps/log3.txt
done

################


echo "141 128 7 224 248 0 0 0 0 41 40 209 36 248" >> ./gr-air-modes/apps/log3.txt
sleep $DELAY
echo "141 128 7 224 248 0 0 0 0 41 40 209 36 248" >> ./gr-air-modes/apps/log3.txt
sleep $DELAY
echo "141 128 7 224 248 0 0 0 0 41 40 209 36 248" >> ./gr-air-modes/apps/log3.txt
sleep $DELAY
echo "141 128 7 224 248 0 0 0 0 41 40 209 36 248" >> ./gr-air-modes/apps/log3.txt
sleep $DELAY
echo "141 128 7 224 25 39 102 216 116 22 39 219 158 72" >> ./gr-air-modes/apps/log3.txt
sleep $DELAY
echo "141 128 7 224 25 2 185 172 114 226 174 224 123 57" >> ./gr-air-modes/apps/log3.txt
sleep $DELAY
echo "141 128 7 224 25 181 199 129 144 0 0 9 199 109" >> ./gr-air-modes/apps/log3.txt
sleep $DELAY
echo "141 128 7 224 32 42 168 248 223 46 172 143 114 73" >> ./gr-air-modes/apps/log3.txt
sleep $DELAY
echo "141 128 7 224 32 67 176 252 42 233 7 44 114 106" >> ./gr-air-modes/apps/log3.txt
sleep $DELAY
echo "141 128 7 224 32 239 105 14 42 0 0 91 6 108" >> ./gr-air-modes/apps/log3.txt
sleep $DELAY

#################
# these are fake messages
#sleep $DELAY_SHORT
for i in 0 1 2 3 4 5 6 7
do
    echo "141 128 7 224 88 63 208 187 117 154 134 123 37 99" >> ./gr-air-modes/apps/log3.txt
done

################

echo "141 128 7 224 248 0 0 0 0 41 40 209 36 248" >> ./gr-air-modes/apps/log3.txt
sleep $DELAY

# 5-th slot

echo "141 128 7 224 248 0 0 0 0 41 40 209 36 248" >> ./gr-air-modes/apps/log3.txt
sleep $DELAY
echo "141 128 7 224 248 0 0 0 0 41 40 209 36 248" >> ./gr-air-modes/apps/log3.txt
sleep $DELAY
echo "141 128 7 224 248 0 0 0 0 41 40 209 36 248" >> ./gr-air-modes/apps/log3.txt
sleep $DELAY
echo "141 128 7 224 248 0 0 0 0 41 40 209 36 248" >> ./gr-air-modes/apps/log3.txt
sleep $DELAY
echo "141 128 7 224 25 158 80 12 92 72 246 77 60 81" >> ./gr-air-modes/apps/log3.txt
sleep $DELAY
echo "141 128 7 224 25 120 178 52 49 135 235 10 170 0" >> ./gr-air-modes/apps/log3.txt
sleep $DELAY
echo "141 128 7 224 25 224 206 114 220 0 0 184 11 71" >> ./gr-air-modes/apps/log3.txt
sleep $DELAY
echo "141 128 7 224 32 192 29 9 119 101 176 95 170 121" >> ./gr-air-modes/apps/log3.txt
sleep $DELAY
echo "141 128 7 224 32 112 90 218 220 0 139 108 198 145" >> ./gr-air-modes/apps/log3.txt
sleep $DELAY
echo "141 128 7 224 32 140 24 30 64 0 0 61 252 133" >> ./gr-air-modes/apps/log3.txt
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

#################
# these are fake messages
#sleep $DELAY_SHORT
for i in 0 1 2 3 4 5 6 7
do
    echo "141 128 7 224 88 63 208 187 117 154 134 123 37 99" >> ./gr-air-modes/apps/log3.txt
done

################

sleep $DELAY
echo "141 128 7 224 25 106 105 0 205 56 28 145 207 189" >> ./gr-air-modes/apps/log3.txt
sleep $DELAY
echo "141 128 7 224 25 160 13 154 61 161 37 115 232 140" >> ./gr-air-modes/apps/log3.txt
sleep $DELAY
echo "141 128 7 224 25 16 151 5 29 0 0 0 108 40" >> ./gr-air-modes/apps/log3.txt
sleep $DELAY
echo "141 128 7 224 32 53 239 160 75 159 48 186 235 65" >> ./gr-air-modes/apps/log3.txt
sleep $DELAY
echo "141 128 7 224 32 194 253 194 159 253 88 150 125 47" >> ./gr-air-modes/apps/log3.txt
sleep $DELAY
echo "141 128 7 224 32 160 171 42 201 0 0 211 75 21" >> ./gr-air-modes/apps/log3.txt
sleep $DELAY
echo "141 128 7 224 248 0 0 0 0 41 40 209 36 248" >> ./gr-air-modes/apps/log3.txt

