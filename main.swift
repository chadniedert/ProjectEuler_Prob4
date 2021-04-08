// Link to problem: https://projecteuler.net/problem=4

var max = 0
var ones, tens, hundreds, thousands, tenThousands, hundredThousands

for i in 100...999 {
	for j in 100...999 {
		var prod = i * j

		// determine if number is 5 digits or 6 digits
		if prod < 100_000 {
			ones = prod % 10
			prod /= 10
			tens = prod % 10
			prod /= 10
			hundreds = prod % 10
			prod /= 10
			thousands = prod % 10
			prod /= 10
			tenThousands = prod
			if ones == tenThousands && tens == thousands && prod > max {
				max = prod
				print("i * j = " + i + " * " + j + " = " i * j) 
			}
		} else {
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
			if ones == hundredThousands && tens == tenThousands && hundreds == thousands && prod > max {
				max = prod
				print("i * j = " + i + " * " + j + " = " i * j) 
			}
		}

	}
}