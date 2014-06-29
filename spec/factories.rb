FactoryGirl.define do
    factory :user do
        name                    "Peter Szweryn"
        email                   "peter.szweryn@gmail.com"
        password                "foobar"
        password_confirmation   "foobar"
    end
end
