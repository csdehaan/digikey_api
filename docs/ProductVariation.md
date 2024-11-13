# DigiKey::ProductVariation

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**digi_key_product_number** | **String** | DigiKey Product number of the variation | [optional] 
**package_type** | [**PackageType**](PackageType.md) |  | [optional] 
**standard_pricing** | [**Array&lt;PriceBreak&gt;**](PriceBreak.md) | Standard pricing for the validated locale. | [optional] 
**my_pricing** | [**Array&lt;PriceBreak&gt;**](PriceBreak.md) | Your pricing for the account with which you authenticated. Also dependent on locale information. | [optional] 
**market_place** | **BOOLEAN** | Product is a Marketplace product that ships direct from the supplier. A separate shipping fee may apply | [optional] 
**tariff_active** | **BOOLEAN** | Indicates if there is a tariff on the item. | [optional] 
**supplier** | [**Supplier**](Supplier.md) |  | [optional] 
**quantity_availablefor_package_type** | **Integer** | The quantity available for the specified variation. | [optional] 
**max_quantity_for_distribution** | **Integer** | Maximum order quantity for Distribution | [optional] 
**minimum_order_quantity** | **Integer** | The Minimum Order Quantity | [optional] 
**standard_package** | **Integer** | The number of products in the manufacturer&#39;s standard package. | [optional] 
**digi_reel_fee** | **Float** | Fee per reel ordered. | [optional] 


