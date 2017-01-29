require 'test/unit'
require 'shoulda'
require_relative 'TennisScorer.rb'

class TennisScorerTest < Test::Unit::TestCase

  def assert_score(target)
    assert_equal(target, @ts.score)
  end

  context "Tennis scores" do
    setup do
      @ts = TennisScorer.new
    end

    should "start wit a score of 0-0" do
      assert_score("0-0")
    end

    should "be 15-0 if server wins" do
      @ts.give_point_to(:server)
      assert_score("15-0")
    end

    should "be 0-15 if receiver wins" do
      @ts.give_point_to(:receiver)
      assert_score("0-15")
    end

    should "be 15-15 if both of them wins one point" do
      @ts.give_point_to(:receiver)
      @ts.give_point_to(:server)
      assert_score("15-15")
    end

    should "be 45-0 after the server wins three points ahead" do
      3.times do
        @ts.give_point_to(:server)
      end
      assert_score("45-0")
    end

     should "be W-L after the server wins four points" do
       4.times do
         @ts.give_point_to(:server)
       end
       assert_score("W-L")
     end

     should "be L-W after the server wins four points" do
       4.times do
         @ts.give_point_to(:receiver)
       end
       assert_score("L-W")
     end

  end

end
