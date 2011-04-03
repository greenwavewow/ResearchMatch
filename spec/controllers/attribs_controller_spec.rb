require 'spec_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by the Rails when you ran the scaffold generator.

describe AttribsController do

  def mock_attrib(stubs={})
    @mock_attrib ||= mock_model(Attrib, stubs).as_null_object
  end

  describe "GET index" do
    it "assigns all attribs as @attribs" do
      Attrib.stub(:all) { [mock_attrib] }
      get :index
      assigns(:attribs).should eq([mock_attrib])
    end
  end

  describe "GET show" do
    it "assigns the requested attrib as @attrib" do
      Attrib.stub(:find).with("37") { mock_attrib }
      get :show, :id => "37"
      assigns(:attrib).should be(mock_attrib)
    end
  end

  describe "GET new" do
    it "assigns a new attrib as @attrib" do
      Attrib.stub(:new) { mock_attrib }
      get :new
      assigns(:attrib).should be(mock_attrib)
    end
  end

  describe "GET edit" do
    it "assigns the requested attrib as @attrib" do
      Attrib.stub(:find).with("37") { mock_attrib }
      get :edit, :id => "37"
      assigns(:attrib).should be(mock_attrib)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "assigns a newly created attrib as @attrib" do
        Attrib.stub(:new).with({'these' => 'params'}) { mock_attrib(:save => true) }
        post :create, :attrib => {'these' => 'params'}
        assigns(:attrib).should be(mock_attrib)
      end

      it "redirects to the created attrib" do
        Attrib.stub(:new) { mock_attrib(:save => true) }
        post :create, :attrib => {}
        response.should redirect_to(attrib_url(mock_attrib))
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved attrib as @attrib" do
        Attrib.stub(:new).with({'these' => 'params'}) { mock_attrib(:save => false) }
        post :create, :attrib => {'these' => 'params'}
        assigns(:attrib).should be(mock_attrib)
      end

      it "re-renders the 'new' template" do
        Attrib.stub(:new) { mock_attrib(:save => false) }
        post :create, :attrib => {}
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested attrib" do
        Attrib.stub(:find).with("37") { mock_attrib }
        mock_attrib.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, :id => "37", :attrib => {'these' => 'params'}
      end

      it "assigns the requested attrib as @attrib" do
        Attrib.stub(:find) { mock_attrib(:update_attributes => true) }
        put :update, :id => "1"
        assigns(:attrib).should be(mock_attrib)
      end

      it "redirects to the attrib" do
        Attrib.stub(:find) { mock_attrib(:update_attributes => true) }
        put :update, :id => "1"
        response.should redirect_to(attrib_url(mock_attrib))
      end
    end

    describe "with invalid params" do
      it "assigns the attrib as @attrib" do
        Attrib.stub(:find) { mock_attrib(:update_attributes => false) }
        put :update, :id => "1"
        assigns(:attrib).should be(mock_attrib)
      end

      it "re-renders the 'edit' template" do
        Attrib.stub(:find) { mock_attrib(:update_attributes => false) }
        put :update, :id => "1"
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested attrib" do
      Attrib.stub(:find).with("37") { mock_attrib }
      mock_attrib.should_receive(:destroy)
      delete :destroy, :id => "37"
    end

    it "redirects to the attribs list" do
      Attrib.stub(:find) { mock_attrib }
      delete :destroy, :id => "1"
      response.should redirect_to(attribs_url)
    end
  end

end