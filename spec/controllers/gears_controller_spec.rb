require 'rails_helper'

RSpec.describe GearsController, type: :controller do

  let(:valid_attributes) {
    {
      name: "hoge",
    }
  }

  let(:invalid_attributes) {
    skip("Add a hash of attributes invalid for your model")
  }

  let(:valid_session) { {} }

  describe "GET #index" do
    it "assigns all gears as @gears" do
      gear = Gear.create! valid_attributes
      get :index, {}, valid_session
      expect(assigns(:gears)).to eq([gear])
    end
  end

  describe "GET #show" do
    it "assigns the requested gear as @gear" do
      gear = Gear.create! valid_attributes
      get :show, {:id => gear.to_param}, valid_session
      expect(assigns(:gear)).to eq(gear)
    end
  end

  describe "GET #new" do
    it "assigns a new gear as @gear" do
      get :new, {}, valid_session
      expect(assigns(:gear)).to be_a_new(Gear)
    end
  end

  describe "GET #edit" do
    it "assigns the requested gear as @gear" do
      gear = Gear.create! valid_attributes
      get :edit, {:id => gear.to_param}, valid_session
      expect(assigns(:gear)).to eq(gear)
    end
  end

  describe "POST #create" do
    context "with valid params" do
      it "creates a new Gear" do
        expect {
          post :create, {:gear => valid_attributes}, valid_session
        }.to change(Gear, :count).by(1)
      end

      it "assigns a newly created gear as @gear" do
        post :create, {:gear => valid_attributes}, valid_session
        expect(assigns(:gear)).to be_a(Gear)
        expect(assigns(:gear)).to be_persisted
      end

      it "redirects to the created gear" do
        post :create, {:gear => valid_attributes}, valid_session
        expect(response).to redirect_to(Gear.last)
      end
    end

    context "with invalid params" do
      it "assigns a newly created but unsaved gear as @gear" do
        post :create, {:gear => invalid_attributes}, valid_session
        expect(assigns(:gear)).to be_a_new(Gear)
      end

      it "re-renders the 'new' template" do
        post :create, {:gear => invalid_attributes}, valid_session
        expect(response).to render_template("new")
      end
    end
  end

  describe "PUT #update" do
    context "with valid params" do
      let(:new_attributes) {
        skip("Add a hash of attributes valid for your model")
      }

      it "updates the requested gear" do
        gear = Gear.create! valid_attributes
        put :update, {:id => gear.to_param, :gear => new_attributes}, valid_session
        gear.reload
        skip("Add assertions for updated state")
      end

      it "assigns the requested gear as @gear" do
        gear = Gear.create! valid_attributes
        put :update, {:id => gear.to_param, :gear => valid_attributes}, valid_session
        expect(assigns(:gear)).to eq(gear)
      end

      it "redirects to the gear" do
        gear = Gear.create! valid_attributes
        put :update, {:id => gear.to_param, :gear => valid_attributes}, valid_session
        expect(response).to redirect_to(gear)
      end
    end

    context "with invalid params" do
      it "assigns the gear as @gear" do
        gear = Gear.create! valid_attributes
        put :update, {:id => gear.to_param, :gear => invalid_attributes}, valid_session
        expect(assigns(:gear)).to eq(gear)
      end

      it "re-renders the 'edit' template" do
        gear = Gear.create! valid_attributes
        put :update, {:id => gear.to_param, :gear => invalid_attributes}, valid_session
        expect(response).to render_template("edit")
      end
    end
  end

  describe "DELETE #destroy" do
    it "destroys the requested gear" do
      gear = Gear.create! valid_attributes
      expect {
        delete :destroy, {:id => gear.to_param}, valid_session
      }.to change(Gear, :count).by(-1)
    end

    it "redirects to the gears list" do
      gear = Gear.create! valid_attributes
      delete :destroy, {:id => gear.to_param}, valid_session
      expect(response).to redirect_to(gears_url)
    end
  end

end
