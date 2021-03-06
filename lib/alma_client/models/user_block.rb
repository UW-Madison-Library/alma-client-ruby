=begin
#Alma API

#This web service provides a RESTful interface to Alma.

OpenAPI spec version: 1.0.0
Contact: andy.goodnough@wisc.edu
Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.0-SNAPSHOT

=end

require 'date'

module AlmaClient
  class UserBlock
    attr_accessor :block_type

    attr_accessor :block_description

    attr_accessor :block_status

    attr_accessor :block_note

    attr_accessor :created_by

    attr_accessor :created_date

    attr_accessor :expiry_date

    attr_accessor :item_loan_id

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'block_type' => :'block_type',
        :'block_description' => :'block_description',
        :'block_status' => :'block_status',
        :'block_note' => :'block_note',
        :'created_by' => :'created_by',
        :'created_date' => :'created_date',
        :'expiry_date' => :'expiry_date',
        :'item_loan_id' => :'item_loan_id'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'block_type' => :'UserBlockCode',
        :'block_description' => :'String',
        :'block_status' => :'String',
        :'block_note' => :'String',
        :'created_by' => :'String',
        :'created_date' => :'String',
        :'expiry_date' => :'String',
        :'item_loan_id' => :'String'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      if attributes.has_key?(:'block_type')
        self.block_type = attributes[:'block_type']
      end

      if attributes.has_key?(:'block_description')
        self.block_description = attributes[:'block_description']
      end

      if attributes.has_key?(:'block_status')
        self.block_status = attributes[:'block_status']
      end

      if attributes.has_key?(:'block_note')
        self.block_note = attributes[:'block_note']
      end

      if attributes.has_key?(:'created_by')
        self.created_by = attributes[:'created_by']
      end

      if attributes.has_key?(:'created_date')
        self.created_date = attributes[:'created_date']
      end

      if attributes.has_key?(:'expiry_date')
        self.expiry_date = attributes[:'expiry_date']
      end

      if attributes.has_key?(:'item_loan_id')
        self.item_loan_id = attributes[:'item_loan_id']
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
          block_type == o.block_type &&
          block_description == o.block_description &&
          block_status == o.block_status &&
          block_note == o.block_note &&
          created_by == o.created_by &&
          created_date == o.created_date &&
          expiry_date == o.expiry_date &&
          item_loan_id == o.item_loan_id
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [block_type, block_description, block_status, block_note, created_by, created_date, expiry_date, item_loan_id].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      self.class.swagger_types.each_pair do |key, type|
        if type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the the attribute
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
        temp_model = AlmaClient.const_get(type).new
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
