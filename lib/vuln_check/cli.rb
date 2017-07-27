require_relative 'cvedetails'

module VulnCheck
    module CLI
        def self.run(file, argv)
            vs = CVEDetails.all_product_vulnerabilities
            puts vs
        end
    end
end
