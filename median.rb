def median(array)
    sorted = array.sort
	if sorted.length % 2 == 0
		(sorted[(array.length/2) - 1] + sorted[(array.length/2)]).to_f/2.0
        
	elsif sorted.length % 2 != 0
		sorted[(array.length/2)]
	end
end
