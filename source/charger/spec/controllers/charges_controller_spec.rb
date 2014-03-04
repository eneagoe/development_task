require 'spec_helper'

describe ChargesController do

  let(:valid_attributes) { { paid: true, refunded: false, customer_id: 1 } }

  let(:valid_session) { {} }

  describe "POST create" do
    describe "with valid params" do
      it "creates a new Charge" do
        expect {
          post :create, {:charge => valid_attributes}, valid_session
        }.to change(Charge, :count).by(1)
      end

      it "assigns a newly created charge as @charge" do
        post :create, {:charge => valid_attributes}, valid_session
        assigns(:charge).should be_a(Charge)
        assigns(:charge).should be_persisted
      end

      it "redirects to the created charge" do
        post :create, {:charge => valid_attributes}, valid_session
        response.should redirect_to(Charge.last)
      end
    end

  end

end
