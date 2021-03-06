# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Bed.delete_all
Booking.delete_all

# Seed the beds for all rooms in the hostel

	$i = 1
	$beds_in_A = 20

	while $i <= $beds_in_A  do
		Bed.create(:room => "A",
		:number => $i,
		:bed_label => "A " + $i.to_s,
		)
		$i +=1
	end

	#...

	$i = 1
	$beds_in_B = 20

	while $i <= $beds_in_B  do
		Bed.create(:room => "B",
		:number => $i,
		:bed_label => "B " + $i.to_s,
		)
		$i +=1
	end

	#...

	$i = 1
	$beds_in_C = 16

	while $i <= $beds_in_C  do
		Bed.create(:room => "C",
		:number => $i,
		:bed_label => "C " + $i.to_s,
		)
		$i +=1
	end

	#...

	$i = 1
	$beds_in_D = 10

	while $i <= $beds_in_D  do
		Bed.create(:room => "D",
		:number => $i,
		:bed_label => "D " + $i.to_s,
		)
		$i +=1
	end

	#...

	$i = 1
	$beds_in_E = 6

	while $i <= $beds_in_E  do
		Bed.create(:room => "E",
		:number => $i,
		:bed_label => "E " + $i.to_s,
		)
		$i +=1
	end

	#...

	$i = 1
	$beds_in_F = 16

	while $i <= $beds_in_F  do
		Bed.create(:room => "F",
		:number => $i,
		:bed_label => "F " + $i.to_s,
		)
		$i +=1
	end

	#...

	$i = 1
	$beds_in_G = 16

	while $i <= $beds_in_G  do
		Bed.create(:room => "G",
		:number => $i,
		:bed_label => "G " + $i.to_s,
		)
		$i +=1
	end

	#...

	$i = 1
	$beds_in_H = 18

	while $i <= $beds_in_H  do
		Bed.create(:room => "H",
		:number => $i,
		:bed_label => "H " + $i.to_s,
		)
		$i +=1
	end

	#...

	$i = 1
	$beds_in_L1 = 8

	while $i <= $beds_in_L1  do
		Bed.create(:room => "L1",
		:number => $i,
		:bed_label => "L1 " + $i.to_s,
		)
		$i +=1
	end

	#...

	$i = 1
	$beds_in_L2 = 4

	while $i <= $beds_in_L2  do
		Bed.create(:room => "L2",
		:number => $i,
		:bed_label => "L2 " + $i.to_s,
		)
		$i +=1
	end

	#...

	$i = 1
	$beds_in_M1 = 6

	while $i <= $beds_in_M1  do
		Bed.create(:room => "M1",
		:number => $i,
		:bed_label => "M1 " + $i.to_s,
		)
		$i +=1
	end

	#...

	$i = 1
	$beds_in_M2 = 6

	while $i <= $beds_in_M2  do
		Bed.create(:room => "M2",
		:number => $i,
		:bed_label => "M2 " + $i.to_s,
		)
		$i +=1
	end

	#...

	$i = 1
	$beds_in_R1 = 6

	while $i <= $beds_in_R1  do
		Bed.create(:room => "R1",
		:number => $i,
		:bed_label => "R1 " + $i.to_s,
		)
		$i +=1
	end

	#...

	$i = 1
	$beds_in_R2 = 4

	while $i <= $beds_in_R2  do
		Bed.create(:room => "R2",
		:number => $i,
		:bed_label => "R2 " + $i.to_s,
		)
		$i +=1
	end

	#...

	$i = 1
	$beds_in_Green = 1

	while $i <= $beds_in_Green  do
		Bed.create(:room => "Green",
		:number => $i,
		:bed_label => "Green " + $i.to_s,
		)
		$i +=1
	end

	#...

	$i = 1
	$beds_in_Black = 1

	while $i <= $beds_in_Black  do
		Bed.create(:room => "Black",
		:number => $i,
		:bed_label => "Black " + $i.to_s,
		)
		$i +=1
	end


#... Create Guests ... ... ... ...

require 'random_data'

Guest.delete_all

@countries = ["Afghanistan", "Aland Islands", "Albania", "Algeria", "American Samoa", "Andorra", "Angola",
        "Anguilla", "Antarctica", "Antigua And Barbuda", "Argentina", "Armenia", "Aruba", "Australia", "Austria",
        "Azerbaijan", "Bahamas", "Bahrain", "Bangladesh", "Barbados", "Belarus", "Belgium", "Belize", "Benin",
        "Bermuda", "Bhutan", "Bolivia", "Bosnia and Herzegowina", "Botswana", "Bouvet Island", "Brazil",
        "British Indian Ocean Territory", "Brunei Darussalam", "Bulgaria", "Burkina Faso", "Burundi", "Cambodia",
        "Cameroon", "Canada", "Cape Verde", "Cayman Islands", "Central African Republic", "Chad", "Chile", "China",
        "Christmas Island", "Cocos (Keeling) Islands", "Colombia", "Comoros", "Congo",
        "Congo, the Democratic Republic of the", "Cook Islands", "Costa Rica", "Cote d'Ivoire", "Croatia", "Cuba",
        "Cyprus", "Czech Republic", "Denmark", "Djibouti", "Dominica", "Dominican Republic", "Ecuador", "Egypt",
        "El Salvador", "Equatorial Guinea", "Eritrea", "Estonia", "Ethiopia", "Falkland Islands (Malvinas)",
        "Faroe Islands", "Fiji", "Finland", "France", "French Guiana", "French Polynesia",
        "French Southern Territories", "Gabon", "Gambia", "Georgia", "Germany", "Ghana", "Gibraltar", "Greece", "Greenland",
        "Grenada", "Guadeloupe", "Guam", "Guatemala", "Guernsey", "Guinea",
        "Guinea-Bissau", "Guyana", "Haiti", "Heard and McDonald Islands", "Holy See (Vatican City State)",
        "Honduras", "Hong Kong", "Hungary", "Iceland", "India", "Indonesia", "Iran, Islamic Republic of", "Iraq",
        "Ireland", "Isle of Man", "Israel", "Italy", "Jamaica", "Japan", "Jersey", "Jordan", "Kazakhstan", "Kenya",
        "Kiribati", "Korea, Democratic People's Republic of", "Korea, Republic of", "Kuwait", "Kyrgyzstan",
        "Lao People's Democratic Republic", "Latvia", "Lebanon", "Lesotho", "Liberia", "Libyan Arab Jamahiriya",
        "Liechtenstein", "Lithuania", "Luxembourg", "Macao", "Macedonia, The Former Yugoslav Republic Of",
        "Madagascar", "Malawi", "Malaysia", "Maldives", "Mali", "Malta", "Marshall Islands", "Martinique",
        "Mauritania", "Mauritius", "Mayotte", "Mexico", "Micronesia, Federated States of", "Moldova, Republic of",
        "Monaco", "Mongolia", "Montenegro", "Montserrat", "Morocco", "Mozambique", "Myanmar", "Namibia", "Nauru",
        "Nepal", "Netherlands", "Netherlands Antilles", "New Caledonia", "New Zealand", "Nicaragua", "Niger",
        "Nigeria", "Niue", "Norfolk Island", "Northern Mariana Islands", "Norway", "Oman", "Pakistan", "Palau",
        "Palestinian Territory, Occupied", "Panama", "Papua New Guinea", "Paraguay", "Peru", "Philippines",
        "Pitcairn", "Poland", "Portugal", "Puerto Rico", "Qatar", "Reunion", "Romania", "Russian Federation",
        "Rwanda", "Saint Barthelemy", "Saint Helena", "Saint Kitts and Nevis", "Saint Lucia",
        "Saint Pierre and Miquelon", "Saint Vincent and the Grenadines", "Samoa", "San Marino",
        "Sao Tome and Principe", "Saudi Arabia", "Senegal", "Serbia", "Seychelles", "Sierra Leone", "Singapore",
        "Slovakia", "Slovenia", "Solomon Islands", "Somalia", "South Africa",
        "South Georgia and the South Sandwich Islands", "Spain", "Sri Lanka", "Sudan", "Suriname",
        "Svalbard and Jan Mayen", "Swaziland", "Sweden", "Switzerland", "Syrian Arab Republic",
        "Taiwan, Province of China", "Tajikistan", "Tanzania, United Republic of", "Thailand", "Timor-Leste",
        "Togo", "Tokelau", "Tonga", "Trinidad and Tobago", "Tunisia", "Turkey", "Turkmenistan",
        "Turks and Caicos Islands", "Tuvalu", "Uganda", "Ukraine", "United Arab Emirates", "United Kingdom",
        "United States", "United States Minor Outlying Islands", "Uruguay", "Uzbekistan", "Vanuatu", "Venezuela",
        "Viet Nam", "Virgin Islands, British", "Virgin Islands, U.S.", "Wallis and Futuna", "Western Sahara",
        "Yemen", "Zambia", "Zimbabwe"]

	$i = 1
	$gests_ammount = 50
	while $i <= $gests_ammount do
		name = Random.firstname + " " + Random.lastname
		Guest.create(:name => name,
		:locker => rand(1..15),
		:price => rand(20..100),
		:deposit => [10,20].sample,
		:nationality => @countries.sample,
		:payment_method => ["Cash", "Credit Card"].sample,
		)
		$i +=1
	end

 Booking.delete_all
	
	#... Create Bookings ... ... ... ... 
	$i = 1
	$bookings_ammount = 100
	while $i <= $bookings_ammount do
		Booking.create(:check_in_date => rand(1.days).ago,
		:check_out_date => rand(5.days).from_now,
		:guest_id => Guest.pluck(:id).sample,
		:bed_id => Bed.pluck(:id).sample,
		:shift => ["AM","PM", "NIGHT"].sample,
		:status => ["Booking", "Check In"].sample
		)
		$i +=1
	end
	
