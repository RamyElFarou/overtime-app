require 'rails_helper'

RSpec.describe "add_type_to_users/show", type: :view do
  before(:each) do
    @add_type_to_user = assign(:add_type_to_user, AddTypeToUser.create!(
      :type => "Type"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Type/)
  end
end
