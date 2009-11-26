require "hashes"
BareTest.suite "Hands-On" do

  suite 'Hashes' do

    suite "#mod_2_only" do
    
      setup :input, "simple example" do
        @input = { 1 => :foo, 2 => :bar, 3 => :baz, 4 => :simple, 5 => :complex, 6 => :text, 8 => "test"}
        @result = [:bar, :simple, :text, "test"]
      end
    
      setup :input, "complex example" do
        @input = { "foo" => :foo, "bar" => :bar, 4 => :baz, 6 => :bottles, 7 => :beer, "beer" => "more beer" }
        @result = [:baz, :bottles]
      end
    
      assert "#mod_2_only with :input" do
        equal_unordered(@result, Hashes.mod_2_only(@input))
      end
    
    end

  end

end
