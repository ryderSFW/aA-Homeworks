require 'rspec'
require 'lru_cache'

describe 'LRUCache' do
    let(:cache) {LRUCache.new(4)}
    describe '#add' do 
        before(:each) {
            cache.add('Mario')
            cache.add('Coin')
            cache.add('Bowser')
            cache.add('Princess')
        }
        it 'adds an element to the end of our cache array' do 
            expect do 
                cache.show
            end.to output("[\"Mario\", \"Coin\", \"Bowser\", \"Princess\"]\n").to_stdout
        end
        it 'does not add duplicates instead moves the would-be dup to the most recent pos in our cache' do 
            cache.add('Mario')
            expect do 
                cache.show
            end.to output("[\"Coin\", \"Bowser\", \"Princess\", \"Mario\"]\n").to_stdout
        end
        it 'removes the oldest element if our cache is full' do 
            cache.add('Mario')
            cache.add('Pipe')
            expect do
                cache.show
            end.to output("[\"Bowser\", \"Princess\", \"Mario\", \"Pipe\"]\n").to_stdout
        end
    end
end