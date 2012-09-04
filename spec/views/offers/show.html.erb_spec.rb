require 'spec_helper'

describe "offers/show" do
  before(:each) do
    @offer = assign(:offer, stub_model(Offer,
      :company => "Company",
      :heading => "Heading",
      :price => 1,
      :discount => 2,
      :city => "City",
      :street => "Street",
      :zip => "Zip",
      :state => "State",
      :phone => "Phone",
      :terms => "Terms",
      :details => "Details",
      :featured => false
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Company/)
    rendered.should match(/Heading/)
    rendered.should match(/1/)
    rendered.should match(/2/)
    rendered.should match(/City/)
    rendered.should match(/Street/)
    rendered.should match(/Zip/)
    rendered.should match(/State/)
    rendered.should match(/Phone/)
    rendered.should match(/Terms/)
    rendered.should match(/Details/)
    rendered.should match(/false/)
  end
end
