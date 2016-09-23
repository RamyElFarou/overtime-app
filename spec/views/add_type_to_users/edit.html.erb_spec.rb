require 'rails_helper'

RSpec.describe "add_type_to_users/edit", type: :view do
  before(:each) do
    @add_type_to_user = assign(:add_type_to_user, AddTypeToUser.create!(
      :type => ""
    ))
  end

  it "renders the edit add_type_to_user form" do
    render

    assert_select "form[action=?][method=?]", add_type_to_user_path(@add_type_to_user), "post" do

      assert_select "input#add_type_to_user_type[name=?]", "add_type_to_user[type]"
    end
  end
end
