package util

var currencyDict = map[string]interface{}{"USD": nil, "CAD": nil, "EUR": nil}

func IsSupportedCurrency(currency string) bool {
	_, ok := currencyDict[currency]
	return ok
}
