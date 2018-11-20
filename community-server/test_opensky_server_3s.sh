DELAY=0.5
#0.15 tested, ok!
DELAY_SHORT=0.0001
START=1
END=15

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

#for (( c=$START; c<=$END; c++ ))
#do
#    echo "141 128 7 224 88 63 208 187 117 154 134 123 37 99" >> ./gr-air-modes/apps/log3.txt
#done

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

echo "141 128 7 224 25 51 239 69 32 127 251 254 215 240" >> ./gr-air-modes/apps/log3.txt
sleep $DELAY
echo "141 128 7 224 25 33 255 53 55 148 89 149 129 149" >> ./gr-air-modes/apps/log3.txt
sleep $DELAY
echo "141 128 7 224 25 169 47 18 72 0 0 9 232 140" >> ./gr-air-modes/apps/log3.txt
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
echo "141 128 7 224 248 0 0 0 0 41 40 209 36 248" >> ./gr-air-modes/apps/log3.txt
sleep $DELAY
#################
# these are fake messages

for (( c=$START; c<=$END; c++ ))
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

echo "141 128 7 224 25 23 182 14 44 144 139 1 114 197" >> ./gr-air-modes/apps/log3.txt
sleep $DELAY
echo "141 128 7 224 25 198 217 230 127 97 141 7 235 44" >> ./gr-air-modes/apps/log3.txt
sleep $DELAY
echo "141 128 7 224 25 255 165 174 105 0 0 48 65 107" >> ./gr-air-modes/apps/log3.txt
sleep $DELAY

echo "141 128 7 224 32 174 254 188 130 73 224 245 149 253" >> ./gr-air-modes/apps/log3.txt
sleep $DELAY
echo "141 128 7 224 32 5 85 171 232 151 134 149 11 147" >> ./gr-air-modes/apps/log3.txt
sleep $DELAY
echo "141 128 7 224 32 212 72 231 249 0 0 216 96 57" >> ./gr-air-modes/apps/log3.txt
sleep $DELAY

#3rd-slot
echo "141 128 7 224 248 0 0 0 0 41 40 209 36 248" >> ./gr-air-modes/apps/log3.txt
sleep $DELAY
echo "141 128 7 224 248 0 0 0 0 41 40 209 36 248" >> ./gr-air-modes/apps/log3.txt
sleep $DELAY
echo "141 128 7 224 248 0 0 0 0 41 40 209 36 248" >> ./gr-air-modes/apps/log3.txt
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
echo "141 128 7 224 25 36 169 87 251 85 19 42 39 5" >> ./gr-air-modes/apps/log3.txt
sleep $DELAY
echo "141 128 7 224 25 30 26 72 231 69 93 229 44 104" >> ./gr-air-modes/apps/log3.txt
sleep $DELAY
echo "141 128 7 224 25 168 154 105 113 0 0 63 73 150" >> ./gr-air-modes/apps/log3.txt
sleep $DELAY

echo "141 128 7 224 32 102 82 100 183 214 156 136 165 236" >> ./gr-air-modes/apps/log3.txt
sleep $DELAY
echo "141 128 7 224 32 17 65 240 139 35 183 139 66 117" >> ./gr-air-modes/apps/log3.txt
sleep $DELAY
echo "141 128 7 224 32 222 227 204 213 0 0 221 75 85" >> ./gr-air-modes/apps/log3.txt

#4th-slot
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
#################
# these are fake messages

for (( c=$START; c<=$END; c++ ))
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
echo "141 128 7 224 25 145 186 0 75 221 106 204 215 201" >> ./gr-air-modes/apps/log3.txt
sleep $DELAY
echo "141 128 7 224 25 239 212 156 31 91 73 89 141 197" >> ./gr-air-modes/apps/log3.txt
sleep $DELAY
echo "141 128 7 224 25 250 209 179 124 0 0 13 100 75" >> ./gr-air-modes/apps/log3.txt

sleep $DELAY
echo "141 128 7 224 32 42 168 248 223 46 172 143 114 73" >> ./gr-air-modes/apps/log3.txt
sleep $DELAY
echo "141 128 7 224 32 67 176 252 42 233 7 44 114 106" >> ./gr-air-modes/apps/log3.txt
sleep $DELAY
echo "141 128 7 224 32 239 105 14 42 0 0 91 6 108" >> ./gr-air-modes/apps/log3.txt

# 5th-slot
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
#################
# these are fake messages

for (( c=$START; c<=$END; c++ ))
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
echo "141 128 7 224 248 0 0 0 0 41 40 209 36 248" >> ./gr-air-modes/apps/log3.txt
sleep $DELAY
echo "141 128 7 224 248 0 0 0 0 41 40 209 36 248" >> ./gr-air-modes/apps/log3.txt
sleep $DELAY
echo "141 128 7 224 248 0 0 0 0 41 40 209 36 248" >> ./gr-air-modes/apps/log3.txt

sleep $DELAY
echo "141 128 7 224 25 138 48 19 58 77 237 142 124 251" >> ./gr-air-modes/apps/log3.txt
sleep $DELAY
echo "141 128 7 224 25 202 105 26 105 226 236 120 233 121" >> ./gr-air-modes/apps/log3.txt
sleep $DELAY
echo "141 128 7 224 25 118 155 176 177 0 0 117 31 241" >> ./gr-air-modes/apps/log3.txt

sleep $DELAY
echo "141 128 7 224 32 192 29 9 119 101 176 95 170 121" >> ./gr-air-modes/apps/log3.txt
sleep $DELAY
echo "141 128 7 224 32 112 90 218 220 0 139 108 198 145" >> ./gr-air-modes/apps/log3.txt
sleep $DELAY
echo "141 128 7 224 32 140 24 30 64 0 0 61 252 133" >> ./gr-air-modes/apps/log3.txt

# 6th-slot
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
#################
# these are fake messages

for (( c=$START; c<=$END; c++ ))
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
echo "141 128 7 224 25 73 175 4 170 137 108 13 70 35" >> ./gr-air-modes/apps/log3.txt
sleep $DELAY
echo "141 128 7 224 25 22 198 156 146 65 72 46 227 131" >> ./gr-air-modes/apps/log3.txt
sleep $DELAY
echo "141 128 7 224 25 233 185 78 246 0 0 129 141 33" >> ./gr-air-modes/apps/log3.txt

sleep $DELAY
echo "141 128 7 224 32 53 239 160 75 159 48 186 235 65" >> ./gr-air-modes/apps/log3.txt
sleep $DELAY
echo "141 128 7 224 32 194 253 194 159 253 88 150 125 47" >> ./gr-air-modes/apps/log3.txt
sleep $DELAY
echo "141 128 7 224 32 160 171 42 201 0 0 211 75 21" >> ./gr-air-modes/apps/log3.txt
sleep $DELAY


# 7th-slot
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
#################
# these are fake messages

for (( c=$START; c<=$END; c++ ))
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
echo "141 128 7 224 25 223 55 102 252 87 6 61 47 193" >> ./gr-air-modes/apps/log3.txt
sleep $DELAY
echo "141 128 7 224 25 82 90 38 81 137 52 164 152 191" >> ./gr-air-modes/apps/log3.txt
sleep $DELAY
echo "141 128 7 224 25 202 101 121 209 0 0 209 152 197" >> ./gr-air-modes/apps/log3.txt

sleep $DELAY
echo "141 128 7 224 32 92 40 131 143 244 223 202 200 244" >> ./gr-air-modes/apps/log3.txt
sleep $DELAY
echo "141 128 7 224 32 79 130 41 57 157 160 107 115 64" >> ./gr-air-modes/apps/log3.txt
sleep $DELAY
echo "141 128 7 224 32 181 60 113 85 0 0 17 140 255" >> ./gr-air-modes/apps/log3.txt


# 8th-slot
sleep $DELAY
echo "141 128 7 224 248 0 0 0 0 41 40 209 36 248" >> ./gr-air-modes/apps/log3.txt
sleep $DELAY
echo "141 128 7 224 248 0 0 0 0 41 40 209 36 248" >> ./gr-air-modes/apps/log3.txt
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
echo "141 128 7 224 25 83 6 17 128 173 193 23 247 24" >> ./gr-air-modes/apps/log3.txt
sleep $DELAY
echo "141 128 7 224 25 101 185 142 199 25 97 101 132 65" >> ./gr-air-modes/apps/log3.txt
sleep $DELAY
echo "141 128 7 224 25 131 240 169 196 0 0 38 236 105" >> ./gr-air-modes/apps/log3.txt

sleep $DELAY
echo "141 128 7 224 32 155 83 221 152 6 119 12 214 196" >> ./gr-air-modes/apps/log3.txt
sleep $DELAY
echo "141 128 7 224 32 96 184 124 127 179 121 238 161 199" >> ./gr-air-modes/apps/log3.txt
sleep $DELAY
echo "141 128 7 224 32 2 65 24 103 0 0 177 14 227" >> ./gr-air-modes/apps/log3.txt

# 9-th slot
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
#################
# these are fake messages

for (( c=$START; c<=$END; c++ ))
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
echo "141 128 7 224 248 0 0 0 0 41 40 209 36 248" >> ./gr-air-modes/apps/log3.txt
sleep $DELAY
echo "141 128 7 224 248 0 0 0 0 41 40 209 36 248" >> ./gr-air-modes/apps/log3.txt
sleep $DELAY
echo "141 128 7 224 248 0 0 0 0 41 40 209 36 248" >> ./gr-air-modes/apps/log3.txt

sleep $DELAY
echo "141 128 7 224 25 14 47 203 159 95 232 98 157 176" >> ./gr-air-modes/apps/log3.txt
sleep $DELAY
echo "141 128 7 224 25 161 209 222 92 129 98 74 181 51" >> ./gr-air-modes/apps/log3.txt
sleep $DELAY
echo "141 128 7 224 25 216 180 89 32 0 0 151 17 255" >> ./gr-air-modes/apps/log3.txt

sleep $DELAY
echo "141 128 7 224 32 211 213 235 217 153 234 102 208 4" >> ./gr-air-modes/apps/log3.txt
sleep $DELAY
echo "141 128 7 224 32 211 216 24 227 246 218 56 33 147" >> ./gr-air-modes/apps/log3.txt
sleep $DELAY
echo "141 128 7 224 32 231 176 145 44 0 0 127 111 237" >> ./gr-air-modes/apps/log3.txt

# 10-th slot
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
#################
# these are fake messages

for (( c=$START; c<=$END; c++ ))
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
echo "141 128 7 224 248 0 0 0 0 41 40 209 36 248" >> ./gr-air-modes/apps/log3.txt

sleep $DELAY
echo "141 128 7 224 25 230 102 0 17 224 81 97 162 208" >> ./gr-air-modes/apps/log3.txt
sleep $DELAY
echo "141 128 7 224 25 103 108 2 208 162 94 190 225 19" >> ./gr-air-modes/apps/log3.txt
sleep $DELAY
echo "141 128 7 224 25 135 249 90 158 0 0 137 99 20" >> ./gr-air-modes/apps/log3.txt

sleep $DELAY
echo "141 128 7 224 32 253 247 68 176 131 94 25 143 254" >> ./gr-air-modes/apps/log3.txt
sleep $DELAY
echo "141 128 7 224 32 58 173 142 14 145 147 38 39 221" >> ./gr-air-modes/apps/log3.txt
sleep $DELAY
echo "141 128 7 224 32 95 8 204 226 0 0 196 143 173" >> ./gr-air-modes/apps/log3.txt

# 11-th slot
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
#################
# these are fake messages

for (( c=$START; c<=$END; c++ ))
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
echo "141 128 7 224 248 0 0 0 0 41 40 209 36 248" >> ./gr-air-modes/apps/log3.txt
sleep $DELAY
echo "141 128 7 224 248 0 0 0 0 41 40 209 36 248" >> ./gr-air-modes/apps/log3.txt
sleep $DELAY
echo "141 128 7 224 248 0 0 0 0 41 40 209 36 248" >> ./gr-air-modes/apps/log3.txt

sleep $DELAY
echo "141 128 7 224 25 150 109 19 164 10 192 102 139 217" >> ./gr-air-modes/apps/log3.txt
sleep $DELAY
echo "141 128 7 224 25 124 30 42 247 140 80 30 117 164" >> ./gr-air-modes/apps/log3.txt
sleep $DELAY
echo "141 128 7 224 25 138 79 54 109 0 0 190 128 85" >> ./gr-air-modes/apps/log3.txt

sleep $DELAY
echo "141 128 7 224 32 127 221 35 188 79 59 39 249 4" >> ./gr-air-modes/apps/log3.txt
sleep $DELAY
echo "141 128 7 224 32 224 30 194 70 190 196 76 43 182" >> ./gr-air-modes/apps/log3.txt
sleep $DELAY
echo "141 128 7 224 32 208 212 37 131 0 0 99 223 85" >> ./gr-air-modes/apps/log3.txt

sleep $DELAY
echo "141 128 7 224 248 0 0 0 0 41 40 209 36 248" >> ./gr-air-modes/apps/log3.txt

#sleep $DELAY
#echo "" >> ./gr-air-modes/apps/log3.txt
#sleep $DELAY
#echo "" >> ./gr-air-modes/apps/log3.txt
#sleep $DELAY
#echo "" >> ./gr-air-modes/apps/log3.txt

