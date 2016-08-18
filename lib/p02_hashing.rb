class Fixnum
  # Fixnum#hash already implemented for you
end

class Array
  def hash
  new_array = self.map do |el|
      el * 100
    end

  new_array.join('').to_i

  end
end

class String
  def hash
    hash_num = self.split("").map{|el| el.ord }.join("")
    hash_num.to_i
  end
end

class Hash
  # This returns 0 because rspec will break if it returns nil
  # Make sure to implement an actual Hash#hash method
  def hash
    new_hash = self.map do |k,v|
      k.hash
    end
    new_hash.inject(0){|sum, el| sum += el }
  end
end
