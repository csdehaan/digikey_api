# digikey_api

DigiKey - the Ruby gem for the ProductSearch Api

ProductSearch Api

This SDK is automatically generated by the [Swagger Codegen](https://github.com/swagger-api/swagger-codegen) project:

- API version: v4
- Package version: 1.0.0
- Build package: io.swagger.codegen.languages.RubyClientCodegen
For more information, please visit [https://developer.digikey.com/support](https://developer.digikey.com/support)

## Installation

### Build a gem

To build the Ruby code into a gem:

```shell
gem build digikey_api.gemspec
```

Then either install the gem locally:

```shell
gem install ./digikey_api-1.0.0.gem
```
(for development, run `gem install --dev ./digikey_api-1.0.0.gem` to install the development dependencies)

or publish the gem to a gem hosting service, e.g. [RubyGems](https://rubygems.org/).

Finally add this to the Gemfile:

    gem 'digikey_api', '~> 1.0.0'

### Install from Git

If the Ruby gem is hosted at a git repository: https://github.com/GIT_USER_ID/GIT_REPO_ID, then add the following in the Gemfile:

    gem 'digikey_api', :git => 'https://github.com/GIT_USER_ID/GIT_REPO_ID.git'

### Include the Ruby code directly

Include the Ruby code directly using `-I` as follows:

```shell
ruby -Ilib script.rb
```

## Getting Started

Please follow the [installation](#installation) procedure and then run the following code:
```ruby
# Load the gem
require 'digikey_api'

# Setup authorization
DigiKey.configure do |config|
  # Configure API key authorization: apiKeySecurity
  config.api_key['X-DIGIKEY-Client-Id'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['X-DIGIKEY-Client-Id'] = 'Bearer'

  # Configure OAuth2 access token for authorization: oauth2ApplicationSecurity
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = DigiKey::ProductSearchApi.new

product_number = 'product_number_example' # String | 

x_digikey_client_id = 'x_digikey_client_id_example' # String | The CliendId for your app.

opts = { 
  authorization: 'authorization_example', # String | OAuth Bearer Token. Please see<a href= \"https://developer.digikey.com/documentation/oauth\" target= \"_blank\" > OAuth 2.0 Documentation </a > page for more info.
  x_digikey_locale_language: 'x_digikey_locale_language_example', # String | Two letter code for language to search on. Langauge must be supported by the selected site. If searching on keyword, this language is used to find matches. Acceptable values include: en, ja, de, fr, ko, zhs, zht, it, es, he, nl, sv, pl, fi, da, no. Default value: en
  x_digikey_locale_currency: 'x_digikey_locale_currency_example', # String | Three letter code for Currency to return part pricing for. Currency must be supported by the selected site. Acceptable values include: USD, CAD, JPY, GBP, EUR, HKD, SGD, TWD, KRW, AUD, NZD, INR, DKK, NOK, SEK, ILS, CNY, PLN, CHF, CZK, HUF, RON, ZAR, MYR, THB, PHP. Default value: primary currency for the entered Locale-site.
  x_digikey_locale_site: 'x_digikey_locale_site_example', # String | Two letter code for Digi-Key product website to search on. Different countries sites have different part restrictions, supported languages, and currencies. Acceptable values include: US, CA, JP, UK, DE, AT, BE, DK, FI, GR, IE, IT, LU, NL, NO, PT, ES, KR, HK, SG, CN, TW, AU, FR, IN, NZ, SE, MX, CH, IL, PL, SK, SI, LV, LT, EE, CZ, HU, BG, MY, ZA, RO, TH, PH. Default value: US
  x_digikey_customer_id: 'x_digikey_customer_id_example' # String | Your Digi-Key Customer id. If your account has multiple Customer Ids for different regions, this allows you to select one of them.
}

begin
  #Retrieve Alternate Packaging for a given product
  result = api_instance.alternate_packaging(product_number, x_digikey_client_id, opts)
  p result
rescue DigiKey::ApiError => e
  puts "Exception when calling ProductSearchApi->alternate_packaging: #{e}"
end

```

## Documentation for API Endpoints

All URIs are relative to *https://api.digikey.com/products/v4*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*DigiKey::ProductSearchApi* | [**alternate_packaging**](docs/ProductSearchApi.md#alternate_packaging) | **GET** /search/{productNumber}/alternatepackaging | Retrieve Alternate Packaging for a given product
*DigiKey::ProductSearchApi* | [**associations**](docs/ProductSearchApi.md#associations) | **GET** /search/{productNumber}/associations | Retrieve Associations for a given product
*DigiKey::ProductSearchApi* | [**categories**](docs/ProductSearchApi.md#categories) | **GET** /search/categories | Returns all Product Categories. Category Id can be used in KeywordRequestDto.Filters.TaxonomyIds to restrict a  keyword search to a given category
*DigiKey::ProductSearchApi* | [**categories_by_id**](docs/ProductSearchApi.md#categories_by_id) | **GET** /search/categories/{categoryId} | Returns Category for given Id. Category Id can be used in KeywordRequestDto.Filters.TaxonomyIds to restrict a  keyword search to a given category
*DigiKey::ProductSearchApi* | [**digi_reel_pricing**](docs/ProductSearchApi.md#digi_reel_pricing) | **GET** /search/{productNumber}/digireelpricing | Calculate the DigiReel pricing for the given DigiKeyProductNumber and RequestedQuantity
*DigiKey::ProductSearchApi* | [**keyword_search**](docs/ProductSearchApi.md#keyword_search) | **POST** /search/keyword | Enter parameters, keywords, or a manufacturer part number/DigiKey part number and receive many fields of product information for each match. Note that MyPricing is not returned.
*DigiKey::ProductSearchApi* | [**manufacturers**](docs/ProductSearchApi.md#manufacturers) | **GET** /search/manufacturers | Returns all Product Manufacturers. ManufacturersId can be used in KeywordRequestDto.Filters.ManufacturerIds to  restrict a keyword search to a given Manufacturer
*DigiKey::ProductSearchApi* | [**media**](docs/ProductSearchApi.md#media) | **GET** /search/{productNumber}/media | Retrieve all media for a given product
*DigiKey::ProductSearchApi* | [**package_type_by_quantity**](docs/ProductSearchApi.md#package_type_by_quantity) | **GET** /search/packagetypebyquantity/{productNumber} | Provide a product number and quantity to receive product information such as pricing, available quantity, and the  best  packaging type for the requested quantity of the product.  For example, given a requested quantity larger than a standard reel, this will return information about the  standard tape and reel as well as either cut tape or DKR depending on the provided preference.  Made for Cut Tape, Tape and Reel, and Digi-Reel products only. Other packaging types can be searched for, but  results may vary.  Locale information is required in the headers for accurate pricing and currencies. Locale defaults to United  States.
*DigiKey::ProductSearchApi* | [**product_details**](docs/ProductSearchApi.md#product_details) | **GET** /search/{productNumber}/productdetails | Enter a manufacturer part number/DigiKey part number and receive all of the production information fields for a single-matched product. MyPricing is shown if applicable.  If the manufacturer part number has more than one match, we will respond with an error.
*DigiKey::ProductSearchApi* | [**product_pricing**](docs/ProductSearchApi.md#product_pricing) | **GET** /search/{productNumber}/pricing | Enter a manufacturer part number/DigiKey part number or partial manufacturer part number/DigiKey part number and receive product information fields for each matched product. MyPricing is shown if applicable.
*DigiKey::ProductSearchApi* | [**recommended_products**](docs/ProductSearchApi.md#recommended_products) | **GET** /search/{productNumber}/recommendedproducts | Returns a list of recommended products for the given Product number.
*DigiKey::ProductSearchApi* | [**substitutions**](docs/ProductSearchApi.md#substitutions) | **GET** /search/{productNumber}/substitutions | Retrieve Substitutions for a given product


## Documentation for Models

 - [DigiKey::AlternatePackaging](docs/AlternatePackaging.md)
 - [DigiKey::AlternatePackagingResponse](docs/AlternatePackagingResponse.md)
 - [DigiKey::BaseFilterV4](docs/BaseFilterV4.md)
 - [DigiKey::BaseProduct](docs/BaseProduct.md)
 - [DigiKey::CategoriesResponse](docs/CategoriesResponse.md)
 - [DigiKey::Category](docs/Category.md)
 - [DigiKey::CategoryNode](docs/CategoryNode.md)
 - [DigiKey::CategoryResponse](docs/CategoryResponse.md)
 - [DigiKey::CategoryType](docs/CategoryType.md)
 - [DigiKey::Classifications](docs/Classifications.md)
 - [DigiKey::DKProblemDetails](docs/DKProblemDetails.md)
 - [DigiKey::Description](docs/Description.md)
 - [DigiKey::DigiReelPricing](docs/DigiReelPricing.md)
 - [DigiKey::FilterId](docs/FilterId.md)
 - [DigiKey::FilterOptions](docs/FilterOptions.md)
 - [DigiKey::FilterOptionsRequest](docs/FilterOptionsRequest.md)
 - [DigiKey::FilterValue](docs/FilterValue.md)
 - [DigiKey::Filters](docs/Filters.md)
 - [DigiKey::IsoSearchLocale](docs/IsoSearchLocale.md)
 - [DigiKey::KeywordRequest](docs/KeywordRequest.md)
 - [DigiKey::KeywordResponse](docs/KeywordResponse.md)
 - [DigiKey::Manufacturer](docs/Manufacturer.md)
 - [DigiKey::ManufacturerInfo](docs/ManufacturerInfo.md)
 - [DigiKey::ManufacturersResponse](docs/ManufacturersResponse.md)
 - [DigiKey::MediaLinks](docs/MediaLinks.md)
 - [DigiKey::MediaResponse](docs/MediaResponse.md)
 - [DigiKey::PackageType](docs/PackageType.md)
 - [DigiKey::PackageTypeByQuantityProduct](docs/PackageTypeByQuantityProduct.md)
 - [DigiKey::PackageTypeByQuantityResponse](docs/PackageTypeByQuantityResponse.md)
 - [DigiKey::Parameter](docs/Parameter.md)
 - [DigiKey::ParameterFilterOptionsResponse](docs/ParameterFilterOptionsResponse.md)
 - [DigiKey::ParameterFilterRequest](docs/ParameterFilterRequest.md)
 - [DigiKey::ParameterValue](docs/ParameterValue.md)
 - [DigiKey::ParametricCategory](docs/ParametricCategory.md)
 - [DigiKey::PriceBreak](docs/PriceBreak.md)
 - [DigiKey::Product](docs/Product.md)
 - [DigiKey::ProductAssociations](docs/ProductAssociations.md)
 - [DigiKey::ProductAssociationsResponse](docs/ProductAssociationsResponse.md)
 - [DigiKey::ProductDetails](docs/ProductDetails.md)
 - [DigiKey::ProductPricing](docs/ProductPricing.md)
 - [DigiKey::ProductPricingResponse](docs/ProductPricingResponse.md)
 - [DigiKey::ProductPricingVariation](docs/ProductPricingVariation.md)
 - [DigiKey::ProductStatusV4](docs/ProductStatusV4.md)
 - [DigiKey::ProductSubstitute](docs/ProductSubstitute.md)
 - [DigiKey::ProductSubstitutesResponse](docs/ProductSubstitutesResponse.md)
 - [DigiKey::ProductSummary](docs/ProductSummary.md)
 - [DigiKey::ProductVariation](docs/ProductVariation.md)
 - [DigiKey::Recommendation](docs/Recommendation.md)
 - [DigiKey::RecommendedProduct](docs/RecommendedProduct.md)
 - [DigiKey::RecommendedProductsResponse](docs/RecommendedProductsResponse.md)
 - [DigiKey::Series](docs/Series.md)
 - [DigiKey::SettingsUsed](docs/SettingsUsed.md)
 - [DigiKey::SortOptions](docs/SortOptions.md)
 - [DigiKey::Supplier](docs/Supplier.md)
 - [DigiKey::TopCategory](docs/TopCategory.md)
 - [DigiKey::TopCategoryNode](docs/TopCategoryNode.md)


## Documentation for Authorization


### apiKeySecurity

- **Type**: API key
- **API key parameter name**: X-DIGIKEY-Client-Id
- **Location**: HTTP header

### oauth2ApplicationSecurity

- **Type**: OAuth
- **Flow**: application
- **Authorization URL**: 
- **Scopes**: N/A

