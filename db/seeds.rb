# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Country.connection.execute("ALTER TABLE countries AUTO_INCREMENT = 1")
Country.delete_all
p "Importing countries data to table."
Country.create(:id=>1,:code=>"IN",:name=>"India")

State.delete_all

State.create(:id=>1, :name=>"West Bengal",:country_id=>105)
State.create(:id=>2, :name=>"Uttar Pradesh",:country_id=>105)
State.create(:id=>3, :name=>"Tripura",:country_id=>105)
State.create(:id=>4, :name=>"Tamil Nādu",:country_id=>105)
State.create(:id=>5, :name=>"Sikkim",:country_id=>105)
State.create(:id=>6, :name=>"Rajasthan",:country_id=>105)
State.create(:id=>7, :name=>"Punjab",:country_id=>105)
State.create(:id=>8, :name=>"Pondicherry",:country_id=>105)
State.create(:id=>9, :name=>"Orissa",:country_id=>105)
State.create(:id=>10, :name=>"Nagaland",:country_id=>105)
State.create(:id=>11, :name=>"Mizoram",:country_id=>105)
State.create(:id=>12, :name=>"Meghalaya",:country_id=>105)
State.create(:id=>13, :name=>"Manipur",:country_id=>105)
State.create(:id=>14, :name=>"maharashtra",:country_id=>105)

State.create(:id=>15, :name=>"Madhya Pradesh",:country_id=>105)
State.create(:id=>16, :name=>"Laccadives",:country_id=>105)
State.create(:id=>17, :name=>"Kerala",:country_id=>105)
State.create(:id=>18, :name=>"Karnataka",:country_id=>105)
State.create(:id=>19, :name=>"Jammu and Kashmir",:country_id=>105)
State.create(:id=>20, :name=>"Himachal Pradesh",:country_id=>105)
State.create(:id=>21, :name=>"Haryana",:country_id=>105)
State.create(:id=>22, :name=>"Gujarāt",:country_id=>105)
State.create(:id=>23, :name=>"Daman and Diu",:country_id=>105)
State.create(:id=>24, :name=>"Goa",:country_id=>105)
State.create(:id=>25, :name=>"NCT",:country_id=>105)
State.create(:id=>26, :name=>"Dadra and Nagar Haveli",:country_id=>105)
State.create(:id=>27, :name=>"Chandīgarh",:country_id=>105)
State.create(:id=>28, :name=>"Bihar",:country_id=>105)
State.create(:id=>29, :name=>"Assam",:country_id=>105)
State.create(:id=>30, :name=>"Arunachal Pradesh",:country_id=>105)
State.create(:id=>31, :name=>"Andhra Pradesh",:country_id=>105)
State.create(:id=>32, :name=>"Andaman and Nicobar Islands",:country_id=>105)
State.create(:id=>33, :name=>"Chhattisgarh",:country_id=>105)
State.create(:id=>34, :name=>"Jharkhand",:country_id=>105)
State.create(:id=>36, :name=>"Uttarakhand",:country_id=>105)



City.delete_all
p "...................Importing city in database.................."
City.create(:name=>"Siliguri",:state_id=>1260)
City.create(:name=>"Asansol",:state_id=>1260)
City.create(:name=>"Kharagpur",:state_id=>1260)
City.create(:name=>"Baharampur",:state_id=>1260)
City.create(:name=>"Hugli-Chinsurah",:state_id=>1260)
City.create(:name=>"Raiganj",:state_id=>1260)
City.create(:name=>"Jalpaiguri",:state_id=>1260)
City.create(:name=>"Habra",:state_id=>1260)
City.create(:name=>"Ranaghat",:state_id=>1260)
City.create(:name=>"Darjiling",:state_id=>1260)
City.create(:name=>"Purulia",:state_id=>1260)
City.create(:name=>"Murshidabad",:state_id=>1260)
City.create(:name=>"Adra",:state_id=>1260)
City.create(:name=>"Kolkata",:state_id=>1260)
City.create(:name=>"Lucknow",:state_id=>1261)
City.create(:name=>"Kanpur",:state_id=>1261)
City.create(:name=>"Firozabad",:state_id=>1261)
City.create(:name=>"Agra",:state_id=>1261)
City.create(:name=>"Meerut",:state_id=>1261)
City.create(:name=>"Varanasi",:state_id=>1261)
City.create(:name=>"Allahabad",:state_id=>1261)
City.create(:name=>"Moradabad",:state_id=>1261)
City.create(:name=>"Aligarh",:state_id=>1261)
City.create(:name=>"Saharanpur",:state_id=>1261)
City.create(:name=>"Noida",:state_id=>1261)
City.create(:name=>"Jhansi",:state_id=>1261)
City.create(:name=>"Shahjahanpur",:state_id=>1261)
City.create(:name=>"Modinagar",:state_id=>1261)
City.create(:name=>"Hapur",:state_id=>1261)
City.create(:name=>"Rae Bareli",:state_id=>1261)
City.create(:name=>"Vrindavan",:state_id=>1261)
City.create(:name=>"Mathura",:state_id=>1261)
City.create(:name=>"Rudrapur",:state_id=>1261)
City.create(:name=>"Chennai",:state_id=>1263)
City.create(:name=>"Coimbatore",:state_id=>1263)
City.create(:name=>"Madurai",:state_id=>1263)
City.create(:name=>"Tiruchirappalli",:state_id=>1263)
City.create(:name=>"Tirunelveli",:state_id=>1263)
City.create(:name=>"Ranipet",:state_id=>1263)
City.create(:name=>"Vellore",:state_id=>1263)
City.create(:name=>"Rameshwaram",:state_id=>1263)
City.create(:name=>"Viswanatham",:state_id=>1263)
City.create(:name=>"Jaipur",:state_id=>1265)
City.create(:name=>"Jodhpur",:state_id=>1265)
City.create(:name=>"Bikaner",:state_id=>1265)
City.create(:name=>"Udaipur",:state_id=>1265)
City.create(:name=>"Ajmer",:state_id=>1265)
City.create(:name=>"Bhilwara",:state_id=>1265)
City.create(:name=>"Alwar",:state_id=>1265)
City.create(:name=>"Ratangarh",:state_id=>1265)
City.create(:name=>"Mount Abu",:state_id=>1265)
City.create(:name=>"Ludhiana",:state_id=>1266)
City.create(:name=>"Patiala",:state_id=>1266)
City.create(:name=>"Amritsar",:state_id=>1266)
City.create(:name=>"Jalandhar",:state_id=>1266)
City.create(:name=>"Bathinda",:state_id=>1266)
City.create(:name=>"Pathankot",:state_id=>1266)
City.create(:name=>"Mohali",:state_id=>1266)
City.create(:name=>"Firozpur",:state_id=>1266)
City.create(:name=>"Zirakpur",:state_id=>1266)
City.create(:name=>"Fazilka",:state_id=>1266)
City.create(:name=>"Pondicherry",:state_id=>1267)
City.create(:name=>"Karaikal",:state_id=>1267)
City.create(:name=>"Bhubaneswar",:state_id=>1268)
City.create(:name=>"Cuttack",:state_id=>1268)
City.create(:name=>"Raurkela",:state_id=>1268)
City.create(:name=>"Puri",:state_id=>1268)
City.create(:name=>"Mumbai",:state_id=>1273)
City.create(:name=>"Pune",:state_id=>1273)
City.create(:name=>"Nagpur",:state_id=>1273)
City.create(:name=>"Nashik",:state_id=>1273)
City.create(:name=>"Lonavla",:state_id=>1273)
City.create(:name=>"Shirdi",:state_id=>1273)
City.create(:name=>"Indore",:state_id=>1274)
City.create(:name=>"Bhopal",:state_id=>1274)
City.create(:name=>"Jabalpur",:state_id=>1274)
City.create(:name=>"Gwalior",:state_id=>1274)
City.create(:name=>"Ujjain",:state_id=>1274)
City.create(:name=>"Kochi",:state_id=>1276)
City.create(:name=>"Thiruvananthapuram",:state_id=>1276)
City.create(:name=>"Kozhikode",:state_id=>1276)
City.create(:name=>"Kollam",:state_id=>1276)
City.create(:name=>"Palakkad",:state_id=>1276)
City.create(:name=>"Bengaluru",:state_id=>1277)
City.create(:name=>"Mangaluru",:state_id=>1277)
City.create(:name=>"Kolar",:state_id=>1277)
City.create(:name=>"Udupi",:state_id=>1277)
City.create(:name=>"Vijayapura",:state_id=>1277)
City.create(:name=>"Srinagar",:state_id=>1278)
City.create(:name=>"Jammu",:state_id=>1278)
City.create(:name=>"Rajauri",:state_id=>1278)
City.create(:name=>"Udhampur",:state_id=>1278)
City.create(:name=>"Shimla",:state_id=>1279)
City.create(:name=>"Mandi",:state_id=>1279)
City.create(:name=>"Solan",:state_id=>1279)
City.create(:name=>"Palampur",:state_id=>1279)
City.create(:name=>"Faridabad",:state_id=>1280)
City.create(:name=>"Gurgaon",:state_id=>1280)
City.create(:name=>"Panchkula",:state_id=>1280)
City.create(:name=>"Pinjore",:state_id=>1280)
City.create(:name=>"Ahmedabad",:state_id=>1281)
City.create(:name=>"Surat",:state_id=>1281)
City.create(:name=>"Vadodara",:state_id=>1281)
City.create(:name=>"Godhra",:state_id=>1281)
City.create(:name=>"Panaji",:state_id=>1283)
City.create(:name=>"Goa",:state_id=>1283)
City.create(:name=>"Patna",:state_id=>1287)
City.create(:name=>"Motihari",:state_id=>1287)
City.create(:name=>"Bettiah",:state_id=>1287)
City.create(:name=>"Muzaffarpur",:state_id=>1287)
City.create(:name=>"Raxaul",:state_id=>1287)
City.create(:name=>"Bhagalpur",:state_id=>1287)
City.create(:name=>"Guwahati",:state_id=>1288)
City.create(:name=>"Silchar",:state_id=>1288)
City.create(:name=>"Dibrugarh",:state_id=>1288)
City.create(:name=>"Tezpur",:state_id=>1288)
City.create(:name=>"Naharlagun",:state_id=>1289)
City.create(:name=>"Pasighat",:state_id=>1289)
City.create(:name=>"Visakhapatnam",:state_id=>1290)
City.create(:name=>"Vijayawada",:state_id=>1290)
City.create(:name=>"Tirupati",:state_id=>1290)
City.create(:name=>"Rajampet",:state_id=>1290)
City.create(:name=>"Hyderabad",:state_id=>1290)
City.create(:name=>"Dhanbad",:state_id=>1293)
City.create(:name=>"Ranchi",:state_id=>1293)
City.create(:name=>"Jamshedpur",:state_id=>1293)
City.create(:name=>"Bokaro Steel City",:state_id=>1293)
City.create(:name=>"Hardwar",:state_id=>1294)
City.create(:name=>"Rishikesh",:state_id=>1294)
City.create(:name=>"Nainital",:state_id=>1294)
City.create(:name=>"Dehradun",:state_id=>1294)
City.create(:name=>"Mussoorie",:state_id=>1294)


User.delete_all
#Admin user create 
user = User.create(:email => "admin@example.com", :password => "password", :first_name => "admin")
user.add_role :admin


#Admin user create 
user = User.create(:email => "partner@example.com", :password => "password", :first_name => "Partner")
user.add_role :partner
user.create_portfolio

#normal user
user = User.create(:email => "user@example.com", :password => "password", :first_name => "rsys")
user.add_role :user

Status.delete_all

Status.create(name: "Accepted")
Status.create(name: "Rejected")
Status.create(name: "Pending")
Status.create(name: "Inprogress")
Status.create(name: "Cancelled")



TimeSlot.delete_all

TimeSlot.create(start_time: "10:00", end_time: "11:00")
TimeSlot.create(start_time: "11:00", end_time: "12:00")
TimeSlot.create(start_time: "12:00", end_time: "13:00")
TimeSlot.create(start_time: "13:00", end_time: "14:00")
TimeSlot.create(start_time: "14:00", end_time: "15:00")
TimeSlot.create(start_time: "15:00", end_time: "16:00")


