=begin
#ProductSearch Api

#ProductSearch Api

OpenAPI spec version: v4
Contact: dl_Agile_Team_B2B_API@digikey.com
Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.43

=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for DigiKey::RecommendedProductsResponse
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'RecommendedProductsResponse' do
  before do
    # run before each test
    @instance = DigiKey::RecommendedProductsResponse.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of RecommendedProductsResponse' do
    it 'should create an instance of RecommendedProductsResponse' do
      expect(@instance).to be_instance_of(DigiKey::RecommendedProductsResponse)
    end
  end
  describe 'test attribute "recommendations"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
