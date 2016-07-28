# code here!
require 'pry'

class School
  attr_accessor :roster
  attr_reader :name



  def initialize(name)
    @name = name
    @roster = {}

  end


  def add_student(name, grade)

      if @roster[grade].nil?
    #is .nil? actually a method or is the '?' a method?
    #how exactly does this question mark thing work?
    #binding.pry
        @roster[grade] = []
        @roster[grade] << name
      else
        @roster[grade] << name 
      end

  end

  def grade(grade)
    @roster[grade]
  end

  def sort
    @roster.each do |grade, name_array|
      @roster[grade] = name_array.sort
    end
    @roster
  end

end
