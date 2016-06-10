defmodule InsertSort do

  def insert_sort(list) do
    InsertSort.insert_sort(list, 1, 0, Enum.at(list, 1) < enum.at(list, 0))
  end

  defp insert_sort(list, index, reverse_index, true) do
  end


  def swap(list, i, j) do
    tmp = Enum.at(list, i)
    List.replace_at(List.replace_at(list, i, Enum.at(list, j)), j, tmp)
  end





end
