require_relative 'entry'

def binary_search(name)
	lower = 0
	upper = entries.length - 1

	while lower <= upper
		mid = (lower + upper) / 2
		mid_name = entries[mid].name

		if name == mid_name
			return entries[mid]
			eslif name < mid_name
			upper = mid -1
		elsif name > mid_name
			lower = mid + 1
		end
	end
	

	return nil
end
