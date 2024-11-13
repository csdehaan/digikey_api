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
  # Response for Digi-Reel Pricing Request
  class DigiReelPricing
    # Fee per reel ordered.
    attr_accessor :reeling_fee

    # Price of a single unit of the product.
    attr_accessor :unit_price

    # The total price of the requested reels and the reeling fee.
    attr_accessor :extended_price

    # The passed in quantity of the product you are looking to create a Digi-Reel with.
    attr_accessor :requested_quantity

    attr_accessor :search_locale_used

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'reeling_fee' => :'ReelingFee',
        :'unit_price' => :'UnitPrice',
        :'extended_price' => :'ExtendedPrice',
        :'requested_quantity' => :'RequestedQuantity',
        :'search_locale_used' => :'SearchLocaleUsed'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'reeling_fee' => :'Float',
        :'unit_price' => :'Float',
        :'extended_price' => :'Float',
        :'requested_quantity' => :'Integer',
        :'search_locale_used' => :'IsoSearchLocale'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      if attributes.has_key?(:'ReelingFee')
        self.reeling_fee = attributes[:'ReelingFee']
      end

      if attributes.has_key?(:'UnitPrice')
        self.unit_price = attributes[:'UnitPrice']
      end

      if attributes.has_key?(:'ExtendedPrice')
        self.extended_price = attributes[:'ExtendedPrice']
      end

      if attributes.has_key?(:'RequestedQuantity')
        self.requested_quantity = attributes[:'RequestedQuantity']
      end

      if attributes.has_key?(:'SearchLocaleUsed')
        self.search_locale_used = attributes[:'SearchLocaleUsed']
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
          reeling_fee == o.reeling_fee &&
          unit_price == o.unit_price &&
          extended_price == o.extended_price &&
          requested_quantity == o.requested_quantity &&
          search_locale_used == o.search_locale_used
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [reeling_fee, unit_price, extended_price, requested_quantity, search_locale_used].hash
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
