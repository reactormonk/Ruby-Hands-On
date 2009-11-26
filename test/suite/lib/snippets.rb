require 'snippets'
BareTest.suite "Hands-on" do

  suite 'Snippets' do

    suite '#summarize' do

      setup :input, "simple example" do
        @input = [*1..5] + [*4..10]
        @input.shuffle!
        @result = {1=>1, 2=>1, 3=>1, 4=>2, 5=>2, 6=>1, 7=>1, 8=>1, 9=>1, 10=>1}
      end

      setup :input, "complex example" do
        @input = [*-3..5] + [*2..4] + [:simple, :foo, :baz] * 3
        @input.shuffle!
        @result = {-3=>1, -2=>1, -1=>1, 0=>1, 1=>1, 2=>2, 3=>2, 4=>2, 5=>1, :simple=>3, :foo=>3, :baz=>3}
      end

      assert "summarize with :input" do
        @result == Snippets.summarize(@input)
      end

    end

  end
end
