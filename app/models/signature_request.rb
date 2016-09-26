# == Schema Information
#
# Table name: signature_requests
#
#  id                  :integer          not null, primary key
#  status              :integer
#  idol_amount         :decimal(, )
#  charity_amount      :decimal(, )
#  birdsign_amount     :decimal(, )
#  total               :decimal(, )
#  charity             :integer
#  show_charity_amount :boolean
#  created_at          :datetime         not null
#  updated_at          :datetime         not null
#

class SignatureRequest < ApplicationRecord
  enum status: [:requested, :responded, :accepted, :complete]
  belongs_to :fan, foreign_key: :fan_id, class_name: "User"
  belongs_to :idol, foreign_key: :idol_id, class_name: "User"
end
