require 'rails_helper'


class Cart
end

RSpec.describe Cart, type: :model do
  # it "do sth"
  # or
  # pending "add some examples to (or delete) #{__FILE__}"
  describe "購物車基本功能" do
    it "可以把商品丟到到購物車裡，然後購物車裡就有東西了"
    it "如果加了相同種類的商品到購物車裡，購買項目（CartItem）並不會增加，但商品的數量會改變"
    it "商品可以放到購物車裡，也可以再拿出來"
    it "每個 Cart Item 都可以計算它自己的金額（小計）"
    it "可以計算整台購物車的總消費金額"
    it "特別活動可能可搭配折扣（例如聖誕節的時候全面打 9 折，或是滿額滿千送百）"
  end

  describe "購物車進階功能" do
    it "可以將購物車內容轉換成 Hash，存到 Session 裡"
    it "可以把 Session 的內容（Hash 格式），還原成購物車的內容"
  end
end


