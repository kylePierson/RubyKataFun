#If your morse code is '.... . -.--   .--- ..- -.. .'  notice three consecutive
# represents a single space between words. The above produces ('HEY JUDE') with a predefined 
# MORSE_CODE hash

def decodeMorse(morseCode)
 
 code=""
    
  @phrases = morseCode.split("   ")
  
  if @phrases.respond_to?("each")
  
    @phrases.each do |phrase|
      
      @values = phrase.split(" ")
  
      if @values.respond_to?("each")
		
		    	@values.each do |value|
            
            code=code+MORSE_CODE[value]

		      end          
      end
	  
      code=code+" "
	  
    end
	
    return code.rstrip.lstrip
	
  end
end