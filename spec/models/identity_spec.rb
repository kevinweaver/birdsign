# == Schema Information
#
# Table name: identities
#
#  id           :integer          not null, primary key
#  user_id      :integer
#  provider     :string
#  accesstoken  :string
#  refreshtoken :string
#  uid          :string
#  name         :string
#  email        :string
#  nickname     :string
#  image        :string
#  phone        :string
#  urls         :string
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

require 'rails_helper'

RSpec.describe Identity, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
