# DigiKey::PackageTypeByQuantityProduct

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**recommended_quantity** | **Integer** | Recommended quantity for product | [optional] 
**digi_key_product_number** | **String** | The Digi-Key part number. | [optional] 
**quantity_available** | **Integer** | Quantity of the product available for immediate sale. | [optional] 
**product_description** | **String** | Catalog description of the product. | [optional] 
**detailed_description** | **String** | Extended catalog description of the product. | [optional] 
**manufacturer_name** | **String** | Manufacturer of the product. | [optional] 
**manufacturer_product_number** | **String** | The manufacturer part number. Note that some manufacturer part numbers may be used by multiple manufacturers for  different parts. | [optional] 
**minimum_order_quantity** | **Integer** | The minimum quantity to order from Digi-Key. | [optional] 
**primary_datasheet_url** | **String** | The URL to the product&#39;s datasheet. | [optional] 
**primary_photo_url** | **String** | The URL to the product&#39;s image. | [optional] 
**product_status** | **String** | Status of the product. Options include: Active, Obsolete, Discontinued at Digi-Key,  Last Time Buy, Not For New Designs, Preliminary. For obsolete parts the part  will become a non-stocking item when stock is depleted; minimums will apply.  Order the quantity available or the quantity available plus a multiple of the  minimum order quantity.  /// | [optional] 
**manufacturer_lead_weeks** | **String** | The number of weeks expected to receive stock from manufacturer. | [optional] 
**manufacturer_warehouse_quantity** | **Integer** | Quantity of this product available to order from manufacturer. | [optional] 
**rohs_status** | **String** | RoHS status. Can be RoHS Compliant, RoHS non-compliant, RoHS Compliant By Exemption, Not Applicable, Vendor  undefined, Request Inventory Verification, or ROHS3 Compliant. | [optional] 
**ro_hs_compliant** | **BOOLEAN** | Boolean value for RoHS compliance. | [optional] 
**quantity_on_order** | **Integer** | Quantity of this product ordered but not immediately available. | [optional] 
**standard_pricing** | [**Array&lt;PriceBreak&gt;**](PriceBreak.md) | Standard pricing for the validated locale. | [optional] 
**my_pricing** | [**Array&lt;PriceBreak&gt;**](PriceBreak.md) | My pricing for the validated locale. | [optional] 
**product_url** | **String** | Full URL of the Digi-Key catalog page to purchase the product. This is based on your provided Locale values. | [optional] 
**market_place** | **BOOLEAN** | Is this product a marketplace product | [optional] 
**supplier** | **String** | Name of product supplier | [optional] 
**stock_note** | **String** | Description of Digi-Key&#39;s current stocking status for the product. Possible values include: In Stock, Temporarily  Out of Stock, and Limited Supply - Call. | [optional] 
**package_types** | **Array&lt;String&gt;** |  | [optional] 


