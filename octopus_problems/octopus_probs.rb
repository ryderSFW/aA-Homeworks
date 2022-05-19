#eat the biggest fish
#do it by comparing every fish in the array to every other fish
fish = ['fish', 'fiiish', 'fiiiiish', 'fiiiish', 'fffish', 'ffiiiiisshh', 'fsh', 'fiiiissshhhhhh']
def eat_biggest_fish(fish)
    biggest = nil
    fish.each do |fishy|
        new_biggest = true
        fish.each {|f| new_biggest = false if f.length > fishy.length}
        biggest = fishy if new_biggest
    end
    biggest
end

p eat_biggest_fish(fish)

def dominant_octopus_sort(fish)
    return fish if fish.length == 1
    pivot = fish.length / 2
    front, back = fish[0...pivot], fish[pivot..-1]
    front_arr = dominant_octopus_sort(front)
    back_arr = dominant_octopus_sort(back)
    sorted = []
    until sorted.length == fish.length
        if front_arr.empty? || back_arr.empty?
            sorted += front_arr + back_arr
            break
        end
        case front_arr[0].length <=> back_arr[0].length
        when 1 then sorted << back_arr.shift
        when -1 then sorted << front_arr.shift
        when 0 
            sorted << front_arr.shift
            sorted << back_arr.shift
        end
    end
    sorted
end
def dominant_octopus(fish)
    dominant_octopus_sort(fish)[-1]
end

p dominant_octopus(fish)

def clever_octopus(fish)
    longest = fish[0]
    fish.each {|fishy| longest = fishy if fishy.length > longest.length}
    longest
end

p clever_octopus(fish)

tiles_array = ["up", "right-up", "right", "right-down", "down", "left-down", "left",  "left-up" ]

def slow_dance(dir, arr)
    arr.each_with_index do |ele, i|
        return i if ele == dir
    end
end

p slow_dance("up", tiles_array)
p slow_dance("right-down", tiles_array)

def hash_tiles_array(tiles_array)
    hashed = {}
    tiles_array.each_with_index do |ele, i|
        hashed[ele] = i
    end
    hashed
end

tiles_hash = hash_tiles_array(tiles_array)

def fast_dance(dir, hash)
    hash[dir]
end

p fast_dance("up", tiles_hash)
p fast_dance("right-down", tiles_hash)