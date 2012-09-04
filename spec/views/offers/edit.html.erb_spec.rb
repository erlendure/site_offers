require 'spec_helper'

describe "offers/edit" do
  before(:each) do
    @offer = assign(:offer, stub_model(Offer,
      :company => "MyString",
      :heading => "MyString",
      :price => 1,
      :discount => 1,
      :city => "MyString",
      :street => "MyString",
      :zip => "MyString",
      :state => "MyString",
      :phone => "MyString",
      :terms => "MyString",
      :details => "MyString",
      :featured => false
    ))
  end

  it "renders the edit offer form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => offers_path(@offer), :method => "post" do
      assert_select "input#offer_company", :name => "offer[company]"
      assert_select "input#offer_heading", :name => "offer[heading]"
      assert_select "input#offer_price", :name => "offer[price]"
      assert_select "input#offer_discount", :name => "offer[discount]"
      assert_select "input#offer_city", :name => "offer[city]"
      assert_select "input#offer_street", :name => "offer[street]"
      assert_select "input#offer_zip", :name => "offer[zip]"
      assert_select "input#offer_state", :name => "offer[state]"
      assert_select "input#offer_phone", :name => "offer[phone]"
      assert_select "input#offer_terms", :name => "offer[terms]"
      assert_select "input#offer_details", :name => "offer[details]"
      assert_select "input#offer_featured", :name => "offer[featured]"
    end
  end
end
