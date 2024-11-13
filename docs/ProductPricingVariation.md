# DigiKey::ProductPricingVariation

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**digi_key_product_number** | **String** | DigiKey Product number of the variation | [optional] 
**quantity_availablefor_package_type** | **Integer** | The quantity available for the specified variation. | [optional] 
**package_type** | [**PackageType**](PackageType.md) |  | [optional] 
**market_place** | **BOOLEAN** | Product is a Marketplace product that ships direct from the supplier. A separate shipping fee may apply | [optional] 
**standard_pricing** | [**Array&lt;PriceBreak&gt;**](PriceBreak.md) | Standard pricing for the validated locale. | [optional] 
**my_pricing** | [**Array&lt;PriceBreak&gt;**](PriceBreak.md) | Your pricing for the DigiKey customer number with which you authenticated. Also dependent on locale information. | [optional] 
**is_tariff_active** | **BOOLEAN** | Indicates if tariff is active for variation | [optional] 
**digi_reeling_fee** | **Float** | Reeling fee per product ordered | [optional] 


