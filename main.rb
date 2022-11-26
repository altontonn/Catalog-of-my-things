require './app'

def main
  app = APP.new
  app.load
  loop do
    app.menu
    choice = gets.chomp.to_i
    app.options(choice)
    if choice == 10
      puts "Thank you for using the app please visit us soon!! \n \n \n"
      break
    end
  end
end

main
