#like script with ARVG
def print_two(*args)
  arg1, arg2 = args
  puts "arg1: #{arg1}, arg2: #{arg2}"
end

# ^^^*args pointless
def print_two_again(arg1, arg2)
  puts "arg1: #{arg1}, arg2: #{arg2}"
end

#one argument
def print_one(arg1)
  puts "arg1: #{arg1}"
end

#this takes no argument
def print_none()
  puts "nothin'"
end

print_two("zed","shaw")
print_two_again("zed","shaw")
print_one("first")
print_none()
