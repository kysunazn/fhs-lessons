require 'rubygems'
require 'highline/import' # You will need to install this with gem install highline
require 'digest/MD5'

def get_pwd(prompt = "Password: ")
  ask(prompt) { |p| p.echo = false }
end

def store_pwd(password)
  begin
    f = open("password", "w")
    f.write(Digest::MD5.hexdigest("PASSWORD -- #{password}"))
    return true
  rescue
    STDERR.puts "There was an error saving the password"
    return false
  ensure
    f.close unless f.nil?
  end
end

def check_pwd(password)
  begin
    f = open("password", "r")
    if Digest::MD5.hexdigest("PASSWORD -- #{password}") == f.read
      return true
    else
      return false
    end
  rescue
    STDERR.puts "There was an error reading the password file"
    return false
  ensure
    f.close unless f.nil?
  end
end
    

# Wrapper functions    
def new_pwd
  password = nil
  while !password
    unless (password = get_pwd) == get_pwd("Confirmation: ")
      password = nil
      puts "Password and confirmation did not match!\n"
    end
  end
  return if password == ""
  store_pwd(password)
end

def login
  if check_pwd(get_pwd)
    puts "LOGGED IN"
  else
    puts "INCORRECT PASSWORD"
  end
end