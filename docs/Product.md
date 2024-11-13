# DigiKey::Product

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**description** | [**Description**](Description.md) |  | [optional] 
**manufacturer** | [**Manufacturer**](Manufacturer.md) |  | [optional] 
**manufacturer_product_number** | **String** | The manufacturer part number. Note that some manufacturer part numbers may be used by multiple manufacturers for different parts. | [optional] 
**unit_price** | **Float** | The price for a single unit of this product. | [optional] 
**product_url** | **String** | Full URL of the Digi-Key catalog page to purchase the product. This is based on your provided Locale values. | [optional] 
**datasheet_url** | **String** | The URL to the product&#39;s datasheet. | [optional] 
**photo_url** | **String** | The URL to the product&#39;s image. | [optional] 
**product_variations** | [**Array&lt;ProductVariation&gt;**](ProductVariation.md) |  | [optional] 
**quantity_available** | **Integer** | The sum of the quantity for all package types that are found in ProductVariations. | [optional] 
**product_status** | [**ProductStatusV4**](ProductStatusV4.md) |  | [optional] 
**back_order_not_allowed** | **BOOLEAN** | True if back order is not allowed for this product | [optional] 
**normally_stocking** | **BOOLEAN** | Indicates if a product is normally stocked. | [optional] 
**discontinued** | **BOOLEAN** | This product is no longer sold at Digi-Key and will no longer be stocked. | [optional] 
**end_of_life** | **BOOLEAN** | This product is no longer manufactured and will no longer be stocked once stock is depleted. | [optional] 
**ncnr** | **BOOLEAN** | Is product non-cancellable and non-returnable | [optional] 
**primary_video_url** | **String** | The URL to the product&#39;s video | [optional] 
**parameters** | [**Array&lt;ParameterValue&gt;**](ParameterValue.md) |  | [optional] 
**base_product_number** | [**BaseProduct**](BaseProduct.md) |  | [optional] 
**category** | [**CategoryNode**](CategoryNode.md) |  | [optional] 
**date_last_buy_chance** | **DateTime** | Last date that the product will be available for purchase. Date is in ISO 8601. | [optional] 
**manufacturer_lead_weeks** | **String** | The number of weeks expected to receive stock from manufacturer. | [optional] 
**manufacturer_public_quantity** | **Integer** | Quantity of this product available to order from manufacturer. | [optional] 
**series** | [**Series**](Series.md) |  | [optional] 
**shipping_info** | **String** | Additional shipping information - if available | [optional] 
**classifications** | [**Classifications**](Classifications.md) |  | [optional] 


