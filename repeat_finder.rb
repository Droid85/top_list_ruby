def repeat_findet(txt)
    top_list = []
    top = {}
    txt.downcase!
    arr = txt.split(/, /)
    uniq_arr = arr.uniq
    for i in 0..uniq_arr.size - 1
      top[arr.count(uniq_arr[i])] = uniq_arr[i]
    end
    if top.size < 0
        p top_list
    else
        for j in 0..2
            top_list.push(top.sort.reverse[j][1])
        end
        p top_list
    end
  end
  
  repeat_findet("Apple, banana, Banana, apple, Orange, banana, orange, kiwi, Orange, orange")
