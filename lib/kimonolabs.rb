# require "kimonolabs/version"
require "httparty"

module Kimonolabs
  VERSION = "0.0.2"
  # Your code goes here...
  include HTTParty
  base_uri "kimonolabs.com"

  def self.dollars
  	get("/api/7bq23hf4?apikey=HrRWAYocaxgrwCa2iEDchWNAGTZw10Vu").parsed_response["results"]["collection1"].first["dollars"]
  end

  def self.brent
  	get("/api/c0y6dxlg?apikey=HrRWAYocaxgrwCa2iEDchWNAGTZw10Vu").parsed_response["results"]["collection1"].first["brent"]
  end

  def self.gold
  	get("/api/b338nvme?apikey=HrRWAYocaxgrwCa2iEDchWNAGTZw10Vu").parsed_response["results"]["collection1"].first["oncedor"]
  end

end
