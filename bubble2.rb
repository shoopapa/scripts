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

def bubble_by(arr, &block)
    (arr.length - 1).times do
        i = 0
        (arr.length - 1).times do
            if block.call(arr[i], arr[i+1]) > 0
                move_forward(arr, i)
            end
            puts i += 1
        end
    end
    arr
end
array = ["hi", "hello", "dookie", "pee", "richie", "jospeh","joey", "joe_davis_is_cool", "ben_is_a_cheap_bastard"]


puts bubble_by(array) {|left, right| left.length - right.length}


