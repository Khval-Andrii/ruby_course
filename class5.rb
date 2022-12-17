class Site
    attr_reader :current_url
    HOME_URL = "https://www.home.com"
  
    def initialize
      @current_url = HOME_URL
    end
  
    def go_to(path)
      new_url = "#{HOME_URL}/#{path}"
      @current_url = new_url unless new_url == @current_url
  end
    
    def to_s
      "*----------*\n home: #{HOME_URL}\n current url: #{@current_url}\n*----------*"
    end
end

a1 = Site.new
a1.go_to("url1")
p a1.go_to("url1")