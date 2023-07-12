require 'httparty'
require 'json'
require 'faker'
=begin
url = 'https://comicvine.gamespot.com/api/publishers/?api_key=7e24bc3842ca1a7a8613c14172b484c34f988e62&format=json' 

response = HTTParty.get(url)
if response.code == 200
  json_data = JSON.parse(response.body)
  data = json_data["results"]
  data.each do |item|
    begin
      publisher = Publisher.new(
        aliases: item["aliases"].presence || Faker::Name.unique.name,
        deck: item["deck"].presence || Faker::Lorem.sentence,
        description: item["description"].presence || Faker::Lorem.paragraph,
        image: item["image"]["original_url"],
        address: item["location_address"].presence || Faker::Address.street_address,
        city: item["location_city"].presence || Faker::Address.city,
        state: item["location_state"].presence || Faker::Address.state,
        name: item["name"] #.presence || Faker::Company.unique.name
      )
      
      if publisher.save
        puts "Created publisher: #{publisher.name}"
      else
        puts "Failed to create publisher: #{publisher.errors.full_messages.join(', ')}"
      end
    rescue => e
      puts "Error creating publisher: #{e.message}"
    end
  end
else
  puts "Error: #{response.code}"
end


publishers = Publisher.all
x = 0
publishers.each do |publisher|
  url = "https://comicvine.gamespot.com/api/characters/?api_key=7e24bc3842ca1a7a8613c14172b484c34f988e62&format=json&filter=publisher:#{CGI.escape(publisher.name)}"
  x = x + 1
  puts x
  response = HTTParty.get(url)
  if response.code == 200
    begin
      json_data = JSON.parse(response.body)
      data = json_data["results"]
      count = 0
      data.each.with_index do |item, index|
        break if count == 20
        begin
          character = publisher.characters.new(
            #publisher: publisher,
            aliases: item["aliases"].presence || Faker::Name.unique.name,
            deck: item["deck"].presence || Faker::Lorem.sentence,
            description: item["description"].presence || Faker::Lorem.paragraph,
            image: item["image"]["original_url"],
            name: item["name"],
            origin: item["origin"],
            real_name: item["real_name"].presence || Faker::Company.unique.name
          )
          puts
          if character.save
            puts "Created character: #{character.name}"
          else
            puts "Failed to create character: #{character.errors.full_messages.join(', ')}"
          end
          count += 1
        rescue => e
          puts "Error creating character: #{e.message}"
        end
      end
    rescue JSON::ParserError => e
      puts "JSON parsing error: #{e.message}"
    end
  else
    puts "Error: #{response.code}"
  end
end
=end

require 'httparty'

# Fetch publishers data
publishers_url = 'https://comicvine.gamespot.com/api/publishers/?api_key=7e24bc3842ca1a7a8613c14172b484c34f988e62&format=json'
publishers_response = HTTParty.get(publishers_url)
publishers_data = publishers_response['results']

# Create publishers records
publishers_data.each do |publisher|
    Publisher.create(
      name: publisher['name'] || 'N/A',
      deck: publisher['deck'] || 'N/A',
      image_thumb: publisher['image']['thumb_url'] || 'N/A',
      image_small: publisher['image']['small_url'] || 'N/A'
    )
  end


