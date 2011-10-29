require 'spec_helper'

describe "forums/show.html.erb" do
  before(:each) do
    @forum = assign(:forum, stub_model(Forum,
      :title => "Title",
      :category_id => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Title/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
  end
end
