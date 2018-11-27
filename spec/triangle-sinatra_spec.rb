require('rspec')
require('pry')
require('triangle-sinatra')

describe('Triangle#triangle_type') do
  it('will return string not a triangle') do
    object1 = Triangle.new(1,1,2)
    expect(object1.triangle_type()).to(eq('not a triangle'))
  end

  it('will return string equilateral triangle') do
    object1 = Triangle.new(1,1,1)
    expect(object1.triangle_type()).to(eq('equilateral triangle'))
  end

  it('will return string isosceles triangle') do
    object1 = Triangle.new(2,2,3)
    expect(object1.triangle_type()).to(eq('isosceles triangle'))
  end

  it('will return string scalene triangle') do
    object1 = Triangle.new(3,4,5)
    expect(object1.triangle_type()).to(eq('scalene triangle'))
  end

end
