defmodule CircleTest do

	def remaining_place(arr, index) do
		process_list(arr, index) |> find_place(0)
	end

	defp process_list(arr, index) when index == 0, do: arr

	defp process_list(arr, index) do
		Enum.slice(arr, index, length(arr)) ++ Enum.slice(arr, 0, index)
	end

	defp find_place(arr, start_at) when length(arr) > 1 do
		current_last_item = List.last(arr)

		ordered_array = Stream.with_index(arr)
		|> Enum.filter(fn({_,i}) -> 
		 	if start_at == 0, do: rem(i, 2) == 0, else: rem(i, 2) != 0
		end)
		|> Enum.map(fn({v,_}) -> v end)

		last_item = List.last(ordered_array)

		cond do
			current_last_item == last_item ->
				find_place(ordered_array, 1)
			current_last_item != last_item ->
				find_place(ordered_array, 0)
		end
		
	end

	defp find_place(arr, _) when length(arr) == 1, do: List.last(arr)

end    
