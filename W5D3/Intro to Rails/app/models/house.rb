class House < AppleicationRecord
    validates :address, preesence: true

    has_many :residents,
    primary_key: :id,
    foreign_key: :house_id,
    class_name: :Person
end