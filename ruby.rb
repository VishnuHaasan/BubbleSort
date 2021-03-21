#Default sort by ascending order.
def bubble_sort(array)
  issorthappen = false;
  for i in 1..array.length
    issorthappen = false;
    for j in 0..array.length-2
      if array[j]>array[j+1]
        array[j],array[j+1] = array[j+1],array[j];
        issorthappen = true;
      end;
    end;
    return array unless issorthappen;
  end;
  return array;
end;
#Sort by condition by passing a block as argument.
def bubble_sort_by(array)
  issorthappen = false;
  for i in 1..array.length
    issorthappen = false;
    for j in 0..array.length-2
      if (yield array[j],array[j+1]).to_i > 0
        array[j],array[j+1] = array[j+1],array[j];
        issorthappen = true;
      end;
    end;
    return array unless issorthappen;
  end;
  return array;
end;
proc = Proc.new{|l,r| l <=> r};
p bubble_sort([4,3,78,2,0,2]);
p bubble_sort_by([4,3,78,2,0,2],&proc);