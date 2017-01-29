require 'builder'

xml = Builder::XmlMarkup.new(target: STDOUT, indent: 2)
xml.person(type: "programmer") do
  xml.name do
    xml.first "Ivan"
    xml.last "Ternovyi"
  end
  xml.location "Berezhany"
  xml.language "Ruby"
end
  
