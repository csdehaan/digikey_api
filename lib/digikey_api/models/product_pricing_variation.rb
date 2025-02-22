=begin
#ProductSearch Api

#ProductSearch Api

OpenAPI spec version: v4
Contact: dl_Agile_Team_B2B_API@digikey.com
Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.43

=end

require 'date'

module DigiKey
  # Variations of the requested ProductPricing
  class ProductPricingVariation
    # DigiKey Product number of the variation
    attr_accessor :digi_key_product_number

    # The quantity available for the specified variation.
    attr_accessor :quantity_availablefor_package_type

    attr_accessor :package_type

    # Product is a Marketplace product that ships direct from the supplier. A separate shipping fee may apply
    attr_accessor :market_place

    # Standard pricing for the validated locale.
    attr_accessor :standard_pricing

    # Your pricing for the DigiKey customer number with which you authenticated. Also dependent on locale information.
    attr_accessor :my_pricing

    # Indicates if tariff is active for variation
    attr_accessor :is_tariff_active

    # Reeling fee per product ordered
    attr_accessor :digi_reeling_fee

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'digi_key_product_number' => :'DigiKeyProductNumber',
        :'quantity_availablefor_package_type' => :'QuantityAvailableforPackageType',
        :'package_type' => :'PackageType',
        :'market_place' => :'MarketPlace',
        :'standard_pricing' => :'StandardPricing',
        :'my_pricing' => :'MyPricing',
        :'is_tariff_active' => :'IsTariffActive',
        :'digi_reeling_fee' => :'DigiReelingFee'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'digi_key_product_number' => :'String',
        :'quantity_availablefor_package_type' => :'Integer',
        :'package_type' => :'PackageType',
        :'market_place' => :'BOOLEAN',
        :'standard_pricing' => :'Array<PriceBreak>',
        :'my_pricing' => :'Array<PriceBreak>',
        :'is_tariff_active' => :'BOOLEAN',
        :'digi_reeling_fee' => :'Float'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      if attributes.has_key?(:'DigiKeyProductNumber')
        self.digi_key_product_number = attributes[:'DigiKeyProductNumber']
      end

      if attributes.has_key?(:'QuantityAvailableforPackageType')
        self.quantity_availablefor_package_type = attributes[:'QuantityAvailableforPackageType']
      end

      if attributes.has_key?(:'PackageType')
        self.package_type = attributes[:'PackageType']
      end

      if attributes.has_key?(:'MarketPlace')
        self.market_place = attributes[:'MarketPlace']
      end

      if attributes.has_key?(:'StandardPricing')
        if (value = attributes[:'StandardPricing']).is_a?(Array)
          self.standard_pricing = value
        end
      end

      if attributes.has_key?(:'MyPricing')
        if (value = attributes[:'MyPricing']).is_a?(Array)
          self.my_pricing = value
        end
      end

      if attributes.has_key?(:'IsTariffActive')
        self.is_tariff_active = attributes[:'IsTariffActive']
      end

      if attributes.has_key?(:'DigiReelingFee')
        self.digi_reeling_fee = attributes[:'DigiReelingFee']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          digi_key_product_number == o.digi_key_product_number &&
          quantity_availablefor_package_type == o.quantity_availablefor_package_type &&
          package_type == o.package_type &&
          market_place == o.market_place &&
          standard_pricing == o.standard_pricing &&
          my_pricing == o.my_pricing &&
          is_tariff_active == o.is_tariff_active &&
          digi_reeling_fee == o.digi_reeling_fee
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [digi_key_product_number, quantity_availablefor_package_type, package_type, market_place, standard_pricing, my_pricing, is_tariff_active, digi_reeling_fee].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      self.class.swagger_types.each_pair do |key, type|
        if type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the attribute
          # is documented as an array but the input is not
          if attributes[self.class.attribute_map[key]].is_a?(Array)
            self.send("#{key}=", attributes[self.class.attribute_map[key]].map { |v| _deserialize($1, v) })
          end
        elsif !attributes[self.class.attribute_map[key]].nil?
          self.send("#{key}=", _deserialize(type, attributes[self.class.attribute_map[key]]))
        end # or else data not found in attributes(hash), not an issue as the data can be optional
      end

      self
    end

    # Deserializes the data based on type
    # @param string type Data type
    # @param string value Value to be deserialized
    # @return [Object] Deserialized data
    def _deserialize(type, value)
      case type.to_sym
      when :DateTime
        DateTime.parse(value)
      when :Date
        Date.parse(value)
      when :String
        value.to_s
      when :Integer
        value.to_i
      when :Float
        value.to_f
      when :BOOLEAN
        if value.to_s =~ /\A(true|t|yes|y|1)\z/i
          true
        else
          false
        end
      when :Object
        # generic object (usually a Hash), return directly
        value
      when /\AArray<(?<inner_type>.+)>\z/
        inner_type = Regexp.last_match[:inner_type]
        value.map { |v| _deserialize(inner_type, v) }
      when /\AHash<(?<k_type>.+?), (?<v_type>.+)>\z/
        k_type = Regexp.last_match[:k_type]
        v_type = Regexp.last_match[:v_type]
        {}.tap do |hash|
          value.each do |k, v|
            hash[_deserialize(k_type, k)] = _deserialize(v_type, v)
          end
        end
      else # model
        temp_model = DigiKey.const_get(type).new
        temp_model.build_from_hash(value)
      end
    end

    # Returns the string representation of the object
    # @return [String] String presentation of the object
    def to_s
      to_hash.to_s
    end

    # to_body is an alias to to_hash (backward compatibility)
    # @return [Hash] Returns the object in the form of hash
    def to_body
      to_hash
    end

    # Returns the object in the form of hash
    # @return [Hash] Returns the object in the form of hash
    def to_hash
      hash = {}
      self.class.attribute_map.each_pair do |attr, param|
        value = self.send(attr)
        next if value.nil?
        hash[param] = _to_hash(value)
      end
      hash
    end

    # Outputs non-array value in the form of hash
    # For object, use to_hash. Otherwise, just return the value
    # @param [Object] value Any valid value
    # @return [Hash] Returns the value in the form of hash
    def _to_hash(value)
      if value.is_a?(Array)
        value.compact.map { |v| _to_hash(v) }
      elsif value.is_a?(Hash)
        {}.tap do |hash|
          value.each { |k, v| hash[k] = _to_hash(v) }
        end
      elsif value.respond_to? :to_hash
        value.to_hash
      else
        value
      end
    end

  end
end
