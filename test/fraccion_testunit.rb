require 'lib/fraccion'
require 'test/unit'

class TestPoint < Test::Unit::TestCase
    
    def setup
        @fraccion1 = Fracion.new(2,3)
        @fraccion2 = Fracion.new(2,4)
    end

    def test_simple
        assert_equal("7/6", (@fraccion1 + @fraccion2).to_s)
        assert_equal("1/6", (@fraccion1 - @fraccion2).to_s)
        assert_equal("1/3", (@fraccion1 * @fraccion2).to_s)
        assert_equal("4/3", (@fraccion1 / @fraccion2).to_s)
    end
end    
    
    
