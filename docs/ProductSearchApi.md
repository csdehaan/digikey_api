# DigiKey::ProductSearchApi

All URIs are relative to *https://api.digikey.com/products/v4*

Method | HTTP request | Description
------------- | ------------- | -------------
[**alternate_packaging**](ProductSearchApi.md#alternate_packaging) | **GET** /search/{productNumber}/alternatepackaging | Retrieve Alternate Packaging for a given product
[**associations**](ProductSearchApi.md#associations) | **GET** /search/{productNumber}/associations | Retrieve Associations for a given product
[**categories**](ProductSearchApi.md#categories) | **GET** /search/categories | Returns all Product Categories. Category Id can be used in KeywordRequestDto.Filters.TaxonomyIds to restrict a  keyword search to a given category
[**categories_by_id**](ProductSearchApi.md#categories_by_id) | **GET** /search/categories/{categoryId} | Returns Category for given Id. Category Id can be used in KeywordRequestDto.Filters.TaxonomyIds to restrict a  keyword search to a given category
[**digi_reel_pricing**](ProductSearchApi.md#digi_reel_pricing) | **GET** /search/{productNumber}/digireelpricing | Calculate the DigiReel pricing for the given DigiKeyProductNumber and RequestedQuantity
[**keyword_search**](ProductSearchApi.md#keyword_search) | **POST** /search/keyword | Enter parameters, keywords, or a manufacturer part number/DigiKey part number and receive many fields of product information for each match. Note that MyPricing is not returned.
[**manufacturers**](ProductSearchApi.md#manufacturers) | **GET** /search/manufacturers | Returns all Product Manufacturers. ManufacturersId can be used in KeywordRequestDto.Filters.ManufacturerIds to  restrict a keyword search to a given Manufacturer
[**media**](ProductSearchApi.md#media) | **GET** /search/{productNumber}/media | Retrieve all media for a given product
[**package_type_by_quantity**](ProductSearchApi.md#package_type_by_quantity) | **GET** /search/packagetypebyquantity/{productNumber} | Provide a product number and quantity to receive product information such as pricing, available quantity, and the  best  packaging type for the requested quantity of the product.  For example, given a requested quantity larger than a standard reel, this will return information about the  standard tape and reel as well as either cut tape or DKR depending on the provided preference.  Made for Cut Tape, Tape and Reel, and Digi-Reel products only. Other packaging types can be searched for, but  results may vary.  Locale information is required in the headers for accurate pricing and currencies. Locale defaults to United  States.
[**product_details**](ProductSearchApi.md#product_details) | **GET** /search/{productNumber}/productdetails | Enter a manufacturer part number/DigiKey part number and receive all of the production information fields for a single-matched product. MyPricing is shown if applicable.  If the manufacturer part number has more than one match, we will respond with an error.
[**product_pricing**](ProductSearchApi.md#product_pricing) | **GET** /search/{productNumber}/pricing | Enter a manufacturer part number/DigiKey part number or partial manufacturer part number/DigiKey part number and receive product information fields for each matched product. MyPricing is shown if applicable.
[**recommended_products**](ProductSearchApi.md#recommended_products) | **GET** /search/{productNumber}/recommendedproducts | Returns a list of recommended products for the given Product number.
[**substitutions**](ProductSearchApi.md#substitutions) | **GET** /search/{productNumber}/substitutions | Retrieve Substitutions for a given product


# **alternate_packaging**
> AlternatePackagingResponse alternate_packaging(product_number, x_digikey_client_id, opts)

Retrieve Alternate Packaging for a given product

Works best with a Digi-Key Product number. Some manufacturer product numbers conflict with unrelated products and  may not  return the correct product.  Locale information is required in the headers for accurate pricing and currencies. Locale defaults to United  States.

### Example
```ruby
# load the gem
require 'digikey_api'
# setup authorization
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

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **product_number** | **String**|  | 
 **x_digikey_client_id** | **String**| The CliendId for your app. | 
 **authorization** | **String**| OAuth Bearer Token. Please see&lt;a href&#x3D; \&quot;https://developer.digikey.com/documentation/oauth\&quot; target&#x3D; \&quot;_blank\&quot; &gt; OAuth 2.0 Documentation &lt;/a &gt; page for more info. | [optional] 
 **x_digikey_locale_language** | **String**| Two letter code for language to search on. Langauge must be supported by the selected site. If searching on keyword, this language is used to find matches. Acceptable values include: en, ja, de, fr, ko, zhs, zht, it, es, he, nl, sv, pl, fi, da, no. Default value: en | [optional] 
 **x_digikey_locale_currency** | **String**| Three letter code for Currency to return part pricing for. Currency must be supported by the selected site. Acceptable values include: USD, CAD, JPY, GBP, EUR, HKD, SGD, TWD, KRW, AUD, NZD, INR, DKK, NOK, SEK, ILS, CNY, PLN, CHF, CZK, HUF, RON, ZAR, MYR, THB, PHP. Default value: primary currency for the entered Locale-site. | [optional] 
 **x_digikey_locale_site** | **String**| Two letter code for Digi-Key product website to search on. Different countries sites have different part restrictions, supported languages, and currencies. Acceptable values include: US, CA, JP, UK, DE, AT, BE, DK, FI, GR, IE, IT, LU, NL, NO, PT, ES, KR, HK, SG, CN, TW, AU, FR, IN, NZ, SE, MX, CH, IL, PL, SK, SI, LV, LT, EE, CZ, HU, BG, MY, ZA, RO, TH, PH. Default value: US | [optional] 
 **x_digikey_customer_id** | **String**| Your Digi-Key Customer id. If your account has multiple Customer Ids for different regions, this allows you to select one of them. | [optional] 

### Return type

[**AlternatePackagingResponse**](AlternatePackagingResponse.md)

### Authorization

[apiKeySecurity](../README.md#apiKeySecurity), [oauth2ApplicationSecurity](../README.md#oauth2ApplicationSecurity)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **associations**
> ProductAssociationsResponse associations(product_number, x_digikey_client_id, opts)

Retrieve Associations for a given product

Works best with a Digi-Key Product number. Some manufacturer product numbers conflict with unrelated products and  may not  return the correct product.  Locale information is required in the headers for accurate pricing and currencies. Locale defaults to United  States.

### Example
```ruby
# load the gem
require 'digikey_api'
# setup authorization
DigiKey.configure do |config|
  # Configure API key authorization: apiKeySecurity
  config.api_key['X-DIGIKEY-Client-Id'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['X-DIGIKEY-Client-Id'] = 'Bearer'

  # Configure OAuth2 access token for authorization: oauth2ApplicationSecurity
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = DigiKey::ProductSearchApi.new

product_number = 'product_number_example' # String | The product to retrieve substitutions for.

x_digikey_client_id = 'x_digikey_client_id_example' # String | The CliendId for your app.

opts = { 
  authorization: 'authorization_example', # String | OAuth Bearer Token. Please see<a href= \"https://developer.digikey.com/documentation/oauth\" target= \"_blank\" > OAuth 2.0 Documentation </a > page for more info.
  x_digikey_locale_language: 'x_digikey_locale_language_example', # String | Two letter code for language to search on. Langauge must be supported by the selected site. If searching on keyword, this language is used to find matches. Acceptable values include: en, ja, de, fr, ko, zhs, zht, it, es, he, nl, sv, pl, fi, da, no. Default value: en
  x_digikey_locale_currency: 'x_digikey_locale_currency_example', # String | Three letter code for Currency to return part pricing for. Currency must be supported by the selected site. Acceptable values include: USD, CAD, JPY, GBP, EUR, HKD, SGD, TWD, KRW, AUD, NZD, INR, DKK, NOK, SEK, ILS, CNY, PLN, CHF, CZK, HUF, RON, ZAR, MYR, THB, PHP. Default value: primary currency for the entered Locale-site.
  x_digikey_locale_site: 'x_digikey_locale_site_example', # String | Two letter code for Digi-Key product website to search on. Different countries sites have different part restrictions, supported languages, and currencies. Acceptable values include: US, CA, JP, UK, DE, AT, BE, DK, FI, GR, IE, IT, LU, NL, NO, PT, ES, KR, HK, SG, CN, TW, AU, FR, IN, NZ, SE, MX, CH, IL, PL, SK, SI, LV, LT, EE, CZ, HU, BG, MY, ZA, RO, TH, PH. Default value: US
  x_digikey_customer_id: 'x_digikey_customer_id_example' # String | Your Digi-Key Customer id. If your account has multiple Customer Ids for different regions, this allows you to select one of them.
}

begin
  #Retrieve Associations for a given product
  result = api_instance.associations(product_number, x_digikey_client_id, opts)
  p result
rescue DigiKey::ApiError => e
  puts "Exception when calling ProductSearchApi->associations: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **product_number** | **String**| The product to retrieve substitutions for. | 
 **x_digikey_client_id** | **String**| The CliendId for your app. | 
 **authorization** | **String**| OAuth Bearer Token. Please see&lt;a href&#x3D; \&quot;https://developer.digikey.com/documentation/oauth\&quot; target&#x3D; \&quot;_blank\&quot; &gt; OAuth 2.0 Documentation &lt;/a &gt; page for more info. | [optional] 
 **x_digikey_locale_language** | **String**| Two letter code for language to search on. Langauge must be supported by the selected site. If searching on keyword, this language is used to find matches. Acceptable values include: en, ja, de, fr, ko, zhs, zht, it, es, he, nl, sv, pl, fi, da, no. Default value: en | [optional] 
 **x_digikey_locale_currency** | **String**| Three letter code for Currency to return part pricing for. Currency must be supported by the selected site. Acceptable values include: USD, CAD, JPY, GBP, EUR, HKD, SGD, TWD, KRW, AUD, NZD, INR, DKK, NOK, SEK, ILS, CNY, PLN, CHF, CZK, HUF, RON, ZAR, MYR, THB, PHP. Default value: primary currency for the entered Locale-site. | [optional] 
 **x_digikey_locale_site** | **String**| Two letter code for Digi-Key product website to search on. Different countries sites have different part restrictions, supported languages, and currencies. Acceptable values include: US, CA, JP, UK, DE, AT, BE, DK, FI, GR, IE, IT, LU, NL, NO, PT, ES, KR, HK, SG, CN, TW, AU, FR, IN, NZ, SE, MX, CH, IL, PL, SK, SI, LV, LT, EE, CZ, HU, BG, MY, ZA, RO, TH, PH. Default value: US | [optional] 
 **x_digikey_customer_id** | **String**| Your Digi-Key Customer id. If your account has multiple Customer Ids for different regions, this allows you to select one of them. | [optional] 

### Return type

[**ProductAssociationsResponse**](ProductAssociationsResponse.md)

### Authorization

[apiKeySecurity](../README.md#apiKeySecurity), [oauth2ApplicationSecurity](../README.md#oauth2ApplicationSecurity)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **categories**
> CategoriesResponse categories(opts)

Returns all Product Categories. Category Id can be used in KeywordRequestDto.Filters.TaxonomyIds to restrict a  keyword search to a given category

### Example
```ruby
# load the gem
require 'digikey_api'
# setup authorization
DigiKey.configure do |config|
  # Configure API key authorization: apiKeySecurity
  config.api_key['X-DIGIKEY-Client-Id'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['X-DIGIKEY-Client-Id'] = 'Bearer'

  # Configure OAuth2 access token for authorization: oauth2ApplicationSecurity
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = DigiKey::ProductSearchApi.new

opts = { 
  authorization: 'authorization_example' # String | OAuth Bearer Token. Please see<a href= \"https://developer.digikey.com/documentation/oauth\" target= \"_blank\" > OAuth 2.0 Documentation </a > page for more info.
}

begin
  #Returns all Product Categories. Category Id can be used in KeywordRequestDto.Filters.TaxonomyIds to restrict a  keyword search to a given category
  result = api_instance.categories(opts)
  p result
rescue DigiKey::ApiError => e
  puts "Exception when calling ProductSearchApi->categories: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authorization** | **String**| OAuth Bearer Token. Please see&lt;a href&#x3D; \&quot;https://developer.digikey.com/documentation/oauth\&quot; target&#x3D; \&quot;_blank\&quot; &gt; OAuth 2.0 Documentation &lt;/a &gt; page for more info. | [optional] 

### Return type

[**CategoriesResponse**](CategoriesResponse.md)

### Authorization

[apiKeySecurity](../README.md#apiKeySecurity), [oauth2ApplicationSecurity](../README.md#oauth2ApplicationSecurity)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **categories_by_id**
> CategoryResponse categories_by_id(category_id, opts)

Returns Category for given Id. Category Id can be used in KeywordRequestDto.Filters.TaxonomyIds to restrict a  keyword search to a given category

### Example
```ruby
# load the gem
require 'digikey_api'
# setup authorization
DigiKey.configure do |config|
  # Configure API key authorization: apiKeySecurity
  config.api_key['X-DIGIKEY-Client-Id'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['X-DIGIKEY-Client-Id'] = 'Bearer'

  # Configure OAuth2 access token for authorization: oauth2ApplicationSecurity
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = DigiKey::ProductSearchApi.new

category_id = 56 # Integer | 

opts = { 
  authorization: 'authorization_example' # String | OAuth Bearer Token. Please see<a href= \"https://developer.digikey.com/documentation/oauth\" target= \"_blank\" > OAuth 2.0 Documentation </a > page for more info.
}

begin
  #Returns Category for given Id. Category Id can be used in KeywordRequestDto.Filters.TaxonomyIds to restrict a  keyword search to a given category
  result = api_instance.categories_by_id(category_id, opts)
  p result
rescue DigiKey::ApiError => e
  puts "Exception when calling ProductSearchApi->categories_by_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **category_id** | **Integer**|  | 
 **authorization** | **String**| OAuth Bearer Token. Please see&lt;a href&#x3D; \&quot;https://developer.digikey.com/documentation/oauth\&quot; target&#x3D; \&quot;_blank\&quot; &gt; OAuth 2.0 Documentation &lt;/a &gt; page for more info. | [optional] 

### Return type

[**CategoryResponse**](CategoryResponse.md)

### Authorization

[apiKeySecurity](../README.md#apiKeySecurity), [oauth2ApplicationSecurity](../README.md#oauth2ApplicationSecurity)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **digi_reel_pricing**
> DigiReelPricing digi_reel_pricing(product_number, requested_quantity, x_digikey_client_id, opts)

Calculate the DigiReel pricing for the given DigiKeyProductNumber and RequestedQuantity

### Example
```ruby
# load the gem
require 'digikey_api'
# setup authorization
DigiKey.configure do |config|
  # Configure API key authorization: apiKeySecurity
  config.api_key['X-DIGIKEY-Client-Id'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['X-DIGIKEY-Client-Id'] = 'Bearer'

  # Configure OAuth2 access token for authorization: oauth2ApplicationSecurity
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = DigiKey::ProductSearchApi.new

product_number = 'product_number_example' # String | The Digi-Key ProductNumber requested for Digi-Reel price calculation. It must be a  Digi-Key Product number that is for a Digi-Reel pack type.

requested_quantity = 56 # Integer | The quantity of the product you are looking to create a Digi-Reel with. Must be greater  than 0.

x_digikey_client_id = 'x_digikey_client_id_example' # String | The CliendId for your app.

opts = { 
  authorization: 'authorization_example', # String | OAuth Bearer Token. Please see<a href= \"https://developer.digikey.com/documentation/oauth\" target= \"_blank\" > OAuth 2.0 Documentation </a > page for more info.
  x_digikey_locale_language: 'x_digikey_locale_language_example', # String | Two letter code for language to search on. Langauge must be supported by the selected site. If searching on keyword, this language is used to find matches. Acceptable values include: en, ja, de, fr, ko, zhs, zht, it, es, he, nl, sv, pl, fi, da, no. Default value: en
  x_digikey_locale_currency: 'x_digikey_locale_currency_example', # String | Three letter code for Currency to return part pricing for. Currency must be supported by the selected site. Acceptable values include: USD, CAD, JPY, GBP, EUR, HKD, SGD, TWD, KRW, AUD, NZD, INR, DKK, NOK, SEK, ILS, CNY, PLN, CHF, CZK, HUF, RON, ZAR, MYR, THB, PHP. Default value: primary currency for the entered Locale-site.
  x_digikey_locale_site: 'x_digikey_locale_site_example', # String | Two letter code for Digi-Key product website to search on. Different countries sites have different part restrictions, supported languages, and currencies. Acceptable values include: US, CA, JP, UK, DE, AT, BE, DK, FI, GR, IE, IT, LU, NL, NO, PT, ES, KR, HK, SG, CN, TW, AU, FR, IN, NZ, SE, MX, CH, IL, PL, SK, SI, LV, LT, EE, CZ, HU, BG, MY, ZA, RO, TH, PH. Default value: US
  x_digikey_customer_id: 'x_digikey_customer_id_example' # String | Your Digi-Key Customer id. If your account has multiple Customer Ids for different regions, this allows you to select one of them.
}

begin
  #Calculate the DigiReel pricing for the given DigiKeyProductNumber and RequestedQuantity
  result = api_instance.digi_reel_pricing(product_number, requested_quantity, x_digikey_client_id, opts)
  p result
rescue DigiKey::ApiError => e
  puts "Exception when calling ProductSearchApi->digi_reel_pricing: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **product_number** | **String**| The Digi-Key ProductNumber requested for Digi-Reel price calculation. It must be a  Digi-Key Product number that is for a Digi-Reel pack type. | 
 **requested_quantity** | **Integer**| The quantity of the product you are looking to create a Digi-Reel with. Must be greater  than 0. | 
 **x_digikey_client_id** | **String**| The CliendId for your app. | 
 **authorization** | **String**| OAuth Bearer Token. Please see&lt;a href&#x3D; \&quot;https://developer.digikey.com/documentation/oauth\&quot; target&#x3D; \&quot;_blank\&quot; &gt; OAuth 2.0 Documentation &lt;/a &gt; page for more info. | [optional] 
 **x_digikey_locale_language** | **String**| Two letter code for language to search on. Langauge must be supported by the selected site. If searching on keyword, this language is used to find matches. Acceptable values include: en, ja, de, fr, ko, zhs, zht, it, es, he, nl, sv, pl, fi, da, no. Default value: en | [optional] 
 **x_digikey_locale_currency** | **String**| Three letter code for Currency to return part pricing for. Currency must be supported by the selected site. Acceptable values include: USD, CAD, JPY, GBP, EUR, HKD, SGD, TWD, KRW, AUD, NZD, INR, DKK, NOK, SEK, ILS, CNY, PLN, CHF, CZK, HUF, RON, ZAR, MYR, THB, PHP. Default value: primary currency for the entered Locale-site. | [optional] 
 **x_digikey_locale_site** | **String**| Two letter code for Digi-Key product website to search on. Different countries sites have different part restrictions, supported languages, and currencies. Acceptable values include: US, CA, JP, UK, DE, AT, BE, DK, FI, GR, IE, IT, LU, NL, NO, PT, ES, KR, HK, SG, CN, TW, AU, FR, IN, NZ, SE, MX, CH, IL, PL, SK, SI, LV, LT, EE, CZ, HU, BG, MY, ZA, RO, TH, PH. Default value: US | [optional] 
 **x_digikey_customer_id** | **String**| Your Digi-Key Customer id. If your account has multiple Customer Ids for different regions, this allows you to select one of them. | [optional] 

### Return type

[**DigiReelPricing**](DigiReelPricing.md)

### Authorization

[apiKeySecurity](../README.md#apiKeySecurity), [oauth2ApplicationSecurity](../README.md#oauth2ApplicationSecurity)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **keyword_search**
> KeywordResponse keyword_search(x_digikey_client_id, opts)

Enter parameters, keywords, or a manufacturer part number/DigiKey part number and receive many fields of product information for each match. Note that MyPricing is not returned.

Search for product information based on part number, description, manufacturer, or category. This new API supports two-legged and three-legged OAuth authentication.   [all endpoints for https://developer.digikey.com/products/product-information-v4/productsearch]    While the MyPricing field is included in the KeywordSearch response, it will not be populated. Only StandardPricing will be included.  Please use the ProductDetails or ProductPricing endpoints to receive MyPricing

### Example
```ruby
# load the gem
require 'digikey_api'
# setup authorization
DigiKey.configure do |config|
  # Configure API key authorization: apiKeySecurity
  config.api_key['X-DIGIKEY-Client-Id'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['X-DIGIKEY-Client-Id'] = 'Bearer'

  # Configure OAuth2 access token for authorization: oauth2ApplicationSecurity
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = DigiKey::ProductSearchApi.new

x_digikey_client_id = 'x_digikey_client_id_example' # String | The CliendId for your app.

opts = { 
  includes: 'includes_example', # String | 
  authorization: 'authorization_example', # String | OAuth Bearer Token. Please see<a href= \"https://developer.digikey.com/documentation/oauth\" target= \"_blank\" > OAuth 2.0 Documentation </a > page for more info.
  x_digikey_locale_language: 'x_digikey_locale_language_example', # String | Two letter code for language to search on. Langauge must be supported by the selected site. If searching on keyword, this language is used to find matches. Acceptable values include: en, ja, de, fr, ko, zhs, zht, it, es, he, nl, sv, pl, fi, da, no. Default value: en
  x_digikey_locale_currency: 'x_digikey_locale_currency_example', # String | Three letter code for Currency to return part pricing for. Currency must be supported by the selected site. Acceptable values include: USD, CAD, JPY, GBP, EUR, HKD, SGD, TWD, KRW, AUD, NZD, INR, DKK, NOK, SEK, ILS, CNY, PLN, CHF, CZK, HUF, RON, ZAR, MYR, THB, PHP. Default value: primary currency for the entered Locale-site.
  x_digikey_locale_site: 'x_digikey_locale_site_example', # String | Two letter code for Digi-Key product website to search on. Different countries sites have different part restrictions, supported languages, and currencies. Acceptable values include: US, CA, JP, UK, DE, AT, BE, DK, FI, GR, IE, IT, LU, NL, NO, PT, ES, KR, HK, SG, CN, TW, AU, FR, IN, NZ, SE, MX, CH, IL, PL, SK, SI, LV, LT, EE, CZ, HU, BG, MY, ZA, RO, TH, PH. Default value: US
  x_digikey_customer_id: 'x_digikey_customer_id_example', # String | Your Digi-Key Customer id. If your account has multiple Customer Ids for different regions, this allows you to select one of them.
  body: DigiKey::KeywordRequest.new # KeywordRequest | 
}

begin
  #Enter parameters, keywords, or a manufacturer part number/DigiKey part number and receive many fields of product information for each match. Note that MyPricing is not returned.
  result = api_instance.keyword_search(x_digikey_client_id, opts)
  p result
rescue DigiKey::ApiError => e
  puts "Exception when calling ProductSearchApi->keyword_search: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **x_digikey_client_id** | **String**| The CliendId for your app. | 
 **includes** | **String**|  | [optional] 
 **authorization** | **String**| OAuth Bearer Token. Please see&lt;a href&#x3D; \&quot;https://developer.digikey.com/documentation/oauth\&quot; target&#x3D; \&quot;_blank\&quot; &gt; OAuth 2.0 Documentation &lt;/a &gt; page for more info. | [optional] 
 **x_digikey_locale_language** | **String**| Two letter code for language to search on. Langauge must be supported by the selected site. If searching on keyword, this language is used to find matches. Acceptable values include: en, ja, de, fr, ko, zhs, zht, it, es, he, nl, sv, pl, fi, da, no. Default value: en | [optional] 
 **x_digikey_locale_currency** | **String**| Three letter code for Currency to return part pricing for. Currency must be supported by the selected site. Acceptable values include: USD, CAD, JPY, GBP, EUR, HKD, SGD, TWD, KRW, AUD, NZD, INR, DKK, NOK, SEK, ILS, CNY, PLN, CHF, CZK, HUF, RON, ZAR, MYR, THB, PHP. Default value: primary currency for the entered Locale-site. | [optional] 
 **x_digikey_locale_site** | **String**| Two letter code for Digi-Key product website to search on. Different countries sites have different part restrictions, supported languages, and currencies. Acceptable values include: US, CA, JP, UK, DE, AT, BE, DK, FI, GR, IE, IT, LU, NL, NO, PT, ES, KR, HK, SG, CN, TW, AU, FR, IN, NZ, SE, MX, CH, IL, PL, SK, SI, LV, LT, EE, CZ, HU, BG, MY, ZA, RO, TH, PH. Default value: US | [optional] 
 **x_digikey_customer_id** | **String**| Your Digi-Key Customer id. If your account has multiple Customer Ids for different regions, this allows you to select one of them. | [optional] 
 **body** | [**KeywordRequest**](KeywordRequest.md)|  | [optional] 

### Return type

[**KeywordResponse**](KeywordResponse.md)

### Authorization

[apiKeySecurity](../README.md#apiKeySecurity), [oauth2ApplicationSecurity](../README.md#oauth2ApplicationSecurity)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **manufacturers**
> ManufacturersResponse manufacturers(x_digikey_client_id, opts)

Returns all Product Manufacturers. ManufacturersId can be used in KeywordRequestDto.Filters.ManufacturerIds to  restrict a keyword search to a given Manufacturer

### Example
```ruby
# load the gem
require 'digikey_api'
# setup authorization
DigiKey.configure do |config|
  # Configure API key authorization: apiKeySecurity
  config.api_key['X-DIGIKEY-Client-Id'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['X-DIGIKEY-Client-Id'] = 'Bearer'

  # Configure OAuth2 access token for authorization: oauth2ApplicationSecurity
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = DigiKey::ProductSearchApi.new

x_digikey_client_id = 'x_digikey_client_id_example' # String | The CliendId for your app.

opts = { 
  authorization: 'authorization_example', # String | OAuth Bearer Token. Please see<a href= \"https://developer.digikey.com/documentation/oauth\" target= \"_blank\" > OAuth 2.0 Documentation </a > page for more info.
  x_digikey_locale_language: 'x_digikey_locale_language_example', # String | Two letter code for language to search on. Langauge must be supported by the selected site. If searching on keyword, this language is used to find matches. Acceptable values include: en, ja, de, fr, ko, zhs, zht, it, es, he, nl, sv, pl, fi, da, no. Default value: en
  x_digikey_locale_currency: 'x_digikey_locale_currency_example', # String | Three letter code for Currency to return part pricing for. Currency must be supported by the selected site. Acceptable values include: USD, CAD, JPY, GBP, EUR, HKD, SGD, TWD, KRW, AUD, NZD, INR, DKK, NOK, SEK, ILS, CNY, PLN, CHF, CZK, HUF, RON, ZAR, MYR, THB, PHP. Default value: primary currency for the entered Locale-site.
  x_digikey_locale_site: 'x_digikey_locale_site_example' # String | Two letter code for Digi-Key product website to search on. Different countries sites have different part restrictions, supported languages, and currencies. Acceptable values include: US, CA, JP, UK, DE, AT, BE, DK, FI, GR, IE, IT, LU, NL, NO, PT, ES, KR, HK, SG, CN, TW, AU, FR, IN, NZ, SE, MX, CH, IL, PL, SK, SI, LV, LT, EE, CZ, HU, BG, MY, ZA, RO, TH, PH. Default value: US
}

begin
  #Returns all Product Manufacturers. ManufacturersId can be used in KeywordRequestDto.Filters.ManufacturerIds to  restrict a keyword search to a given Manufacturer
  result = api_instance.manufacturers(x_digikey_client_id, opts)
  p result
rescue DigiKey::ApiError => e
  puts "Exception when calling ProductSearchApi->manufacturers: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **x_digikey_client_id** | **String**| The CliendId for your app. | 
 **authorization** | **String**| OAuth Bearer Token. Please see&lt;a href&#x3D; \&quot;https://developer.digikey.com/documentation/oauth\&quot; target&#x3D; \&quot;_blank\&quot; &gt; OAuth 2.0 Documentation &lt;/a &gt; page for more info. | [optional] 
 **x_digikey_locale_language** | **String**| Two letter code for language to search on. Langauge must be supported by the selected site. If searching on keyword, this language is used to find matches. Acceptable values include: en, ja, de, fr, ko, zhs, zht, it, es, he, nl, sv, pl, fi, da, no. Default value: en | [optional] 
 **x_digikey_locale_currency** | **String**| Three letter code for Currency to return part pricing for. Currency must be supported by the selected site. Acceptable values include: USD, CAD, JPY, GBP, EUR, HKD, SGD, TWD, KRW, AUD, NZD, INR, DKK, NOK, SEK, ILS, CNY, PLN, CHF, CZK, HUF, RON, ZAR, MYR, THB, PHP. Default value: primary currency for the entered Locale-site. | [optional] 
 **x_digikey_locale_site** | **String**| Two letter code for Digi-Key product website to search on. Different countries sites have different part restrictions, supported languages, and currencies. Acceptable values include: US, CA, JP, UK, DE, AT, BE, DK, FI, GR, IE, IT, LU, NL, NO, PT, ES, KR, HK, SG, CN, TW, AU, FR, IN, NZ, SE, MX, CH, IL, PL, SK, SI, LV, LT, EE, CZ, HU, BG, MY, ZA, RO, TH, PH. Default value: US | [optional] 

### Return type

[**ManufacturersResponse**](ManufacturersResponse.md)

### Authorization

[apiKeySecurity](../README.md#apiKeySecurity), [oauth2ApplicationSecurity](../README.md#oauth2ApplicationSecurity)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **media**
> MediaResponse media(product_number, x_digikey_client_id, opts)

Retrieve all media for a given product

### Example
```ruby
# load the gem
require 'digikey_api'
# setup authorization
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
  #Retrieve all media for a given product
  result = api_instance.media(product_number, x_digikey_client_id, opts)
  p result
rescue DigiKey::ApiError => e
  puts "Exception when calling ProductSearchApi->media: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **product_number** | **String**|  | 
 **x_digikey_client_id** | **String**| The CliendId for your app. | 
 **authorization** | **String**| OAuth Bearer Token. Please see&lt;a href&#x3D; \&quot;https://developer.digikey.com/documentation/oauth\&quot; target&#x3D; \&quot;_blank\&quot; &gt; OAuth 2.0 Documentation &lt;/a &gt; page for more info. | [optional] 
 **x_digikey_locale_language** | **String**| Two letter code for language to search on. Langauge must be supported by the selected site. If searching on keyword, this language is used to find matches. Acceptable values include: en, ja, de, fr, ko, zhs, zht, it, es, he, nl, sv, pl, fi, da, no. Default value: en | [optional] 
 **x_digikey_locale_currency** | **String**| Three letter code for Currency to return part pricing for. Currency must be supported by the selected site. Acceptable values include: USD, CAD, JPY, GBP, EUR, HKD, SGD, TWD, KRW, AUD, NZD, INR, DKK, NOK, SEK, ILS, CNY, PLN, CHF, CZK, HUF, RON, ZAR, MYR, THB, PHP. Default value: primary currency for the entered Locale-site. | [optional] 
 **x_digikey_locale_site** | **String**| Two letter code for Digi-Key product website to search on. Different countries sites have different part restrictions, supported languages, and currencies. Acceptable values include: US, CA, JP, UK, DE, AT, BE, DK, FI, GR, IE, IT, LU, NL, NO, PT, ES, KR, HK, SG, CN, TW, AU, FR, IN, NZ, SE, MX, CH, IL, PL, SK, SI, LV, LT, EE, CZ, HU, BG, MY, ZA, RO, TH, PH. Default value: US | [optional] 
 **x_digikey_customer_id** | **String**| Your Digi-Key Customer id. If your account has multiple Customer Ids for different regions, this allows you to select one of them. | [optional] 

### Return type

[**MediaResponse**](MediaResponse.md)

### Authorization

[apiKeySecurity](../README.md#apiKeySecurity), [oauth2ApplicationSecurity](../README.md#oauth2ApplicationSecurity)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **package_type_by_quantity**
> PackageTypeByQuantityResponse package_type_by_quantity(product_number, requested_quantity, x_digikey_client_id, opts)

Provide a product number and quantity to receive product information such as pricing, available quantity, and the  best  packaging type for the requested quantity of the product.  For example, given a requested quantity larger than a standard reel, this will return information about the  standard tape and reel as well as either cut tape or DKR depending on the provided preference.  Made for Cut Tape, Tape and Reel, and Digi-Reel products only. Other packaging types can be searched for, but  results may vary.  Locale information is required in the headers for accurate pricing and currencies. Locale defaults to United  States.

### Example
```ruby
# load the gem
require 'digikey_api'
# setup authorization
DigiKey.configure do |config|
  # Configure API key authorization: apiKeySecurity
  config.api_key['X-DIGIKEY-Client-Id'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['X-DIGIKEY-Client-Id'] = 'Bearer'

  # Configure OAuth2 access token for authorization: oauth2ApplicationSecurity
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = DigiKey::ProductSearchApi.new

product_number = 'product_number_example' # String | A product number. Can be either Digi-Key or Manufacturer, but some manufacturer product  numbers are ambiguous and will not be found. A DKR product number will override a CT packagingPreference.

requested_quantity = 56 # Integer | The quantity of the product that you are interested in. This will be used to determine  the quantity to purchase in standard tape and reel, and also in your product preference for the remainder.

x_digikey_client_id = 'x_digikey_client_id_example' # String | The CliendId for your app.

opts = { 
  packaging_preference: '', # String | Can be either \"CT\" for Cut Tape or \"DKR\" for Digi-Reel. This will select what package  type to use for the remainder of quantity outside a standard reel.
  authorization: 'authorization_example', # String | OAuth Bearer Token. Please see<a href= \"https://developer.digikey.com/documentation/oauth\" target= \"_blank\" > OAuth 2.0 Documentation </a > page for more info.
  x_digikey_locale_language: 'x_digikey_locale_language_example', # String | Two letter code for language to search on. Langauge must be supported by the selected site. If searching on keyword, this language is used to find matches. Acceptable values include: en, ja, de, fr, ko, zhs, zht, it, es, he, nl, sv, pl, fi, da, no. Default value: en
  x_digikey_locale_currency: 'x_digikey_locale_currency_example', # String | Three letter code for Currency to return part pricing for. Currency must be supported by the selected site. Acceptable values include: USD, CAD, JPY, GBP, EUR, HKD, SGD, TWD, KRW, AUD, NZD, INR, DKK, NOK, SEK, ILS, CNY, PLN, CHF, CZK, HUF, RON, ZAR, MYR, THB, PHP. Default value: primary currency for the entered Locale-site.
  x_digikey_locale_site: 'x_digikey_locale_site_example', # String | Two letter code for Digi-Key product website to search on. Different countries sites have different part restrictions, supported languages, and currencies. Acceptable values include: US, CA, JP, UK, DE, AT, BE, DK, FI, GR, IE, IT, LU, NL, NO, PT, ES, KR, HK, SG, CN, TW, AU, FR, IN, NZ, SE, MX, CH, IL, PL, SK, SI, LV, LT, EE, CZ, HU, BG, MY, ZA, RO, TH, PH. Default value: US
  x_digikey_customer_id: 'x_digikey_customer_id_example' # String | Your Digi-Key Customer id. If your account has multiple Customer Ids for different regions, this allows you to select one of them.
}

begin
  #Provide a product number and quantity to receive product information such as pricing, available quantity, and the  best  packaging type for the requested quantity of the product.  For example, given a requested quantity larger than a standard reel, this will return information about the  standard tape and reel as well as either cut tape or DKR depending on the provided preference.  Made for Cut Tape, Tape and Reel, and Digi-Reel products only. Other packaging types can be searched for, but  results may vary.  Locale information is required in the headers for accurate pricing and currencies. Locale defaults to United  States.
  result = api_instance.package_type_by_quantity(product_number, requested_quantity, x_digikey_client_id, opts)
  p result
rescue DigiKey::ApiError => e
  puts "Exception when calling ProductSearchApi->package_type_by_quantity: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **product_number** | **String**| A product number. Can be either Digi-Key or Manufacturer, but some manufacturer product  numbers are ambiguous and will not be found. A DKR product number will override a CT packagingPreference. | 
 **requested_quantity** | **Integer**| The quantity of the product that you are interested in. This will be used to determine  the quantity to purchase in standard tape and reel, and also in your product preference for the remainder. | 
 **x_digikey_client_id** | **String**| The CliendId for your app. | 
 **packaging_preference** | **String**| Can be either \&quot;CT\&quot; for Cut Tape or \&quot;DKR\&quot; for Digi-Reel. This will select what package  type to use for the remainder of quantity outside a standard reel. | [optional] [default to ]
 **authorization** | **String**| OAuth Bearer Token. Please see&lt;a href&#x3D; \&quot;https://developer.digikey.com/documentation/oauth\&quot; target&#x3D; \&quot;_blank\&quot; &gt; OAuth 2.0 Documentation &lt;/a &gt; page for more info. | [optional] 
 **x_digikey_locale_language** | **String**| Two letter code for language to search on. Langauge must be supported by the selected site. If searching on keyword, this language is used to find matches. Acceptable values include: en, ja, de, fr, ko, zhs, zht, it, es, he, nl, sv, pl, fi, da, no. Default value: en | [optional] 
 **x_digikey_locale_currency** | **String**| Three letter code for Currency to return part pricing for. Currency must be supported by the selected site. Acceptable values include: USD, CAD, JPY, GBP, EUR, HKD, SGD, TWD, KRW, AUD, NZD, INR, DKK, NOK, SEK, ILS, CNY, PLN, CHF, CZK, HUF, RON, ZAR, MYR, THB, PHP. Default value: primary currency for the entered Locale-site. | [optional] 
 **x_digikey_locale_site** | **String**| Two letter code for Digi-Key product website to search on. Different countries sites have different part restrictions, supported languages, and currencies. Acceptable values include: US, CA, JP, UK, DE, AT, BE, DK, FI, GR, IE, IT, LU, NL, NO, PT, ES, KR, HK, SG, CN, TW, AU, FR, IN, NZ, SE, MX, CH, IL, PL, SK, SI, LV, LT, EE, CZ, HU, BG, MY, ZA, RO, TH, PH. Default value: US | [optional] 
 **x_digikey_customer_id** | **String**| Your Digi-Key Customer id. If your account has multiple Customer Ids for different regions, this allows you to select one of them. | [optional] 

### Return type

[**PackageTypeByQuantityResponse**](PackageTypeByQuantityResponse.md)

### Authorization

[apiKeySecurity](../README.md#apiKeySecurity), [oauth2ApplicationSecurity](../README.md#oauth2ApplicationSecurity)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **product_details**
> ProductDetails product_details(product_number, x_digikey_client_id, opts)

Enter a manufacturer part number/DigiKey part number and receive all of the production information fields for a single-matched product. MyPricing is shown if applicable.  If the manufacturer part number has more than one match, we will respond with an error.

Works best with a Digi-Key product number. MyPricing is shown if applicable.  Locale information is required in the headers for accurate pricing and currencies. Locale and currencies will be set to default values if not populated or populated with invalid values. Check the “Settings Used” fields to see which values we used for the response.

### Example
```ruby
# load the gem
require 'digikey_api'
# setup authorization
DigiKey.configure do |config|
  # Configure API key authorization: apiKeySecurity
  config.api_key['X-DIGIKEY-Client-Id'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['X-DIGIKEY-Client-Id'] = 'Bearer'

  # Configure OAuth2 access token for authorization: oauth2ApplicationSecurity
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = DigiKey::ProductSearchApi.new

product_number = 'product_number_example' # String | The product to retrieve details for.

x_digikey_client_id = 'x_digikey_client_id_example' # String | The CliendId for your app.

opts = { 
  includes: 'includes_example', # String | 
  authorization: 'authorization_example', # String | OAuth Bearer Token. Please see<a href= \"https://developer.digikey.com/documentation/oauth\" target= \"_blank\" > OAuth 2.0 Documentation </a > page for more info.
  x_digikey_locale_language: 'x_digikey_locale_language_example', # String | Two letter code for language to search on. Langauge must be supported by the selected site. If searching on keyword, this language is used to find matches. Acceptable values include: en, ja, de, fr, ko, zhs, zht, it, es, he, nl, sv, pl, fi, da, no. Default value: en
  x_digikey_locale_currency: 'x_digikey_locale_currency_example', # String | Three letter code for Currency to return part pricing for. Currency must be supported by the selected site. Acceptable values include: USD, CAD, JPY, GBP, EUR, HKD, SGD, TWD, KRW, AUD, NZD, INR, DKK, NOK, SEK, ILS, CNY, PLN, CHF, CZK, HUF, RON, ZAR, MYR, THB, PHP. Default value: primary currency for the entered Locale-site.
  x_digikey_locale_site: 'x_digikey_locale_site_example', # String | Two letter code for Digi-Key product website to search on. Different countries sites have different part restrictions, supported languages, and currencies. Acceptable values include: US, CA, JP, UK, DE, AT, BE, DK, FI, GR, IE, IT, LU, NL, NO, PT, ES, KR, HK, SG, CN, TW, AU, FR, IN, NZ, SE, MX, CH, IL, PL, SK, SI, LV, LT, EE, CZ, HU, BG, MY, ZA, RO, TH, PH. Default value: US
  x_digikey_customer_id: 'x_digikey_customer_id_example' # String | Your Digi-Key Customer id. If your account has multiple Customer Ids for different regions, this allows you to select one of them.
}

begin
  #Enter a manufacturer part number/DigiKey part number and receive all of the production information fields for a single-matched product. MyPricing is shown if applicable.  If the manufacturer part number has more than one match, we will respond with an error.
  result = api_instance.product_details(product_number, x_digikey_client_id, opts)
  p result
rescue DigiKey::ApiError => e
  puts "Exception when calling ProductSearchApi->product_details: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **product_number** | **String**| The product to retrieve details for. | 
 **x_digikey_client_id** | **String**| The CliendId for your app. | 
 **includes** | **String**|  | [optional] 
 **authorization** | **String**| OAuth Bearer Token. Please see&lt;a href&#x3D; \&quot;https://developer.digikey.com/documentation/oauth\&quot; target&#x3D; \&quot;_blank\&quot; &gt; OAuth 2.0 Documentation &lt;/a &gt; page for more info. | [optional] 
 **x_digikey_locale_language** | **String**| Two letter code for language to search on. Langauge must be supported by the selected site. If searching on keyword, this language is used to find matches. Acceptable values include: en, ja, de, fr, ko, zhs, zht, it, es, he, nl, sv, pl, fi, da, no. Default value: en | [optional] 
 **x_digikey_locale_currency** | **String**| Three letter code for Currency to return part pricing for. Currency must be supported by the selected site. Acceptable values include: USD, CAD, JPY, GBP, EUR, HKD, SGD, TWD, KRW, AUD, NZD, INR, DKK, NOK, SEK, ILS, CNY, PLN, CHF, CZK, HUF, RON, ZAR, MYR, THB, PHP. Default value: primary currency for the entered Locale-site. | [optional] 
 **x_digikey_locale_site** | **String**| Two letter code for Digi-Key product website to search on. Different countries sites have different part restrictions, supported languages, and currencies. Acceptable values include: US, CA, JP, UK, DE, AT, BE, DK, FI, GR, IE, IT, LU, NL, NO, PT, ES, KR, HK, SG, CN, TW, AU, FR, IN, NZ, SE, MX, CH, IL, PL, SK, SI, LV, LT, EE, CZ, HU, BG, MY, ZA, RO, TH, PH. Default value: US | [optional] 
 **x_digikey_customer_id** | **String**| Your Digi-Key Customer id. If your account has multiple Customer Ids for different regions, this allows you to select one of them. | [optional] 

### Return type

[**ProductDetails**](ProductDetails.md)

### Authorization

[apiKeySecurity](../README.md#apiKeySecurity), [oauth2ApplicationSecurity](../README.md#oauth2ApplicationSecurity)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **product_pricing**
> ProductPricingResponse product_pricing(product_number, x_digikey_client_id, opts)

Enter a manufacturer part number/DigiKey part number or partial manufacturer part number/DigiKey part number and receive product information fields for each matched product. MyPricing is shown if applicable.

Allows you to use inStock and excludeMarketplace as limit. If there are multiple matching parts, you can see the additional ones by incrementing your input using the offset and limit fields. Locale information is required in the headers for accurate pricing and currencies. Locale and currencies will be set to default values if not populated or populated with invalid values. Check the “Settings Used” fields to see which values we used for the response.

### Example
```ruby
# load the gem
require 'digikey_api'
# setup authorization
DigiKey.configure do |config|
  # Configure API key authorization: apiKeySecurity
  config.api_key['X-DIGIKEY-Client-Id'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['X-DIGIKEY-Client-Id'] = 'Bearer'

  # Configure OAuth2 access token for authorization: oauth2ApplicationSecurity
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = DigiKey::ProductSearchApi.new

product_number = 'product_number_example' # String | ProducuctNubmer to search on. Can be partial part number, manufacturer part number, or a Digi-Key part number. Enter the ProductNumber to be searched. You can enter a manufacturer part number or a DigiKey part number. You can enter a partial or complete product number. The search results are better when entering a DigiKey product number, as some manufacturers share the same manufacturer part number.

x_digikey_client_id = 'x_digikey_client_id_example' # String | The Client Id for your App. Enter the ClientID for the Product App used to make the call.

opts = { 
  limit: 5, # Integer | Enter the maximum number of products to be returned. The maximum amount is 10. Default value: 5
  offset: 0, # Integer | Enter the starting index for the records to be returned. This is used when making subsequent calls for the same ProductNumber. Default value: 0
  in_stock: false, # BOOLEAN | Enter true to exclude products that are not in stock. Default value : false
  exclude_marketplace: false, # BOOLEAN | Enter true to exclude Marketplace items and limit results to those fulfilled by DigiKey. Default value: false
  authorization: 'authorization_example', # String | OAuth Bearer Token. Please see<a href= \"https://developer.digikey.com/documentation/oauth\" target= \"_blank\" > OAuth 2.0 Documentation </a > page for more info.
  x_digikey_locale_site: 'x_digikey_locale_site_example', # String | This value determines which country’s prices are used for StandardPricing and MyPricing. Also, product restrictions can differ by country. Acceptable values include: AT, AU, BE, BG, BR, CA, CH, CN, CZ, DE, DK, EE, ES, FI, FR, GR, HK, HU, IE, IL, IN, IT, JP, KR, LT, LU, LV, MX, MY, NL, NO, NZ, PH, PL, PT, RO, SE, SG, SI, SK, TH, TW, UK, US, ZA Default value: US
  x_digikey_locale_language: 'x_digikey_locale_language_example', # String | This value determines which language is used for the links in reply. If the entered language is not valid for the entered Locale-Site, it will default to English. Acceptable values include: CS, DA, DE, EN, ES, FI, FR, HE, HU, IT, JA, KO, NL, NO, PL, PT, RO, SV, TH, ZHS, ZHT Default value: English
  x_digikey_locale_currency: 'x_digikey_locale_currency_example', # String | This value determines which country’s prices are used for StandardPricing and MyPricing. If the value is not allowed for the entered Locale-Site, it defaults to the primary currency for that Locale-Site. Ex: If Locale-Currency = EUR and Locale-Site = US, then the system will default to USD and note that in the response. Acceptable values include: AUD, CAD, CHF, CNY, CZK, DKK, EUR, GBP, HKD, HUF, ILS, INR, JPY, KRW, MYR, NOK, NZD, PHP, PLN, RON, SEK, SGD, THB, TWD, USD, ZAR Default value: primary currency for the entered Locale-site.
  x_digikey_customer_id: 'x_digikey_customer_id_example' # String | This value determines if MyPricing, if available, will be returned and which region’s pricing agreement will be used. MyPricing is set for the country of the CustomerID’s physical location. The CustomerID must have a myDIGIKEY registration tied to that location.
}

begin
  #Enter a manufacturer part number/DigiKey part number or partial manufacturer part number/DigiKey part number and receive product information fields for each matched product. MyPricing is shown if applicable.
  result = api_instance.product_pricing(product_number, x_digikey_client_id, opts)
  p result
rescue DigiKey::ApiError => e
  puts "Exception when calling ProductSearchApi->product_pricing: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **product_number** | **String**| ProducuctNubmer to search on. Can be partial part number, manufacturer part number, or a Digi-Key part number. Enter the ProductNumber to be searched. You can enter a manufacturer part number or a DigiKey part number. You can enter a partial or complete product number. The search results are better when entering a DigiKey product number, as some manufacturers share the same manufacturer part number. | 
 **x_digikey_client_id** | **String**| The Client Id for your App. Enter the ClientID for the Product App used to make the call. | 
 **limit** | **Integer**| Enter the maximum number of products to be returned. The maximum amount is 10. Default value: 5 | [optional] [default to 5]
 **offset** | **Integer**| Enter the starting index for the records to be returned. This is used when making subsequent calls for the same ProductNumber. Default value: 0 | [optional] [default to 0]
 **in_stock** | **BOOLEAN**| Enter true to exclude products that are not in stock. Default value : false | [optional] [default to false]
 **exclude_marketplace** | **BOOLEAN**| Enter true to exclude Marketplace items and limit results to those fulfilled by DigiKey. Default value: false | [optional] [default to false]
 **authorization** | **String**| OAuth Bearer Token. Please see&lt;a href&#x3D; \&quot;https://developer.digikey.com/documentation/oauth\&quot; target&#x3D; \&quot;_blank\&quot; &gt; OAuth 2.0 Documentation &lt;/a &gt; page for more info. | [optional] 
 **x_digikey_locale_site** | **String**| This value determines which country’s prices are used for StandardPricing and MyPricing. Also, product restrictions can differ by country. Acceptable values include: AT, AU, BE, BG, BR, CA, CH, CN, CZ, DE, DK, EE, ES, FI, FR, GR, HK, HU, IE, IL, IN, IT, JP, KR, LT, LU, LV, MX, MY, NL, NO, NZ, PH, PL, PT, RO, SE, SG, SI, SK, TH, TW, UK, US, ZA Default value: US | [optional] 
 **x_digikey_locale_language** | **String**| This value determines which language is used for the links in reply. If the entered language is not valid for the entered Locale-Site, it will default to English. Acceptable values include: CS, DA, DE, EN, ES, FI, FR, HE, HU, IT, JA, KO, NL, NO, PL, PT, RO, SV, TH, ZHS, ZHT Default value: English | [optional] 
 **x_digikey_locale_currency** | **String**| This value determines which country’s prices are used for StandardPricing and MyPricing. If the value is not allowed for the entered Locale-Site, it defaults to the primary currency for that Locale-Site. Ex: If Locale-Currency &#x3D; EUR and Locale-Site &#x3D; US, then the system will default to USD and note that in the response. Acceptable values include: AUD, CAD, CHF, CNY, CZK, DKK, EUR, GBP, HKD, HUF, ILS, INR, JPY, KRW, MYR, NOK, NZD, PHP, PLN, RON, SEK, SGD, THB, TWD, USD, ZAR Default value: primary currency for the entered Locale-site. | [optional] 
 **x_digikey_customer_id** | **String**| This value determines if MyPricing, if available, will be returned and which region’s pricing agreement will be used. MyPricing is set for the country of the CustomerID’s physical location. The CustomerID must have a myDIGIKEY registration tied to that location. | [optional] 

### Return type

[**ProductPricingResponse**](ProductPricingResponse.md)

### Authorization

[apiKeySecurity](../README.md#apiKeySecurity), [oauth2ApplicationSecurity](../README.md#oauth2ApplicationSecurity)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **recommended_products**
> RecommendedProductsResponse recommended_products(product_number, x_digikey_client_id, opts)

Returns a list of recommended products for the given Product number.

### Example
```ruby
# load the gem
require 'digikey_api'
# setup authorization
DigiKey.configure do |config|
  # Configure API key authorization: apiKeySecurity
  config.api_key['X-DIGIKEY-Client-Id'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['X-DIGIKEY-Client-Id'] = 'Bearer'

  # Configure OAuth2 access token for authorization: oauth2ApplicationSecurity
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = DigiKey::ProductSearchApi.new

product_number = 'product_number_example' # String | The Product being searched for

x_digikey_client_id = 'x_digikey_client_id_example' # String | The CliendId for your app.

opts = { 
  limit: 1, # Integer | The number of records to be returned
  search_option_list: 'search_option_list_example', # String | A comma delimited list of filters that can be used to limit results. Available filters  are the following: LeadFree, CollapsePackingTypes, ExcludeNonStock, Has3DModel, InStock, ManufacturerPartSearch,  NewProductsOnly, RoHSCompliant.
  exclude_market_place_products: false, # BOOLEAN | Used to exclude MarkPlace products from search results. Default is false
  authorization: 'authorization_example', # String | OAuth Bearer Token. Please see<a href= \"https://developer.digikey.com/documentation/oauth\" target= \"_blank\" > OAuth 2.0 Documentation </a > page for more info.
  x_digikey_locale_language: 'x_digikey_locale_language_example', # String | Two letter code for language to search on. Langauge must be supported by the selected site. If searching on keyword, this language is used to find matches. Acceptable values include: en, ja, de, fr, ko, zhs, zht, it, es, he, nl, sv, pl, fi, da, no. Default value: en
  x_digikey_locale_currency: 'x_digikey_locale_currency_example', # String | Three letter code for Currency to return part pricing for. Currency must be supported by the selected site. Acceptable values include: USD, CAD, JPY, GBP, EUR, HKD, SGD, TWD, KRW, AUD, NZD, INR, DKK, NOK, SEK, ILS, CNY, PLN, CHF, CZK, HUF, RON, ZAR, MYR, THB, PHP. Default value: primary currency for the entered Locale-site.
  x_digikey_locale_site: 'x_digikey_locale_site_example' # String | Two letter code for Digi-Key product website to search on. Different countries sites have different part restrictions, supported languages, and currencies. Acceptable values include: US, CA, JP, UK, DE, AT, BE, DK, FI, GR, IE, IT, LU, NL, NO, PT, ES, KR, HK, SG, CN, TW, AU, FR, IN, NZ, SE, MX, CH, IL, PL, SK, SI, LV, LT, EE, CZ, HU, BG, MY, ZA, RO, TH, PH. Default value: US
}

begin
  #Returns a list of recommended products for the given Product number.
  result = api_instance.recommended_products(product_number, x_digikey_client_id, opts)
  p result
rescue DigiKey::ApiError => e
  puts "Exception when calling ProductSearchApi->recommended_products: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **product_number** | **String**| The Product being searched for | 
 **x_digikey_client_id** | **String**| The CliendId for your app. | 
 **limit** | **Integer**| The number of records to be returned | [optional] [default to 1]
 **search_option_list** | **String**| A comma delimited list of filters that can be used to limit results. Available filters  are the following: LeadFree, CollapsePackingTypes, ExcludeNonStock, Has3DModel, InStock, ManufacturerPartSearch,  NewProductsOnly, RoHSCompliant. | [optional] 
 **exclude_market_place_products** | **BOOLEAN**| Used to exclude MarkPlace products from search results. Default is false | [optional] [default to false]
 **authorization** | **String**| OAuth Bearer Token. Please see&lt;a href&#x3D; \&quot;https://developer.digikey.com/documentation/oauth\&quot; target&#x3D; \&quot;_blank\&quot; &gt; OAuth 2.0 Documentation &lt;/a &gt; page for more info. | [optional] 
 **x_digikey_locale_language** | **String**| Two letter code for language to search on. Langauge must be supported by the selected site. If searching on keyword, this language is used to find matches. Acceptable values include: en, ja, de, fr, ko, zhs, zht, it, es, he, nl, sv, pl, fi, da, no. Default value: en | [optional] 
 **x_digikey_locale_currency** | **String**| Three letter code for Currency to return part pricing for. Currency must be supported by the selected site. Acceptable values include: USD, CAD, JPY, GBP, EUR, HKD, SGD, TWD, KRW, AUD, NZD, INR, DKK, NOK, SEK, ILS, CNY, PLN, CHF, CZK, HUF, RON, ZAR, MYR, THB, PHP. Default value: primary currency for the entered Locale-site. | [optional] 
 **x_digikey_locale_site** | **String**| Two letter code for Digi-Key product website to search on. Different countries sites have different part restrictions, supported languages, and currencies. Acceptable values include: US, CA, JP, UK, DE, AT, BE, DK, FI, GR, IE, IT, LU, NL, NO, PT, ES, KR, HK, SG, CN, TW, AU, FR, IN, NZ, SE, MX, CH, IL, PL, SK, SI, LV, LT, EE, CZ, HU, BG, MY, ZA, RO, TH, PH. Default value: US | [optional] 

### Return type

[**RecommendedProductsResponse**](RecommendedProductsResponse.md)

### Authorization

[apiKeySecurity](../README.md#apiKeySecurity), [oauth2ApplicationSecurity](../README.md#oauth2ApplicationSecurity)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **substitutions**
> ProductSubstitutesResponse substitutions(product_number, x_digikey_client_id, opts)

Retrieve Substitutions for a given product

Works best with a Digi-Key Product number. Some manufacturer product numbers conflict with unrelated products and  may not  return the correct product.  Locale information is required in the headers for accurate pricing and currencies. Locale defaults to United  States.

### Example
```ruby
# load the gem
require 'digikey_api'
# setup authorization
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
  includes: 'includes_example', # String | 
  authorization: 'authorization_example', # String | OAuth Bearer Token. Please see<a href= \"https://developer.digikey.com/documentation/oauth\" target= \"_blank\" > OAuth 2.0 Documentation </a > page for more info.
  x_digikey_locale_language: 'x_digikey_locale_language_example', # String | Two letter code for language to search on. Langauge must be supported by the selected site. If searching on keyword, this language is used to find matches. Acceptable values include: en, ja, de, fr, ko, zhs, zht, it, es, he, nl, sv, pl, fi, da, no. Default value: en
  x_digikey_locale_currency: 'x_digikey_locale_currency_example', # String | Three letter code for Currency to return part pricing for. Currency must be supported by the selected site. Acceptable values include: USD, CAD, JPY, GBP, EUR, HKD, SGD, TWD, KRW, AUD, NZD, INR, DKK, NOK, SEK, ILS, CNY, PLN, CHF, CZK, HUF, RON, ZAR, MYR, THB, PHP. Default value: primary currency for the entered Locale-site.
  x_digikey_locale_site: 'x_digikey_locale_site_example', # String | Two letter code for Digi-Key product website to search on. Different countries sites have different part restrictions, supported languages, and currencies. Acceptable values include: US, CA, JP, UK, DE, AT, BE, DK, FI, GR, IE, IT, LU, NL, NO, PT, ES, KR, HK, SG, CN, TW, AU, FR, IN, NZ, SE, MX, CH, IL, PL, SK, SI, LV, LT, EE, CZ, HU, BG, MY, ZA, RO, TH, PH. Default value: US
  x_digikey_customer_id: 'x_digikey_customer_id_example' # String | Your Digi-Key Customer id. If your account has multiple Customer Ids for different regions, this allows you to select one of them.
}

begin
  #Retrieve Substitutions for a given product
  result = api_instance.substitutions(product_number, x_digikey_client_id, opts)
  p result
rescue DigiKey::ApiError => e
  puts "Exception when calling ProductSearchApi->substitutions: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **product_number** | **String**|  | 
 **x_digikey_client_id** | **String**| The CliendId for your app. | 
 **includes** | **String**|  | [optional] 
 **authorization** | **String**| OAuth Bearer Token. Please see&lt;a href&#x3D; \&quot;https://developer.digikey.com/documentation/oauth\&quot; target&#x3D; \&quot;_blank\&quot; &gt; OAuth 2.0 Documentation &lt;/a &gt; page for more info. | [optional] 
 **x_digikey_locale_language** | **String**| Two letter code for language to search on. Langauge must be supported by the selected site. If searching on keyword, this language is used to find matches. Acceptable values include: en, ja, de, fr, ko, zhs, zht, it, es, he, nl, sv, pl, fi, da, no. Default value: en | [optional] 
 **x_digikey_locale_currency** | **String**| Three letter code for Currency to return part pricing for. Currency must be supported by the selected site. Acceptable values include: USD, CAD, JPY, GBP, EUR, HKD, SGD, TWD, KRW, AUD, NZD, INR, DKK, NOK, SEK, ILS, CNY, PLN, CHF, CZK, HUF, RON, ZAR, MYR, THB, PHP. Default value: primary currency for the entered Locale-site. | [optional] 
 **x_digikey_locale_site** | **String**| Two letter code for Digi-Key product website to search on. Different countries sites have different part restrictions, supported languages, and currencies. Acceptable values include: US, CA, JP, UK, DE, AT, BE, DK, FI, GR, IE, IT, LU, NL, NO, PT, ES, KR, HK, SG, CN, TW, AU, FR, IN, NZ, SE, MX, CH, IL, PL, SK, SI, LV, LT, EE, CZ, HU, BG, MY, ZA, RO, TH, PH. Default value: US | [optional] 
 **x_digikey_customer_id** | **String**| Your Digi-Key Customer id. If your account has multiple Customer Ids for different regions, this allows you to select one of them. | [optional] 

### Return type

[**ProductSubstitutesResponse**](ProductSubstitutesResponse.md)

### Authorization

[apiKeySecurity](../README.md#apiKeySecurity), [oauth2ApplicationSecurity](../README.md#oauth2ApplicationSecurity)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



