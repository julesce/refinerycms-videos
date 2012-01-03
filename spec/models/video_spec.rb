require 'spec_helper'

describe Video do

  def reset_video(options = {})
    @valid_attributes = {
      :id => 1,
      :name => "RSpec is great for testing too"
    }

    @video.destroy! if @video
    @video = Video.create!(@valid_attributes.update(options))
  end

  before(:each) do
    reset_video
  end

  context "validations" do
    
    it "rejects empty name" do
      Video.new(@valid_attributes.merge(:name => "")).should_not be_valid
    end

    it "rejects non unique name" do
      # as one gets created before each spec by reset_video
      Video.new(@valid_attributes).should_not be_valid
    end
    
  end

end