class Site
    HOME_URL = "https://www.home.com"
    attr_reader :current_url
    @@path = Array.new
    
    def initialize
      @current_url = HOME_URL
      @@path.append(HOME_URL)
    end
  
    def go_to(url)
      new_url = "#{HOME_URL}/#{url}"
      if Site.correct(new_url) != @current_url
        @current_url = Site.correct(new_url)
        @@path.push(@current_url)
      end
    end
    
    def to_s
      "*----------*\n home: #{HOME_URL}\n current_url: #{@current_url}\n history: #{@@path}\n*----------*"
    end
  
    def <(other)
      @@path.index(@current_url) < @@path.index(other.current_url)
    end
    
    def >(other)
      @@path.index(@current_url) > @@path.index(other.current_url)
    end
    
    def ==(other)
      @@path.index(@current_url) == @@path.index(other.current_url)
    end
    
    def !=(other)
      @@path.index(@current_url) != @@path.index(other.current_url)
    end

    private
    def self.correct(str)
      str.gsub(/\s/, "%20")
    end
end

a1 = Site.new
a1.go_to("first")
a2 = Site.new
a2.go_to("second")
a1.go_to("first 1")
a1.go_to("first 2")
a1.go_to("first 2")
puts a1 < a2
puts a1 > a2
puts a1 == a2
puts a1 != a2