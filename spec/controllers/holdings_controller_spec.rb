require 'spec_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator.  If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails.  There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.
#
# Compared to earlier versions of this generator, there is very limited use of
# stubs and message expectations in this spec.  Stubs are only used when there
# is no simpler way to get a handle on the object needed for the example.
# Message expectations are only used when there is no simpler way to specify
# that an instance is receiving a specific message.

describe HoldingsController do

  # This should return the minimal set of attributes required to create a valid
  # Holding. As you add validations to Holding, be sure to
  # update the return value of this method accordingly.
  def valid_attributes
    {}
  end

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # HoldingsController. Be sure to keep this updated too.
  def valid_session
    {}
  end

  describe "GET index" do
    it "assigns all holdings as @holdings" do
      holding = Holding.create! valid_attributes
      get :index, {}, valid_session
      assigns(:holdings).should eq([holding])
    end
  end

  describe "GET show" do
    it "assigns the requested holding as @holding" do
      holding = Holding.create! valid_attributes
      get :show, {:id => holding.to_param}, valid_session
      assigns(:holding).should eq(holding)
    end
  end

  describe "GET new" do
    it "assigns a new holding as @holding" do
      get :new, {}, valid_session
      assigns(:holding).should be_a_new(Holding)
    end
  end

  describe "GET edit" do
    it "assigns the requested holding as @holding" do
      holding = Holding.create! valid_attributes
      get :edit, {:id => holding.to_param}, valid_session
      assigns(:holding).should eq(holding)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new Holding" do
        expect {
          post :create, {:holding => valid_attributes}, valid_session
        }.to change(Holding, :count).by(1)
      end

      it "assigns a newly created holding as @holding" do
        post :create, {:holding => valid_attributes}, valid_session
        assigns(:holding).should be_a(Holding)
        assigns(:holding).should be_persisted
      end

      it "redirects to the created holding" do
        post :create, {:holding => valid_attributes}, valid_session
        response.should redirect_to(Holding.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved holding as @holding" do
        # Trigger the behavior that occurs when invalid params are submitted
        Holding.any_instance.stub(:save).and_return(false)
        post :create, {:holding => {}}, valid_session
        assigns(:holding).should be_a_new(Holding)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        Holding.any_instance.stub(:save).and_return(false)
        post :create, {:holding => {}}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested holding" do
        holding = Holding.create! valid_attributes
        # Assuming there are no other holdings in the database, this
        # specifies that the Holding created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        Holding.any_instance.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, {:id => holding.to_param, :holding => {'these' => 'params'}}, valid_session
      end

      it "assigns the requested holding as @holding" do
        holding = Holding.create! valid_attributes
        put :update, {:id => holding.to_param, :holding => valid_attributes}, valid_session
        assigns(:holding).should eq(holding)
      end

      it "redirects to the holding" do
        holding = Holding.create! valid_attributes
        put :update, {:id => holding.to_param, :holding => valid_attributes}, valid_session
        response.should redirect_to(holding)
      end
    end

    describe "with invalid params" do
      it "assigns the holding as @holding" do
        holding = Holding.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Holding.any_instance.stub(:save).and_return(false)
        put :update, {:id => holding.to_param, :holding => {}}, valid_session
        assigns(:holding).should eq(holding)
      end

      it "re-renders the 'edit' template" do
        holding = Holding.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Holding.any_instance.stub(:save).and_return(false)
        put :update, {:id => holding.to_param, :holding => {}}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested holding" do
      holding = Holding.create! valid_attributes
      expect {
        delete :destroy, {:id => holding.to_param}, valid_session
      }.to change(Holding, :count).by(-1)
    end

    it "redirects to the holdings list" do
      holding = Holding.create! valid_attributes
      delete :destroy, {:id => holding.to_param}, valid_session
      response.should redirect_to(holdings_url)
    end
  end

end
