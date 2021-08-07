require 'nokogiri'
require 'httparty'
require 'byebug'
require 'pry'

# def scraper
#     url = 'https://www.nike.com/w/back-to-school-840ik' 
#     unparsed_page = HTTParty.get(url)
#     parse_page = Nokogiri::HTML(unparsed_page)
#     cards_array = Array.new
#     cards = parse_page.css('.product-card') #all product card divs

#     cards.each do |card|
#         product = {
#             title: card.css('.product-card__title').text,
#             price: card.css('.product-card__price').text 
#         }
#         cards_array << product
        
#     end 
#     byebug
# end 



# def scraper
#     url = 'https://toolstorechicago.com/' 
#     unparsed_page = HTTParty.get(url)
#     parse_page = Nokogiri::HTML(unparsed_page)
#     string = parse_page.to_s

#     if string.include? "Ave." 
#         array = string.split(' ')
#         index = array.find_index('Ave.')
#         index_value = array.fetch(index)
#         left_index = array.fetch(index - 1)
#         left_two_index = array.fetch(index - 2)
#         right_index = array.fetch(index + 1)
#         right_two_index = array.fetch(index + 2)
#         puts left_two_index + ' ' + left_index + ' ' + index_value + ' ' + right_index + ' ' + right_two_index
#     end 


    

   
# end 

# scraper




string = 'hi road my name is 123 hello ave Harlem, NY 32165 anthony'

if string.include? "ave" || "road"
    array = string.split(' ')
    road_name_index = array.find_index('ave')
    index_value = array.fetch(road_name_index)
    zip_code = array.find_index('32165')
    biz_num_index = array.find_index('123')

    i = road_name_index - 1
    first_address_array = []
    while i != (biz_num_index - 1) do 
        first_address_array << array.fetch(i)
        i -= 1
    end    
    puts first_address_array.reverse.join(' ') + ' ' + index_value
    
    i = road_name_index + 1
    second_address_array = []
    while i != (zip_code + 1) do 
        second_address_array << array.fetch(i)
        i += 1
    end 
    puts second_address_array.join(' ')


    # index_value = array.fetch(index)
    # left_index = array.fetch(index - 1)
    # right_index = array.fetch(index + 1)
    # puts left_index + ' ' + index_value + ' ' + right_index
end 




