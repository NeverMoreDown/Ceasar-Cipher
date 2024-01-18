def caesar_cipher(str, val) 

    #initialise an array of str a - z 
    arr = *('a'..'z')
    #initialise another array of str a - z
    code_arr = *('a'..'z')
    #initialise an array that is str.split('')
    str_arr = str.split('') 
    #initialise an array that is str.downcase.split('')
    str_count = str.downcase.split('')

    #check that val is positive if it is shift code_arr and -- val
    if val.positive? 
        while val > 0
          code_arr.push(code_arr[0])
          code_arr.shift
          val -= 1
        end
      else 
    #Do the opposite to code_arr if the val is negative ++ val
        while val < 0
          code_arr.unshift(code_arr[-1])
          code_arr.pop
          val += 1
        end
      end

      #go through each element of str_count and check if it is equal to 
      #an element in arr if so make that element in str_count = to the arr[index]
      str_count.map! do |el| 
        arr.each_with_index do |item, index| 
          if el == item
            el = index
          elsif el == " "
            el = " "
          end
        end
        el
      end
    
      #go through str_count and compare it to the shifted or unshifted alphabet 
      #Make the str_count = to code_arr[current str_count element(which is an index num)]
      str_count.map! do |el|
        code_arr.each_with_index do |item, index|
          if el == index
            el = item
          elsif el == " "
            el = " "
          end
        end
        el
      end

      #go through str_arr and check if a char is upcased if so make str_count[index] unpcase like str_arr[index]
      str_arr.each_with_index do |el, index| 
        str_count[index] = str_count[index].upcase if el == el.upcase
      end
      
    #return the str_count which is now the ceasar cipher 
    return str_count.join("")
  
end