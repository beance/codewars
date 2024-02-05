# frozen_string_literal: true
# noobCode 04: HOT SINGLES...compare two arrays, return the unpaired items !
# https://www.codewars.com/kata/57475353facb0e7431000651/train/ruby


def hot_singles(arr1, arr2)
  ((arr1 + arr2) - (arr1 & arr2)).uniq
end


p hot_singles([100, 45, "ciao"], [100, 2, 3, 45, 5])
#["ciao", 2, 3, 5]