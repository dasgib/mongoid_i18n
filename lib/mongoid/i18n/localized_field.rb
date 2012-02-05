module Mongoid
  module I18n
    class LocalizedField
      include Mongoid::Fields::Serializable

      # Return translated values of field, accoring to current locale.
      # If :use_default_if_empty is set, then in case when there no
      # translation available for current locale, if will try to
      # get translation for defalt_locale.
      def deserialize(object)
        lookups = [self.locale]

        # TODO: Add I18n.fallbacks support instead of :use_default_if_empty
        if options[:use_default_if_empty]
          lookups.push ::I18n.default_locale.to_s
        end

        # if field is a string just return it
        if is_legacy_field(object)
          object
        else
          # Find first localized value in lookup path and return corresponding value
          object[lookups.find{|locale| object[locale] if object[locale].present? }]
        end
      end

      # check if we have a legacy field (=> a string)
      def is_legacy_field(object)
        # TODO: this is weird...
        object.class.to_s == "String" && options[:downwards_compatible]
      end

      # Return translations as keys. If :clear_empty_values is set to true
      # pairs with empty values will be rejected
      def to_hash(object)
        if options[:clear_empty_values]
          object.reject!{|k,v| v.blank?}
        end

        object
      end

      # Assing new translation to translation table.
      def assign(object, value)
        ((is_legacy_field(object) ? {::I18n.default_locale.to_s => object} : object) || {}).merge(locale => value)
      end

      # Replace translation hash with new one. If :clear_empty_values is set to
      # pairs with empty values will be reject
      def replace(object, values)
        self.to_hash(values)
      end

      # Return current locale as string
      def locale
        ::I18n.locale.to_s
      end
    end
  end
end