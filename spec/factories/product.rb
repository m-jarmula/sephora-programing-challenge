FactoryBot.define do
  factory(:product) do
    sequence(:name) { |n| "Lippy Lip Makeup #{n}" }
    sold_out false
    category 'makeup'
    price 1000

    trait(:skincare) do
      sequence(:name) { |n| "Lippy Lip Skincare #{n}" }
      category 'skincare'
    end

    trait(:hair) do
      sequence(:name) { |n| "Lippy Lip Hair #{n}" }
      category 'hair'
    end

    trait(:sold_out) do
      sold_out true
    end
  end
end
