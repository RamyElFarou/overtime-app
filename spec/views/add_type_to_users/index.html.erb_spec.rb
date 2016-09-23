require 'rails_helper'

RSpec.describe "add_type_to_users/index", type: :view do
  before(:each) do
    assign(:add_type_to_users, [
      AddTypeToUser.create!(
        :type => "Type"
      ),
      AddTypeToUser.create!(
        :type => "Type"
      )
    ])
  end

  it "renders a list of add_type_to_users" do
    render
    assert_select "tr>td", :text => "Type".to_s, :count => 2
  end
end
