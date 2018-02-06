module Ethermine::Model
  class Model
    def process_attributes(attributes)
      attributes.each do |key, value|
        self.instance_variable_set(convert_name(key), value)
      end
    end

    private
      def convert_name(old_name)
        new_name = old_name.gsub(/::/, '/').
          gsub(/([A-Z]+)([A-Z][a-z])/,'\1_\2').
          gsub(/([a-z\d])([A-Z])/,'\1_\2').
          tr("-", "_").
          downcase
        new_name = "@#{new_name}"
      end
  end
end
