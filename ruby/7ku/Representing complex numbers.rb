# frozen_string_literal: true
# Representing complex numbers

# https://www.codewars.com/kata/59e5fe367905df7f5c000072/train/ruby


class Complex
  attr_reader :real, :imaginary

  def initialize(real,imaginary)
    @real = real
    @imaginary = imaginary
  end

  def +(other)
    Complex.new(real + other.real, imaginary + other.imaginary)
  end

  def *(other)
    Complex.new(real * other.real - imaginary * other.imaginary, real * other.imaginary + imaginary * other.real)
  end
end