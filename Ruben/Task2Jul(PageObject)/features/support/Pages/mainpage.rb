def main_page
	@main_page ||= MainTestPage.new
end

class MainTestPage
	include Capybara::DSL
	
	attr_reader :title, :user_menu	
	def initialize
		@btn_buscar = page.find('input[value="Buscar con Google"]')
		@btn_suerte = page.find('input[value="Me siento con suerte "]')
	end
	
	
	def fill_search_field(word)
		page.fill_in'lst-ib',:with => word
	end
	
	
	def click_button(text)
		page.click_on(text)
	end
	
	
	def find_result(result)
	    return page.find 'h3',:text => result
	end
	
end
	