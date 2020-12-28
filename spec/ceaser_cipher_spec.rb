#spec/ceaser_cipher_spec.rb
require './ceaser_cipher.rb'
describe '#is_upper?' do
  it "returns true for capital letter" do 
    expect(is_upper?('C')).to eql(true)
  end
  it "returns false for lowercase letter" do
    expect(is_upper?('h')).to eql(false)
  end
end

describe "#get_shifted_index" do
  it "returns shifted index by shiftnum variable" do
    expect(get_shifted_index(3, 13)).to eql(16)
  end
  it "returns shifted index by shiftnum variable over 25" do
    expect(get_shifted_index(22, 13)).to eql(9)
  end
end

describe "#caeser_cipher" do
  it "Converts string to ceaser cipher" do
    expect(caeser_cipher("what a string!", 13)).to eql("jung n fgevat!")
  end
  it "Converts string to ceaser cipher with capitals" do
    expect(caeser_cipher("tHis iS SOME COoL dECODing!", 13)).to eql("gUvf vF FBZR PBbY qRPBQvat!")
  end
end