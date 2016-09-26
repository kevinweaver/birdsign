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

require 'rails_helper'

RSpec.describe SignatureRequest, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
