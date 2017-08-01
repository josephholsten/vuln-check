require 'yaml/store'

require_relative 'cvedetails'

VULNERABILITY_STORAGE_PATH = 'vulnerability_storage.yaml'

module VulnCheck
    module CLI
        def self.run(file, argv)
            store = YAML::Store.new VULNERABILITY_STORAGE_PATH
            current_vulns = CVEDetails.all_product_vulnerabilities

            # puts current_vulns
            new_vulns = []

            store.transaction do
                current_vulns.each do |v|
                    unless store[v[:id]]
                        store[v[:id]] = v
                        new_vulns << v
                    end
                end
            end

            unless new_vulns.empty?
                puts "New vulnerabilities found!"
                new_vulns.each do |v|
                    puts
                    puts "Product: #{v[:product]}"
                    puts "CVE: #{v[:id]}"
                    puts "Publication date: #{v[:publish_date]}"
                    puts "URL: #{v[:url]}"
                end
            end
        end
    end
end
