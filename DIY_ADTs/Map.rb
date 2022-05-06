class Map
    def initialize
        @mapping = []
    end
    def show
        @mapping.each do |subarr|
            puts "#{subarr[0]} => #{subarr[1]}"
        end
    end
    def get(key)
        @mapping.each do |subarr|
            return subarr[1] if subarr[0] == key
        end
        nil
    end
    def find_key_idx(key)
        @mapping.each_with_index {|subarr, i| return i if subarr[0] == key}
        nil
    end
    def set(key, value)
        if get(key).nil?
            @mapping.push([key, value])
        else
            @mapping[find_key_idx(key)] = [key, value]
        end
    end
    def delete(key)
        @mapping.delete_at(find_key_idx(key))
    end
end

if __FILE__ == $PROGRAM_NAME
    map = Map.new
    map.set('monkey', 'branch')
    map.set('seahorse', 'coral')
    map.show
    p map.get('monkey')
    map.set('monkey', 'chunky')
    map.show
    map.get('monkey')
    map.get('seahorse')
end