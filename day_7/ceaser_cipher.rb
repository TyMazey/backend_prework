#CEASER CIPHER METHOD
#Full program allows user to input any string and custom shift amount
# also allows user to decipher a given string if they know the amount it was shifted

#define cipher method with arguments for the string being ciphered and how many times
def cipher(string, amount)
#creating an array of the alphabet all in caps
  alphabet = Array('A'..'Z')
#creating a hash of the alphabet array and a rotated alphabet array
#using the argument amount for how much to rotate the hashed alphabet
  encoder = Hash[alphabet.zip(alphabet.rotate(amount))]
#taking the argument for our string and indexing the values in our encoder
#replacing the argument string with the returned value from the encoder
  string.chars.map { |n|
    encoder.fetch(n, " ")
  }
end

# this method is to promt user to set arguments for the above methods
def ceaser_cipher
#asking the user for input for the 'string' argument
  print "What would you like to cipher? \n> "
#.upcase the input as array for alphabet is in caps to avoid nil values
    input = gets.chomp.upcase
#asking the user for a number for the argument 'amount'
  print "Choose any number? \n> "
#.to_i to set the returned string to an intiger for 'the amount' argument
    rotation = gets.chomp.to_i

#running the cipher method using the variables set for input(string) and rotation(amount)
  puts cipher(input,rotation).join
# reruns program promting user again
  run_program
end
#same as ceaser_cipher, cipher changed to say decipher
# and variable rotaion set to -rotation
def ceaser_decipher
  print "What would you like to Decipher? \n> "
    input = gets.chomp.upcase
  print "How many times was it shifted? \n> "
    rotation = gets.chomp.to_i
  puts cipher(input, -rotation).join
  run_program
end

# method for asking users choice of cipher or decipher; and allows
# us to loop the program start
def run_program
  puts '=' * 50
  puts "Would you like to Cipher or Decipher? \nOr 'Exit' to exit the program."
  puts '=' * 50
  print"> "
  cy_or_dy = gets.chomp.downcase
    if
      #calls method ceaser_cipher when user enters 'cipher'
      cy_or_dy == "cipher"
      ceaser_cipher
    elsif
      #calls method ceaser_decipher when user enters 'decipher'
      cy_or_dy == "decipher"
      ceaser_decipher
    elsif
      # ends the script if user enters exit
      cy_or_dy == "exit"
      puts "=== GOODBYE ==="
    else
      # anything not 'cipher', 'decipher' or 'exit' will let the user know
      # the input was invalid and re promt the user.
      puts "- '#{cy_or_dy}' is not a reconized command. -\n"
      sleep 1
      run_program
    end
end
#initial launch of the program loop.
run_program
