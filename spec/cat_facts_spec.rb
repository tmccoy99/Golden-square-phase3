require "cat_facts"

describe CatFacts do
  it "returns fact when #provide called" do
    fake_requester = double :requester
    expect(fake_requester).to receive(:get).with(URI("https://catfact.ninja/fact")
    ).and_return('{"fact":"Abraham Lincoln loved cats. He had four of them while he lived in the White House.","length":82}')
    cat_facts = CatFacts.new(fake_requester)
    expect(cat_facts.provide).to eq(
    "Cat fact: Abraham Lincoln loved cats. He had four of them while he lived in the White House.")
  end
end