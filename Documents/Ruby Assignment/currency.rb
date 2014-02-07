class Numeric
@@currencies={'yen'=>0.013, 'euro'=>1.292, 'rupee'=>0.019, 'dollar' =>1}

def method_missing(method_id)

#removes 's' at the end ($), converts symbol to string
singular_currency = method_id.to_s.gsub(/s$/, '')

#if singular_currency has a key then it will multiply itself by the key
if @@currencies.has_key?(singular_currency)
	self * @@currencies[singular_currency]
else
	super
	
	end
end

#when method 'in' is called, divides itself by the currency to make conversion
def in(currency)
	singular_currency = currency.to_s.gsub( /s$/, '')

	self / @@currencies[singular_currency]
	end
end

p 5.dollars.in(:euros)
p 10.euros.in(:rupees)
