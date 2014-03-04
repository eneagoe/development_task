require 'spec_helper'

describe "charges/index" do

  fixtures :charges

  before(:each) do
    assign(:charges, Charge.all)
  end

  it "renders a list of charges" do

    render

    assert_select "h1", text: "Failed charges"
    assert_select "h1", text: "Disputed charges"
    assert_select "h1", text: "Successful charges"

    assert_select "tr.failed", count: 5
    assert_select "tr.disputed", minimum: 1
    assert_select "tr.successful", count: 10

  end

end
