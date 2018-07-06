#This is a WIP.  It needs a lot of work.  I have watched
#a lot of Ruby videos and read a lot of papers to get ideas.
#this is the result.

class UrlParser
   
    attr_accessor :scheme, :domain, :path, :fragment_id
    
    def initialize
        @url = url
        @scheme = @url.split('/')[0].split(':')[0]
        
        @domain = @url.split('/')[2].split(':')[2] 
        if @url.split('/')[2].split.include?':'
            @port = @url.split('/')[2].split(':')[1]
        else
            @port = nil
        end
        
        @path = @url.split('/')[3].split('?')[0]
        @query_string = {}
    end    
 
    def query_string
         @query_string = @url.split('/')[3].split('?')[1].split('#')[0].split('&')
           @query_string.each do |item|
             parameter = item.split('=')
         @query_string = parameter
               parameter[0] == parameter[1]
    end

    def path 
        if @path == "" 
            @path = nil
    end          
        
    def port
        if port.include "" && nil && scheme == "https"
                    @port = 443.to_s
            elsif port.include "" || nil && scheme == "https"
                    @port = 80.to_s
        end
    end
end
     
    def fragment_id
        @fragment_id = @url.split('/')[3].split('?')[1].split('#')[1]
    end