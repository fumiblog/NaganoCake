class Order < ApplicationRecord

    belongs_to :customer
    has_many :order_details, dependent: :destroy

    # accepts_nested_attributes_for :order_detail

    # enum payment_method: [:credit_card, :bank]
    enum payment_method: {credit_card: 0, bank: 1}
    # enum status: {入金待ち: 0, 入金確認: 1, 製作中: 2, 発送準備中: 3, 発送済み: 4}
    enum status: {nyukinmachi: 0, nyukinkakunin: 1, seisakuchu: 2, hassoujunnbichu: 3, hassouzumi: 4}
    # def pay
    #     if payment_method == "クレジットカード"
    #         0
    #     else
    #         1
    #     end
    # end
end
