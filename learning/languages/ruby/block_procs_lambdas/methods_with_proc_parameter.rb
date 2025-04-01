ef talk_about(name, &myproc)
  p "hello"
  myproc.call(name)
end

indo = Proc.new do |name|
  p "nama saya #{name}"
end 

english = Proc.new do |name|
  p "my name is #{name}"
end 

talk_about("ridho", &indo)
talk_about("darries", &english)
  