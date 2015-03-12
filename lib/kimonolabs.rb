# require "kimonolabs/version"
require "httparty"

module Kimonolabs
  VERSION = "0.0.1"
  # Your code goes here...
  include HTTParty
  base_uri "kimonolabs.com"

  def self.dollars
  	get("/api/7bq23hf4?apikey=HrRWAYocaxgrwCa2iEDchWNAGTZw10Vu").parsed_response["results"]["collection1"].first["dollars"]
  end

  def self.brent
  	get("/api/a5a6rymq?apikey=HrRWAYocaxgrwCa2iEDchWNAGTZw10Vu").parsed_response["results"]["collection1"].first["brent"]
  end

  def self.gold
  	get("/api/aqb3i3q8?apikey=HrRWAYocaxgrwCa2iEDchWNAGTZw10Vu").parsed_response["results"]["collection1"].first["oncedor"]
  end

end
