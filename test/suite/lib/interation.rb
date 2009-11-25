require 'iteration'
BareTest.suite "Hands-on" do

  suite 'Iteration' do
    
    suite 'Arrays' do

      suite "#add_2" do

        setup :input, "first example" do
          @input = [*0..10]
          @result = [*2..12]
        end

        setup :input, "second example" do
          @input = [10, 2, 1, -2, 14, -1, 13, -4, 6, 8, -5, 3, 7, 12, 9, -3, 0, 15, 11, 5, 4]
          @result = [12, 4, 3, 0, 16, 1, 15, -2, 8, 10, -3, 5, 9, 14, 11, -1, 2, 17, 13, 7, 6]
        end

        assert "#add_2 with :input" do
          @result == Iteration.add_2(@input)
        end
      end

      suite "#del_sort" do

        setup :input, "first example" do
          @input = [*0..10]
          @result = [*4..10]
        end

        setup :input, "second example" do
          @input = [10, 2, 1, -2, 14, -1, 13, -4, 6, 8, -5, 3, 7, 12, 9, -3, 0, 15, 11, 5, 4]
          @result = [*4..15]
        end

        assert "del_sort with :input" do
          @result == Iteration.del_sort(@input)
        end
      end

      suite "#odd_numbers" do

        setup :input, "first example" do
          @input = [*0..10]
          @result = [1,3,5,7,9]
        end

        setup :input, "second example" do
          @input = [*-5..15].sort_by{rand}
          @result = [-5,-3,-1,1,3,5,7,9,11,13,15]
        end

        assert "odd_numbers with :input" do
          equal_unordered(@result, Iteration.odd_numbers(@input))
        end

      end

      suite "#delete_every_2" do

        setup :input, "first example" do
          @input = [*0..10] + [*40..50]
          @result = [0,2,4,6,8,10,40,42,44,46,48,50]
        end

        setup :input, "second example" do
          @input = [*-5..5] - [*-2..2]
          @result = [-5,-3,4]
        end

        assert "odd_numbers with :input" do
          @result == Iteration.delete_every_2(@input)
        end

      end

    end
  end
end

