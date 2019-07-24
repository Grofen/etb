# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password') if Rails.env.development?

# Tyres
# ------
Tyre.create(
    name: "Scorpion Verde",
    width: 295,
    ratio: 45,
    rim: 19,
    model: "113W",
    load: 91,
    speed: "V",
    season: "All Season",
    brand_id: 1,
    price: 2000.0,
    made_in: "Italy",
    year: "2019",
    description: "Scorpion Verde™ All Season is a Pirelli’s Green Performance
Crossover & SUV tyre that takes full advantage of the most modern resources,
structures and tread patterns to guarantee savings, respect to the environment,
comfort and safety on all road surfaces. The lateral stability and the traction
on wet and light snow, ensure all season performances. Scorpion Verde™ All Season
features the M+S marking engraved on the sidewall."
)


# Brands
# -------
Brand.create(
    name: "Pirelli",
    logo: "/uploads/brand/logo/1/pirelli-logo.png",
    description: "Pirelli & C. S.p.A. is a multinational company based in Milan, Italy, listed on the Milan Stock
Exchange since 1922, with a temporary privatization period by the consortium led by the Chinese state-owned enterprise ChemChina."
)