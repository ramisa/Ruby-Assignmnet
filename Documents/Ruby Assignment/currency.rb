	

    class Numeric
      @@currencies = {'yen' => 0.013, 'euro' => 1.292, 'rupee' => 0.019, 'dollar' => 1}
     
      def method_missing(method_id)
        singular_currency = method_id.to_s.chomp('s')
        if @@currencies.has_key?(singular_currency)
          self * @@currencies[singular_currency]
        else
          super
        end
      end
     
      def in(currency)
        raise 'Param should be a symbol' unless currency.kind_of? Symbol
        singular_currency = currency.to_s.chomp('s')
        self / @@currencies[singular_currency]
      end
    end
     
    puts 5.dollars.in(:euros)
    puts 10.dollars.in(:rupees)

