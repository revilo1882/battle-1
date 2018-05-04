class Bird


  @feathers = 2
  def self.fly
    puts "it flies"
  end

  def self.feathers
    @feathers
  end


end

Bird.fly
p Bird.feathers
