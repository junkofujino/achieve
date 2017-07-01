require 'rails_helper'

describe Contact do
  # 名前、email、内容があれば有効な状態であること
  it "is valid with title" do
    contact = Contact.new(name: '藤野', email: 'kagura.fj@gmail.com', content: 'お問い合わせ')
    expect(contact).to be_valid
  end

  #名前、email、内容がなければ無効であること
  it "is invalid without a name, email, content" do
    contact = Contact.new
    expect(contact).not_to be_valid
  end

  #名前、email、内容がなければ無効であること
  it "is valid with a name, email, content" do
    contact = Contact.new
    contact.valid?
    contact.errors.full_messages.each do |error|
      error
    end
  end
end
