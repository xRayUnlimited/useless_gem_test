RSpec.describe UselessGemTest do
  subject { UselessGemTest }
  let(:str) { 'My String' }
  it "has a version number" do
    expect(UselessGemTest::VERSION).not_to be nil
  end

  it "does something useful" do
    expect(false).to eq(true)
  end

  it 'reverses a string' do
    actual = subject.reversify(str)
    expected = 'gnirtS yM'
    expect(actual).to eq(expected)
  end

  it 'adds spaces'
    actual =subject.spacity(str, 1)
    expected = 'M y    S t r i n g'
    expect(actual).to eq(expected)
end
