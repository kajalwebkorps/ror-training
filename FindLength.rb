class FindLenght
  def find_length
    arr1 = []
    arr = ['Ruby','Rails','C42']
    for i in 0...arr.length
      arr1 << arr[i].length
    end
    puts arr1
  end
end

fl = FindLenght.new
fl.find_length