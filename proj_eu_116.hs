{- PROJECT EULER
 - PROBLEM 116
 - 6904th person to solve
 -}


-- combinations; choose x y is the same as x choose y
combine :: Integer -> Integer -> Integer
combine x y = numerator `div ` denomenator
	where numerator = factorial x
	      denomenator = (factorial y) * factorial (x-y)

-- standard math factorial (!)
factorial n = product [1..n]

red_wid = 2
green_wid = 3
blue_wid = 4

-- places the specified number of colored titles with specified width
-- into row of TOTAL black tiles; new_pop "glues" the tiles together and gets
-- the new population number; num_color specifies how many to put into the row
place_tile :: Integer -> Integer -> Integer -> Integer
place_tile num_color width total = combine new_pop num_color
					where
					  new_pop = total-colored+num_color 
					  colored = num_color * width

total_placements :: Integer -> Integer
total_placements total = (num_red total) + (num_green total) + (num_blue total)


num_red total = sum([(place_tile x red_wid total) | x <- range])
		where
		    range = [1..(total `div` red_wid)]

num_green total = sum([(place_tile x green_wid total) | x <- range])
		  where
		      range = [1..(total `div` green_wid)]

num_blue total = sum([(place_tile x blue_wid total) | x <- range])
		 where
		     range = [1..(total `div` blue_wid)]
