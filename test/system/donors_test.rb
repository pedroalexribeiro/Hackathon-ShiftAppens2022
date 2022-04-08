# frozen_string_literal: true

require 'application_system_test_case'

class DonorsTest < ApplicationSystemTestCase
  setup do
    @donor = donors(:one)
  end

  test 'visiting the index' do
    visit donors_url
    assert_selector 'h1', text: 'Donors'
  end

  test 'should create donor' do
    visit donors_url
    click_on 'New donor'

    fill_in 'Bio', with: @donor.bio
    fill_in 'Email', with: @donor.email
    fill_in 'Name', with: @donor.name
    fill_in 'Password', with: 'secret'
    fill_in 'Password confirmation', with: 'secret'
    fill_in 'Type', with: @donor.type
    click_on 'Create Donor'

    assert_text 'Donor was successfully created'
    click_on 'Back'
  end

  test 'should update Donor' do
    visit donor_url(@donor)
    click_on 'Edit this donor', match: :first

    fill_in 'Bio', with: @donor.bio
    fill_in 'Email', with: @donor.email
    fill_in 'Name', with: @donor.name
    fill_in 'Password', with: 'secret'
    fill_in 'Password confirmation', with: 'secret'
    fill_in 'Type', with: @donor.type
    click_on 'Update Donor'

    assert_text 'Donor was successfully updated'
    click_on 'Back'
  end

  test 'should destroy Donor' do
    visit donor_url(@donor)
    click_on 'Destroy this donor', match: :first

    assert_text 'Donor was successfully destroyed'
  end
end
