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
      if new_url != @current_url
        @current_url = "#{HOME_URL}/#{url}"
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
  end
  
  a1 = Site.new
  a1.go_to("1")
  a1.go_to("2")
  a2 = Site.new
  a2.go_to("1")
  puts a2
  puts a1 < a2
  puts a1 > a2
  puts a1 == a2
  puts a1 != a2