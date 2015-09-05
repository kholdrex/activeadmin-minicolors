module Formtastic
  module Inputs

    class MinicolorsPickerInput < Formtastic::Inputs::StringInput
      def input_html_options
        {
            :class => 'minicolors-input'
        }.merge(super)
      end
    end

  end
end
