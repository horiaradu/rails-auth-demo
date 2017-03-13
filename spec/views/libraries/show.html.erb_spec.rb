require 'rails_helper'

RSpec.describe "libraries/show", type: :view do
  before(:each) do
    @library = assign(:library, Library.create!(
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
  end
end
