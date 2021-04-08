// Link to problem: https://projecteuler.net/problem=4

var prod, ones, tens, hundreds, thousands, tenThousands, hundredThousands: Int

var prods: [Int] = []

// loop to build product array
for i in 100...999 {
	for j in 100...999 {
		prods.append(i * j)
	}	
}

let sortedDescending = Array(prods.sorted().reversed())

for num in sortedDescending {
	prod = num
	ones = prod % 10
	prod /= 10
	tens = prod % 10
	prod /= 10
	hundreds = prod % 10
	prod /= 10
	thousands = prod % 10
	prod /= 10
	tenThousands = prod % 10
	prod /= 10
	hundredThousands = prod

	if ones == hundredThousands && tens == tenThousands && hundreds == thousands {
		print(num)
		break
	}
}
