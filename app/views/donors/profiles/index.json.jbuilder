# frozen_string_literal: true

json.array! @donors, partial: 'donors/donor', as: :donor
