require 'test_helper'

class DeveloperAccountsControllerTest < ActionController::TestCase
  setup do
    @developer_account = developer_accounts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:developer_accounts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create developer_account" do
    assert_difference('DeveloperAccount.count') do
      post :create, developer_account: { account_balance: @developer_account.account_balance, account_number: @developer_account.account_number, bank_id: @developer_account.bank_id }
    end

    assert_redirected_to developer_account_path(assigns(:developer_account))
  end

  test "should show developer_account" do
    get :show, id: @developer_account
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @developer_account
    assert_response :success
  end

  test "should update developer_account" do
    patch :update, id: @developer_account, developer_account: { account_balance: @developer_account.account_balance, account_number: @developer_account.account_number, bank_id: @developer_account.bank_id }
    assert_redirected_to developer_account_path(assigns(:developer_account))
  end

  test "should destroy developer_account" do
    assert_difference('DeveloperAccount.count', -1) do
      delete :destroy, id: @developer_account
    end

    assert_redirected_to developer_accounts_path
  end
end
