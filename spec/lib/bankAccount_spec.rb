require "spec_helper"
require "bankAccount"   # name of the class we have just created
 
describe BankAccount do
  describe "#find_largest" do
    it "finds the largest number in the array" do
      largest_number = BankAccount.find_largest([1,4,2])
      expect(largest_number).to eq(4)
    end
  end
end