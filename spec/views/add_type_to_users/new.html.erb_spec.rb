require 'rails_helper'

RSpec.describe "add_type_to_users/new", type: :view do
  before(:each) do
    assign(:add_type_to_user, AddTypeToUser.new(
      :type => ""
    ))
  end

  it "renders new add_type_to_user form" do
    render

    assert_select "form[action=?][method=?]", add_type_to_users_path, "post" do

      assert_select "input#add_type_to_user_type[name=?]", "add_type_to_user[type]"
    end
  end
end
