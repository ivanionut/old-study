require 'rails_helper'

RSpec.describe "UserStories" do


  describe "GET /user_stories" do
    fixtures :products

    it "works! (now write some real specs)" do
      LineItem.delete_all
      Order.delete_all
      ruby_book = products(:ruby)

      puts ActionMailer::Base.deliveries.last.inspect
    end
  end

end
