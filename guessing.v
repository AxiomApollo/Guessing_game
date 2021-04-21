import os
import rand

const total_tries = 5

fn main() {
	mut input_num := 0
	mut counter := 1
	println("Hello, Let's guess some numbers!")
	min := os.input('enter min: ').int()
	max := os.input('enter max: ').int()
	secret_number := rand.i64_in_range(min, max + 1)

	// game loop
	for input_num != secret_number && counter <= total_tries {
		input_num = os.input('enter a number: ').int()
		if input_num < secret_number {
			println('too low')
			println('tries: $counter')
		} else if input_num > secret_number {
			println('too high')
			println('tries: $counter')
		} else {
			println('Congratulations You Won!!')
			println('took you: $counter tries')
		}
		counter++
	}
	println('Game Over.')
	exit(0) // cuze why not
}
