require_relative 'TennisScorer'

describe "TennisScorer", "basic scoring" do
  before(:each) do
    @ts = TennisScorer.new
  end
it "should start with a score of 0-0" do
    @ts.score.should == "0-0"
end
it "should be 15-0 if the server wins a point" do
  @ts.give_point_to(:server)
  @ts.score.should == "15-0"
end
it "should be 0-15 if the receiver wins a point" do
  @ts.give_point_to(:receiver)
  @ts.score.should == "0-15"
end
it "should be 15-15 after they both win a point" do
  @ts.give_point_to(:receiver)
  @ts.give_point_to(:server)
  @ts.score.should == "15-15"
end
it "should be 45-0 after the server wins three points" do
  3.times do
    @ts.give_point_to(:server)
  end
  @ts.score.should == "45-0"
end
it "should be W-L after the server wins four points" do
  4.times do
    @ts.give_point_to(:server)
  end
  @ts.score.should == "W-L"
end
it "should be L-W after the server wins four points" do
  4.times do
    @ts.give_point_to(:receiver)
  end
  @ts.score.should == "L-W"
end

end
