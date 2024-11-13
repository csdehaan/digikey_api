# DigiKey::ProductPricing

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**manufacturer_product_number** | **String** | The manufacturer part number. Note that some manufacturer part numbers may be used by multiple manufacturers for different parts. | [optional] 
**manufacturer** | [**Manufacturer**](Manufacturer.md) |  | [optional] 
**description** | [**Description**](Description.md) |  | [optional] 
**quantity_available** | **Integer** | In-stock quantity that is available for immediate shipping. | [optional] 
**product_url** | **String** | Full URL of the Digi-Key catalog page to purchase the product. This is based on your provided Locale values. | [optional] 
**is_discontinued** | **BOOLEAN** | This product is no longer sold at DigiKey and will no longer be restocked. | [optional] 
**normally_stocking** | **BOOLEAN** | Indicates if a product is normally stocked. | [optional] 
**is_obsolete** | **BOOLEAN** | Product is obsolete | [optional] 
**manufacturer_lead_weeks** | **String** | The number of weeks expected to receive stock from manufacturer to DigiKey. | [optional] 
**manufacturer_public_quantity** | **Integer** | The manufacturer’s factory stock that can be ordered and will ship once DigiKey receives it from the manufacturer. | [optional] 
**standard_package** | **Integer** | The number of products in the manufacturer&#39;s standard package. | [optional] 
**export_control_class_number** | **String** | Export control class number. See documentation from the U.S. Department of Commerce. | [optional] 
**htsus_code** | **String** | Harmonized Tariff Schedule of the United States. See documentation from the U.S. International Trade Commission. | [optional] 
**moisture_sensitivity_level** | **String** | Code for Moisture Sensitivity Level of the product | [optional] 
**is_bo_not_allowed** | **BOOLEAN** | Is Back Order not allowed? True if you cannot place a backorder; false if we will allow the product to be back-ordered. | [optional] 
**is_ncnr** | **BOOLEAN** | Is product non-cancellable and non-returnable | [optional] 
**categories** | [**Array&lt;CategoryType&gt;**](CategoryType.md) | The main category that the part is in(this does not include sub categories) | [optional] 
**contains_lithium** | **BOOLEAN** | Indicates if product contains lithium | [optional] 
**contains_mercury** | **BOOLEAN** | Indicates if product contains mercury | [optional] 
**is_end_of_life** | **BOOLEAN** | This product is no longer manufactured and will no longer be stocked once stock is depleted. | [optional] 
**product_variations** | [**Array&lt;ProductPricingVariation&gt;**](ProductPricingVariation.md) | Variations of the requested ProductPricing | [optional] 


