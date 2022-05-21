class LRUCache
    def initialize(cap)
        @cap = cap
        @cache = []
    end

    def count
      # returns number of elements currently in cache
      @cache.count
    end

    def add(el)
      # adds element to cache according to LRU principle
      idx = @cache.index(el)
      case idx
      when nil then add_to_cache(el)
      else 
        move_to_end(idx)
      end
    end

    def show
      # shows the items in the cache, with the LRU item first
      p @cache
    end

    private
    # helper methods go here!
    def add_to_cache(el)
        @cache.shift if count == @cap
        @cache.push(el)
    end
    def move_to_end(idx)
        temp = @cache[idx]
        @cache.delete_at(idx)
        @cache.push(temp)
    end
  end