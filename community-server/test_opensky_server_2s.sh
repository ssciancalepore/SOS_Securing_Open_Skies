DELAY=1
#0.15 tested, ok!
DELAY_SHORT=0.0001

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

#for i in {1..12}
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

echo "141 128 7 224 25 244 108 133 90 118 189 136 218 246" >> ./gr-air-modes/apps/log3.txt
sleep $DELAY
echo "141 128 7 224 25 172 138 176 48 198 162 206 64 91" >> ./gr-air-modes/apps/log3.txt
sleep $DELAY
echo "141 128 7 224 25 49 63 35 59 0 0 67 76 64" >> ./gr-air-modes/apps/log3.txt
sleep $DELAY

echo "141 128 7 224 32 196 120 173 163 17 58 225 166 166" >> ./gr-air-modes/apps/log3.txt
sleep $DELAY
echo "141 128 7 224 32 158 241 54 65 251 67 175 25 117" >> ./gr-air-modes/apps/log3.txt
sleep $DELAY
echo "141 128 7 224 32 151 250 252 232 0 0 17 212 22" >> ./gr-air-modes/apps/log3.txt
sleep $DELAY

# 2nd slot

echo "141 128 7 224 88 63 224 187 109 154 152 153 130 194" >> ./gr-air-modes/apps/log3.txt
sleep $DELAY
#################
# these are fake messages

for i in {1..12}
do
    echo "141 128 7 224 88 63 208 187 117 154 134 123 37 99" >> ./gr-air-modes/apps/log3.txt
done

################
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

echo "141 128 7 224 25 109 61 241 179 138 155 221 32 91" >> ./gr-air-modes/apps/log3.txt
sleep $DELAY
echo "141 128 7 224 25 48 226 124 109 174 170 244 119 231" >> ./gr-air-modes/apps/log3.txt
sleep $DELAY
echo "141 128 7 224 25 132 69 19 15 0 0 24 169 195" >> ./gr-air-modes/apps/log3.txt
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
#################
# these are fake messages

for i in {1..12}
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
echo "141 128 7 224 25 81 192 87 222 29 119 131 14 33" >> ./gr-air-modes/apps/log3.txt
sleep $DELAY
echo "141 128 7 224 25 192 76 230 74 115 49 36 44 202" >> ./gr-air-modes/apps/log3.txt
sleep $DELAY
echo "141 128 7 224 25 83 54 78 12 0 0 188 154 41" >> ./gr-air-modes/apps/log3.txt

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
#################
# these are fake messages

for i in {1..12}
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
echo "141 128 7 224 25 105 122 31 91 33 196 9 210 156" >> ./gr-air-modes/apps/log3.txt
sleep $DELAY
echo "141 128 7 224 25 10 180 94 243 5 254 66 75 226" >> ./gr-air-modes/apps/log3.txt
sleep $DELAY
echo "141 128 7 224 25 127 57 152 47 0 0 158 101 255" >> ./gr-air-modes/apps/log3.txt

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
#################
# these are fake messages

for i in {1..12}
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
echo "141 128 7 224 25 226 109 22 169 86 10 243 153 30" >> ./gr-air-modes/apps/log3.txt
sleep $DELAY
echo "141 128 7 224 25 48 82 36 69 132 227 186 20 238" >> ./gr-air-modes/apps/log3.txt
sleep $DELAY
echo "141 128 7 224 25 203 249 134 74 0 0 135 156 140" >> ./gr-air-modes/apps/log3.txt

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
#################
# these are fake messages

for i in {1..12}
do
    echo "141 128 7 224 88 63 208 187 117 154 134 123 37 99" >> ./gr-air-modes/apps/log3.txt
done

################
echo "141 128 7 224 248 0 0 0 0 41 40 209 36 248" >> ./gr-air-modes/apps/log3.txt
sleep $DELAY
echo "141 128 7 224 248 0 0 0 0 41 40 209 36 248" >> ./gr-air-modes/apps/log3.txt

sleep $DELAY
echo "141 128 7 224 25 135 140 78 22 95 165 190 137 93" >> ./gr-air-modes/apps/log3.txt
sleep $DELAY
echo "141 128 7 224 25 171 73 193 139 210 187 126 147 151" >> ./gr-air-modes/apps/log3.txt
sleep $DELAY
echo "141 128 7 224 25 136 0 140 143 0 0 143 15 146" >> ./gr-air-modes/apps/log3.txt

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
#################
# these are fake messages

for i in {1..12}
do
    echo "141 128 7 224 88 63 208 187 117 154 134 123 37 99" >> ./gr-air-modes/apps/log3.txt
done

################
echo "141 128 7 224 248 0 0 0 0 41 40 209 36 248" >> ./gr-air-modes/apps/log3.txt

sleep $DELAY
echo "141 128 7 224 25 181 68 168 240 100 27 55 200 109" >> ./gr-air-modes/apps/log3.txt
sleep $DELAY
echo "41 128 7 224 25 242 222 253 155 32 147 47 40 59" >> ./gr-air-modes/apps/log3.txt
sleep $DELAY
echo "141 128 7 224 25 9 187 27 199 0 0 84 37 91" >> ./gr-air-modes/apps/log3.txt

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
echo "141 128 7 224 248 0 0 0 0 41 40 209 36 248" >> ./gr-air-modes/apps/log3.txt
sleep $DELAY
echo "141 128 7 224 248 0 0 0 0 41 40 209 36 248" >> ./gr-air-modes/apps/log3.txt
sleep $DELAY
echo "141 128 7 224 248 0 0 0 0 41 40 209 36 248" >> ./gr-air-modes/apps/log3.txt
sleep $DELAY
echo "141 128 7 224 248 0 0 0 0 41 40 209 36 248" >> ./gr-air-modes/apps/log3.txt
#################
# these are fake messages

for i in {1..12}
do
    echo "141 128 7 224 88 63 208 187 117 154 134 123 37 99" >> ./gr-air-modes/apps/log3.txt
done

################

sleep $DELAY
echo "141 128 7 224 25 166 141 191 60 214 245 178 88 16" >> ./gr-air-modes/apps/log3.txt
sleep $DELAY
echo "141 128 7 224 25 78 125 84 29 171 231 129 16 203" >> ./gr-air-modes/apps/log3.txt
sleep $DELAY
echo "141 128 7 224 25 208 2 233 140 0 0 40 8 93" >> ./gr-air-modes/apps/log3.txt

sleep $DELAY
echo "141 128 7 224 32 155 83 221 152 6 119 12 214 196" >> ./gr-air-modes/apps/log3.txt
sleep $DELAY
echo "141 128 7 224 32 96 184 124 127 179 121 238 161 199" >> ./gr-air-modes/apps/log3.txt
sleep $DELAY
echo "141 128 7 224 32 2 65 24 103 0 0 177 14 227" >> ./gr-air-modes/apps/log3.txt

# 9-th slot
sleep $DELAY
echo "141 128 7 224 248 0 0 0 0 41 40 209 36 248" >> ./gr-air-modes/apps/log3.txt


#sleep $DELAY
#echo "" >> ./gr-air-modes/apps/log3.txt
#sleep $DELAY
#echo "" >> ./gr-air-modes/apps/log3.txt
#sleep $DELAY
#echo "" >> ./gr-air-modes/apps/log3.txt
