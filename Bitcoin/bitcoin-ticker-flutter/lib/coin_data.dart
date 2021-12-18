import 'dart:convert';

import 'package:http/http.dart' as http;

const Url = 'https://rest.coinapi.io/v1/exchangerate/BTC/USD?apikey=$ApiKey';
const ApiKey = 'D6E30978-76B9-4726-92E6-77FEA5B5FE25';

const List<String> currenciesList = [
  'AUD',
  'BRL',
  'CAD',
  'CNY',
  'EUR',
  'GBP',
  'HKD',
  'IDR',
  'ILS',
  'INR',
  'JPY',
  'MXN',
  'NOK',
  'NZD',
  'PLN',
  'RON',
  'RUB',
  'SEK',
  'SGD',
  'USD',
  'ZAR'
];

const List<String> cryptoList = [
  'BTC',
  'ETH',
  'LTC',
];

const bitcoinAverageURL =
    'https://apiv2.bitcoinaverage.com/indices/global/ticker';

class CoinData {
  Future getCoinData() async {
    
    http.Response response =
        await http.get(Uri.parse('https://rest.coinapi.io/v1/exchangerate/BTC/USD?apikey=$ApiKey'));
    print(response.statusCode);
    if (response.statusCode == 200) {
      var decodeData = jsonDecode(response.body);

      var lastPrice = decodeData['rate'];
      return lastPrice;
    } else {
      print(response.statusCode);
       throw 'Problem with the get request';
    }
  }
}
