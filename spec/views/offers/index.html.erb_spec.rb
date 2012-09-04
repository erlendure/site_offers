require 'spec_helper'

describe "offers/index" do
  before(:each) do
    assign(:offers, [
      stub_model(Offer,
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
      ),
      stub_model(Offer,
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
      )
    ])
  end

  it "renders a list of offers" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Company".to_s, :count => 2
    assert_select "tr>td", :text => "Heading".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "City".to_s, :count => 2
    assert_select "tr>td", :text => "Street".to_s, :count => 2
    assert_select "tr>td", :text => "Zip".to_s, :count => 2
    assert_select "tr>td", :text => "State".to_s, :count => 2
    assert_select "tr>td", :text => "Phone".to_s, :count => 2
    assert_select "tr>td", :text => "Terms".to_s, :count => 2
    assert_select "tr>td", :text => "Details".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
  end
end
