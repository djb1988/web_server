


get '/' do
  File.open("hello.txt").each do |line|
    puts line
  end
end