#simply swiches the order of and element in an array with the one right after it
def move_forward(arr, i)
    if i >= arr.length - 1
        arr
    else
        x = arr[i]
        arr[i] = arr[i+1]
        arr[i+1] = x
        arr
    end
end

#runs embedded loops (unoptimized) the inner loop checks if the current index (i) is greater than the one after.
#if it is greater the move_forward method is called. this procces is repeated untill the array is sorted.
def bubble_sort(arr)
    (arr.length - 1).times do
        i = 0
        (arr.length - 1).times do
            if arr[i] > arr[i+1]
                move_forward(arr, i)
            end
            i += 1
        end
    end
    arr.inspect
end

#this method uses a block to sort and the main differece is that instead of using the a greater than comparison 
#for the indexes it uses a block.
def bubble_by(arr, &block)
    (arr.length - 1).times do
        i = 0
        (arr.length - 1).times do
            if block.call(arr[i], arr[i+1]) > 0
                move_forward(arr, i)
            end
            i += 1
        end
    end
    arr.inspect
end

#test arrays for sorting
array_string = ["hi", "hello", "dookie", "pee", "richie", "jospeh","joey", "joe_davis_is_cool", "ben_is_a_cheap_bastard"]
array_int = [6,3,4,3674,234,43567,47,47,2,35,25,12,345,75,46,46]
puts bubble_sort(array_int)
puts bubble_by(array_string) {|left, right| left.length - right.length}
puts bubble_by(array_string) {|left, right| right.length - left.length}

