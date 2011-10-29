require 'spec_helper'

describe "posts/edit.html.erb" do
  before(:each) do
    @post = assign(:post, stub_model(Post,
      :forum_id => 1,
      :user_id => 1,
      :content => "MyText"
    ))
  end

  it "renders the edit post form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => posts_path(@post), :method => "post" do
      assert_select "input#post_forum_id", :name => "post[forum_id]"
      assert_select "input#post_user_id", :name => "post[user_id]"
      assert_select "textarea#post_content", :name => "post[content]"
    end
  end
end
