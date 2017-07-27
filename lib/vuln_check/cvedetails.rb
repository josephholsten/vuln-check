BASE_URL = 'http://www.cvedetails.com'
PRODUCTS = {
    'openssl' => 'http://www.cvedetails.com/vulnerability-list/vendor_id-217/product_id-383/',
    'openssh' => 'http://www.cvedetails.com/vulnerability-list/vendor_id-97/product_id-585/',
    'openvpn' => 'http://www.cvedetails.com/vulnerability-list/vendor_id-3278/product_id-5768/',
}

require 'open-uri'
require 'nokogiri'

module VulnCheck
    class CVEDetails
        def self.all_product_vulnerabilities
            PRODUCTS.keys.map {|p| product_vulnerabilities p }.flatten
        end

        def self.product_vulnerabilities(product)
            raise ArgumentError.new("Unknown product: #{product}") unless PRODUCTS.key? product
            page = open(PRODUCTS[product])

            Nokogiri::HTML(page).css('#vulnslisttable .srrowns').map do |row|
                tds = row.css('td')
                id_td = tds[1]
                publish_td = tds[5]
                {
                    product: product,
                    id: id_td.text,
                    url: BASE_URL + id_td.at_css('a')['href'],
                    publish_date: publish_td.text
                }
            end
        end
    end
end
