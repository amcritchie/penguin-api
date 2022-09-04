# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

# Find or create amcritchie user
amcritchie_user = User.find_or_create_by(dapper_username: :amcritchie)
# Update additional fields
amcritchie_user.flow_account = "0x8c48176b31d2421d"
amcritchie_user.save
# Collection: https://nflallday.com/user/amcritchie
# Transactions: https://flowscan.org/account/0x8c48176b31d2421d

# Find or create lionfish user
lionfish_user = User.find_or_create_by(dapper_username: :silent_lionfish7516)
# Update additional fields
lionfish_user.flow_account = "0x7152a76302efe1f0"
lionfish_user.save
# Collection: https://nflallday.com/user/silent_lionfish7516
# Transactions: https://flowscan.org/account/0x7152a76302efe1f0

# Find or create PattyPump929 user
patty_user = User.find_or_create_by(dapper_username: :PattyPump929)
# Update additional fields
patty_user.flow_account = "0xe47c89826f17896b"
patty_user.save
# Collection: https://nflallday.com/user/PattyPump929
# Transactions: https://flowscan.org/account/0xe47c89826f17896b

# Find or create flpx user (Trey Lance)
flpx_user = User.find_or_create_by(dapper_username: :flpx)
# Update additional fields
flpx_user.flow_account = "0x8a2201d25aef092d"
flpx_user.save
# Collection: https://nflallday.com/user/flpx
# Transactions: https://flowscan.org/account/0x8a2201d25aef092d

# Find or create ryanb2018 user (Quinn Meinerz)
ryanb_user = User.find_or_create_by(dapper_username: :ryanb2018)
# Update additional fields
ryanb_user.flow_account = "0x423c5640dd82c09d"
ryanb_user.save
# Collection: https://nflallday.com/user/ryanb2018
# Transactions: https://flowscan.org/account/0x423c5640dd82c09d

# Find or create bkeby user (Javonte Williams)
bkeby_user = User.find_or_create_by(dapper_username: :bkeby)
# Update additional fields
bkeby_user.flow_account = "0x2cf224283f1a23b7"
bkeby_user.save
# Collection: https://nflallday.com/user/ryanb2018
# Transactions: https://flowscan.org/account/0x423c5640dd82c09d

# ========================================
# Darnell Mooney S1 common
# ========================================

# Find Darnell Mooney common low serial for identification
mooney_s1_common_low_serial = Moment.calculate_low_serial(6261,1378167)
# Find or create Darnell Mooney common
mooney_s1_common = Moment.find_or_create_by(nft_low_serial: mooney_s1_common_low_serial)
# Update additional fields
mooney_s1_common.slug = :mooney_s1_common
mooney_s1_common.player_name = "DARNELL MOONEY"
mooney_s1_common.player_number = 11
mooney_s1_common.team_name = "Chicago Bears"
mooney_s1_common.position = :wr
mooney_s1_common.mint_count = 10000
mooney_s1_common.tier = :common
mooney_s1_common.play_type = :reception
mooney_s1_common.series = "Series 1"
mooney_s1_common.set = "Base"
mooney_s1_common.badges = [:debut]
mooney_s1_common.discord_emoji_description = ":one: :one: :bear: :open_hands:"
mooney_s1_common.game_summary = "CHI 29 - 3 NYG"
mooney_s1_common.moment_on = "2022-01-02" #YYYY-MM-DD
mooney_s1_common.week = "Week 17"
mooney_s1_common.contract = "A.e4cf4bdc1751c65d.AllDay"
mooney_s1_common.nfl_all_day_moment_id = "618" # Used for purchase link
mooney_s1_common.nfl_all_day_player_id = "00-0036309" # Used for search
mooney_s1_common.description = "The Bears rolled the dice and went for it on fourth down. Darnell Mooney made sure it paid off. Leaping high to grab this Andy Dalton pass, Mooney got two feet down for the score before falling out of bounds, extending the Chicago lead in the first quarter. Mooney caught seven passes for 69 yards and this score in the Bears' 29-3 win over the Giants on Jan. 2, 2022."
mooney_s1_common.image_url = "https://assets.nflallday.com/editions/base/ecfac63f-acd9-4a78-a8db-a39b8d218648/play_ecfac63f-acd9-4a78-a8db-a39b8d218648_base_capture_Hero_Trans_2880_2880_Transparent.png"
mooney_s1_common.save

# Find or create Darnell Mooney common 6261
mooney_s1_common_6261 = mooney_s1_common.moment_mints.find_or_create_by(serial: 6261)
# Update additional fields
mooney_s1_common_6261.user_id = amcritchie_user.id
mooney_s1_common_6261.nflallday_mint_id = "225b59c7-f1b8-4cdc-b05a-bb34c715e181"
mooney_s1_common_6261.nft_serial = 1378167
mooney_s1_common_6261.save

# Find or create Darnell Mooney common 8573
mooney_s1_common_8573 = mooney_s1_common.moment_mints.find_or_create_by(serial: 8573)
# Update additional fields
mooney_s1_common_8573.user_id = amcritchie_user.id
mooney_s1_common_8573.nflallday_mint_id = "e51e784b-2cd1-4dc4-af25-902f652b023b"
mooney_s1_common_8573.nft_serial = 1380479
mooney_s1_common_8573.latest_flow_transaction_id = '4fe0b7f98296e649131c698b19faa08e5f0d27275b3002aaef35b2d36e4394a4'
mooney_s1_common_8573.save

# ========================================
# Tom Brady S1 common
# ========================================

# Find Brady common low serial for identification
brady_s1_common_low_serial = Moment.calculate_low_serial(3001,577428)
# brady_s1_common_low_serial = Moment.calculate_low_serial(4210,578637)
# Find or create Brady common
brady_s1_common = Moment.find_or_create_by(nft_low_serial: brady_s1_common_low_serial)
# Update additional fields
brady_s1_common.slug = :brady_s1_common
brady_s1_common.player_name = "TOM BRADY"
brady_s1_common.player_number = 12
brady_s1_common.team_name = "Tampa Bay Buccaneers"
brady_s1_common.position = :qb
brady_s1_common.mint_count = 10000
brady_s1_common.tier = :common
brady_s1_common.play_type = :pass
brady_s1_common.series = "Series 1"
brady_s1_common.set = "Base"
brady_s1_common.badges = [:debut]
brady_s1_common.discord_emoji_description = ":one: :two: :pirate_flag: :football:"
brady_s1_common.game_summary = "TB 33 - 27 BUF"
brady_s1_common.moment_on = "2021-12-12" #YYYY-MM-DD
brady_s1_common.week = "Week 14"
brady_s1_common.contract = "A.e4cf4bdc1751c65d.AllDay"
brady_s1_common.nfl_all_day_moment_id = "446" # Used for purchase link
brady_s1_common.nfl_all_day_player_id = "00-0019596" # Used for search
brady_s1_common.description = "Completion No. 7,143 of Tom Brady's career, a newly minted NFL record, had to be a memorable one, right? As the blitz closed in on third down, Brady lofted this pass toward the left sideline where Mike Evans swooped in and made the catch for a first down inside Buffalo's five-yard line. With the completion, Brady passed Drew Brees for No. 1 on the league's all-time list. He finished the game 31-of-46 for 363 yards and two touchdowns in a 33-27 win over Buffalo on Dec. 12, 2021."
brady_s1_common.image_url = "https://assets.nflallday.com/editions/base/98f4d11a-d28c-43f6-b5b1-27c1fe6c86bf/play_98f4d11a-d28c-43f6-b5b1-27c1fe6c86bf_base_capture_Hero_Trans_2880_2880_Transparent.png"
brady_s1_common.save

# Find or create Brady common #3001
brady_s1_common_3001 = brady_s1_common.moment_mints.find_or_create_by(serial: 3001)
# Update additional fields
brady_s1_common_3001.user_id = amcritchie_user.id
brady_s1_common_3001.nflallday_mint_id = "0da32a0b-5581-49b3-a352-bd2f65ab8dd7"
brady_s1_common_3001.nft_serial = 577428
brady_s1_common_3001.latest_flow_transaction_id = '841d316b92d48597fe20638b58804c1b806d20052677d82c9e634fedddffd9f0'
brady_s1_common_3001.save

# ========================================
# Trevor Lawrence S1 rare
# ========================================

# Find Lawrence rare low serial for identification
lawrence_s1_rare_low_serial = Moment.calculate_low_serial(450,1648573)
# Find or create Lawrence common
lawrence_s1_rare = Moment.find_or_create_by(nft_low_serial: lawrence_s1_rare_low_serial)
# Update additional fields
lawrence_s1_rare.slug = :lawrence_s1_rare
lawrence_s1_rare.player_name = "TREVOR LAWRENCE"
lawrence_s1_rare.player_number = 16
lawrence_s1_rare.team_name = "Jacksonville Jaguars"
lawrence_s1_rare.position = :qb
lawrence_s1_rare.mint_count = 899
lawrence_s1_rare.tier = :rare
lawrence_s1_rare.play_type = :pass
lawrence_s1_rare.series = "Series 1"
lawrence_s1_rare.set = "Launch Codes"
lawrence_s1_rare.badges = [:rookie_year, :minted_rookie_year, :debut]
lawrence_s1_rare.discord_emoji_description = ":one: :six: :leopard: :football:"
lawrence_s1_rare.game_summary = "NE 50 - 10 JAX"
lawrence_s1_rare.moment_on = "2022-01-02" #YYYY-MM-DD
lawrence_s1_rare.week = "Week 17"
lawrence_s1_rare.contract = "A.e4cf4bdc1751c65d.AllDay"
lawrence_s1_rare.nfl_all_day_moment_id = "669" # Used for purchase link
lawrence_s1_rare.nfl_all_day_player_id = "00-0036971" # Used for search
lawrence_s1_rare.description = "A rusher was closing in quickly as Trevor Lawrence let this deep ball fly into double coverage down the field. Despite little available daylight, Laquon Treadwell made the grab for a gain of 40 yards into the red zone. Lawrence finished 17-of-27 on the day for 193 yards with one touchdown and three interceptions in Jacksonville's 50-10 loss to New England on Jan. 2, 2022."
lawrence_s1_rare.image_url = "https://assets.nflallday.com/editions/launch_codes/ccbccea0-898b-4fa2-a5a2-bd0d2cedc4fc/play_ccbccea0-898b-4fa2-a5a2-bd0d2cedc4fc_launch_codes_capture_Hero_Trans_2880_2880_Transparent.png"
lawrence_s1_rare.save

# Find or create Lawrence rare #450
lawrence_s1_rare_450 = lawrence_s1_rare.moment_mints.find_or_create_by(serial: 450)
# Update additional fields
lawrence_s1_rare_450.user_id = patty_user.id
lawrence_s1_rare_450.nflallday_mint_id = "6233cb1b-0cdf-452a-bbbc-376a85acc14a"
lawrence_s1_rare_450.nft_serial = 1648573
lawrence_s1_rare_450.latest_flow_transaction_id = '2f305c7260ee1b3e66c2efe43f1784b2ba7ec829ff16865c697ddcf728e08789'
lawrence_s1_rare_450.save

# ========================================
# Patrick Mahomes S1 rare
# ========================================

# Find Mahomes rare low serial for identification
mahomes_s1_rare_low_serial = Moment.calculate_low_serial(350,688081)
# Find or create Mahomes common
mahomes_s1_rare = Moment.find_or_create_by(nft_low_serial: mahomes_s1_rare_low_serial)
# Update additional fields
mahomes_s1_rare.slug = :mahomes_s1_rare
mahomes_s1_rare.player_name = "PATRICK MAHOMES II"
mahomes_s1_rare.player_number = 15
mahomes_s1_rare.team_name = "Kansas City Chiefs"
mahomes_s1_rare.position = :qb
mahomes_s1_rare.mint_count = 899
mahomes_s1_rare.tier = :rare
mahomes_s1_rare.play_type = :pass
mahomes_s1_rare.series = "Series 1"
mahomes_s1_rare.set = "Launch Codes"
mahomes_s1_rare.badges = [:debut]
mahomes_s1_rare.discord_emoji_description = ":one: :five: :bow_and_arrow: :football:"
mahomes_s1_rare.game_summary = "KC 48 - 9 LV"
mahomes_s1_rare.moment_on = "2021-12-12" #YYYY-MM-DD
mahomes_s1_rare.week = "Week 14"
mahomes_s1_rare.contract = "A.e4cf4bdc1751c65d.AllDay"
mahomes_s1_rare.nfl_all_day_moment_id = "485" # Used for purchase link
mahomes_s1_rare.nfl_all_day_player_id = "00-0033873" # Used for search
mahomes_s1_rare.description = "Patrick Mahomes II bought time to allow Tyreek Hill the time he needed to get down the field. Then, settling into space away from the pass rush, Mahomes let this one fly across the field where Hill settled underneath it to pull in the 38-yard grab. Mahomes finished an efficient 20-of-24 for 258 yards and two touchdowns in Kansas City's 48-9 win over Las Vegas on Dec. 12, 2021."
mahomes_s1_rare.image_url = "https://assets.nflallday.com/editions/launch_codes/64d00c8c-3b4b-42b5-8885-ffc34b615ad3/play_64d00c8c-3b4b-42b5-8885-ffc34b615ad3_launch_codes_capture_Hero_Trans_2880_2880_Transparent.png"
mahomes_s1_rare.save

# Find or create Mahomes rare #350
mahomes_s1_rare_350 = mahomes_s1_rare.moment_mints.find_or_create_by(serial: 350)
# Update additional fields
mahomes_s1_rare_350.user_id = patty_user.id
mahomes_s1_rare_350.nflallday_mint_id = "c69c6ce3-551c-4730-ad24-498f8fcbf339"
mahomes_s1_rare_350.nft_serial = 688081
mahomes_s1_rare_350.latest_flow_transaction_id = '119a44fc846999a4c4b5be04c8f4b2c4deb0fadc411fc520860e5e13e9c61f6c'
mahomes_s1_rare_350.save

# ========================================
# Evan McPherson S1 common
# ========================================

# Find McPherson common low serial for identification
mcpherson_s1_common_low_serial = Moment.calculate_low_serial(833,752287)
# Find or create McPherson common
mcpherson_s1_common = Moment.find_or_create_by(nft_low_serial: mcpherson_s1_common_low_serial)
# Update additional fields
mcpherson_s1_common.slug = :mcpherson_s1_common
mcpherson_s1_common.player_name = "EVAN MCPHERSON"
mcpherson_s1_common.player_number = 2
mcpherson_s1_common.team_name = "Cincinnati Bengals"
mcpherson_s1_common.position = :k
mcpherson_s1_common.mint_count = 10000
mcpherson_s1_common.tier = :common
mcpherson_s1_common.play_type = :field_goal
mcpherson_s1_common.series = "Series 1"
mcpherson_s1_common.set = "Base"
mcpherson_s1_common.badges = [:rookie_year, :minted_rookie_year, :debut]
mcpherson_s1_common.discord_emoji_description = ":two: :tiger: :foot:"
mcpherson_s1_common.game_summary = "DEN 10 - 15 CIN"
mcpherson_s1_common.moment_on = "2021-12-19" #YYYY-MM-DD
mcpherson_s1_common.week = "Week 15"
mcpherson_s1_common.contract = "A.e4cf4bdc1751c65d.AllDay"
mcpherson_s1_common.nfl_all_day_moment_id = "498" # Used for purchase link
mcpherson_s1_common.nfl_all_day_player_id = "00-0036854" # Used for search link
mcpherson_s1_common.description = "A quick pickup into Denver territory before the half gave Evan McPherson the opportunity to put the Bengals ahead before the break and he took advantage. He booted it through from 58 yards out and Cincinnati took a 6-3 lead into the locker room. McPherson converted all three of his field goals on the day and the Bengals would go on to win, 15-10, on Dec. 19, 2021."
mcpherson_s1_common.image_url = "https://assets.nflallday.com/editions/base/79bb6a75-c940-47aa-985f-23c567a86f11/play_79bb6a75-c940-47aa-985f-23c567a86f11_base_capture_Hero_Trans_2880_2880_Transparent.png"
mcpherson_s1_common.discord_channel_webhook = ENV["CUSTOM_WEBHOOK_CHANNEL"]
mcpherson_s1_common.save

# Find or create McPherson rare #350
mcpherson_s1_common_833 = mcpherson_s1_common.moment_mints.find_or_create_by(serial: 833)
# Update additional fields
mcpherson_s1_common_833.nflallday_mint_id = "6d915c78-c1f8-4051-a229-f49a68dbb7c7"
mcpherson_s1_common_833.nft_serial = 752287
mcpherson_s1_common_833.latest_flow_transaction_id = '7330b57614192c740b96e8accfebaa93e9eb434c2b6f4bf499198e3d1599e538'
mcpherson_s1_common_833.save

# ========================================
# Justin Herbert S1 rare
# ========================================

# Find Herbert common low serial for identification
herbert_s1_rare_low_serial = Moment.calculate_low_serial(59,340744)
# Find or create Herbert common
herbert_s1_rare = Moment.find_or_create_by(nft_low_serial: herbert_s1_rare_low_serial)
# Update additional fields
herbert_s1_rare.slug = :herbert_s1_rare
herbert_s1_rare.player_name = "JUSTIN HERBERT"
herbert_s1_rare.player_number = 10
herbert_s1_rare.team_name = "Los Angeles Chargers"
herbert_s1_rare.position = :qb
herbert_s1_rare.mint_count = 899
herbert_s1_rare.tier = :rare
herbert_s1_rare.play_type = :pass
herbert_s1_rare.series = "Series 1"
herbert_s1_rare.set = "Launch Codes"
herbert_s1_rare.badges = [:debut]
herbert_s1_rare.discord_emoji_description = ":one: :zero: :zap: :football:"
herbert_s1_rare.game_summary = "CIN 22 - 41 LAC"
herbert_s1_rare.moment_on = "2021-12-05" #YYYY-MM-DD
herbert_s1_rare.week = "Week 13"
herbert_s1_rare.contract = "A.e4cf4bdc1751c65d.AllDay"
herbert_s1_rare.nfl_all_day_moment_id = "415" # Used for purchase link
herbert_s1_rare.nfl_all_day_player_id = "00-0036355" # Used for search link
herbert_s1_rare.description = "Justin Herbert rolled to the right on the play action. He spotted his receiver one-on-one with a defender in the end zone. No problem that he was on the opposite side of the field, right? Herbert loaded up and delivered this deep ball to Jalen Guyton, who wrestled the ball away for the score. Herbert would complete 26 of his 35 passes on the day for 317 yards with three touchdowns and one interception in a 41-22 victory over Cincinnati on Dec. 5, 2021."
herbert_s1_rare.image_url = "https://assets.nflallday.com/editions/launch_codes/0cb3edc0-435a-4008-b48c-261d0cce5ac6/play_0cb3edc0-435a-4008-b48c-261d0cce5ac6_launch_codes_capture_Hero_Trans_2880_2880_Transparent.png"
herbert_s1_rare.save

# Find or create Herbert rare 59
herbert_s1_rare_59 = herbert_s1_rare.moment_mints.find_or_create_by(serial: 59)
# https://flowscan.org/transaction/e87369d7abdbb5e43a0740ad2f80cfca7457bbc9a815905f10816f508c475c81
# Update additional fields
herbert_s1_rare_59.user_id = amcritchie_user.id
herbert_s1_rare_59.nflallday_mint_id = "a6dce49d-eb7f-41ea-bab7-3645e85bc642"
herbert_s1_rare_59.nft_serial = 340744
herbert_s1_rare_59.latest_flow_transaction_id = 'e87369d7abdbb5e43a0740ad2f80cfca7457bbc9a815905f10816f508c475c81'
herbert_s1_rare_59.save

# Find or create Herbert rare 95
herbert_s1_rare_95 = herbert_s1_rare.moment_mints.find_or_create_by(serial: 95)
# https://flowscan.org/transaction/e201da1c08e84af1828f11c41f0c5d366ae6c1e41c0c5c5281fcb7315f180894
# Update additional fields
herbert_s1_rare_95.user_id = amcritchie_user.id
herbert_s1_rare_95.nflallday_mint_id = "81b349af-0712-48c4-b867-02dcc130e722"
herbert_s1_rare_95.nft_serial = 340780
herbert_s1_rare_95.latest_flow_transaction_id = 'e201da1c08e84af1828f11c41f0c5d366ae6c1e41c0c5c5281fcb7315f180894'
herbert_s1_rare_95.save

# ========================================
# Trey Lance S1 legendary
# ========================================

# Find Lance common low serial for identification
lance_s1_legendary_low_serial = Moment.calculate_low_serial(10,1652315)
# Find or create Lance common
lance_s1_legendary = Moment.find_or_create_by(nft_low_serial: lance_s1_legendary_low_serial)
# Update additional fields
lance_s1_legendary.slug = :lance_s1_legendary
lance_s1_legendary.player_name = "TREY LANCE"
lance_s1_legendary.player_number = 5
lance_s1_legendary.team_name = "San Francisco 49ers"
lance_s1_legendary.position = :qb
lance_s1_legendary.mint_count = 49
lance_s1_legendary.tier = :legendary
lance_s1_legendary.play_type = :pass
lance_s1_legendary.series = "Series 1"
lance_s1_legendary.set = "Rookie Revelation"
lance_s1_legendary.badges = [:rookie_year, :minted_rookie_year, :debut]
lance_s1_legendary.discord_emoji_description = ":five: :pick: :football:"
lance_s1_legendary.game_summary = "SF 23 - 7 HOU"
lance_s1_legendary.moment_on = "2022-01-02" #YYYY-MM-DD
lance_s1_legendary.week = "Week 17"
lance_s1_legendary.contract = "A.e4cf4bdc1751c65d.AllDay"
lance_s1_legendary.nfl_all_day_moment_id = "677" # Used for purchase link
lance_s1_legendary.nfl_all_day_player_id = "00-0037012" # Used for search link
lance_s1_legendary.description = "Trey Lance rolled to his right off the play action before looking back left and eyeing Deebo Samuel deep down the field. Samuel pulled it in around the 10-yard line before slipping past a defender and taking it in for the 45-yard score. Lance finished 16-of-23 on the day for 249 yards with two touchdowns and one interception in the 49ers' 23-7 win over Houston on Jan. 2, 2022."
lance_s1_legendary.image_url = "https://assets.nflallday.com/editions/rookie_revelation/101848dc-160f-4369-bdff-02f52d41b83f/play_101848dc-160f-4369-bdff-02f52d41b83f_rookie_revelation_capture_Hero_Trans_2880_2880_Transparent.png"
lance_s1_legendary.save

# Find or create Lance legendary 10
lance_s1_legendary_10 = lance_s1_legendary.moment_mints.find_or_create_by(serial: 10)
# Update additional fields
lance_s1_legendary_10.user_id = flpx_user.id
lance_s1_legendary_10.nflallday_mint_id = "c2fda622-7fca-4e9c-b5fa-2e5260a01e07"
lance_s1_legendary_10.nft_serial = 1652315
lance_s1_legendary_10.latest_flow_transaction_id = '9a32704373d17831972034cb3dcb9ceb0e836714c44e44cc0bfa9d545fc48766'
lance_s1_legendary_10.save

# ========================================
# Micah Parsons S1 rare
# ========================================

# Find Parsons common low serial for identification
parsons_s1_rare_low_serial = Moment.calculate_low_serial(140,686473)
# Find or create Parsons common
parsons_s1_rare = Moment.find_or_create_by(nft_low_serial: parsons_s1_rare_low_serial)
# Update additional fields
parsons_s1_rare.slug = :parsons_s1_rare
parsons_s1_rare.player_name = "MICAH PARSONS"
parsons_s1_rare.player_number = 11
parsons_s1_rare.team_name = "Dallas Cowboys"
parsons_s1_rare.position = :lb
parsons_s1_rare.mint_count = 699
parsons_s1_rare.tier = :rare
parsons_s1_rare.play_type = :sack
parsons_s1_rare.series = "Series 1"
parsons_s1_rare.set = "In the Trenches"
parsons_s1_rare.badges = [:rookie_year, :minted_rookie_year, :debut]
parsons_s1_rare.discord_emoji_description = ":one: :one: :cowboy: :shield:"
parsons_s1_rare.game_summary = "WAS 20 - 27 DAL"
parsons_s1_rare.moment_on = "2021-12-12" #YYYY-MM-DD
parsons_s1_rare.week = "Week 14"
parsons_s1_rare.contract = "A.e4cf4bdc1751c65d.AllDay"
parsons_s1_rare.nfl_all_day_moment_id = "483" # Used for purchase link
parsons_s1_rare.nfl_all_day_player_id = "00-0036932" # Used for search link
parsons_s1_rare.description = "Micah Parsons was all over the field for Dallas against Washington. On this play, he broke through the line, eluded a potential block from the running back, and pulled quarterback Taylor Heinicke to the ground for the sack. Parsons finished with three tackles, two sacks, and a forced fumble in the Cowboys' 27-20 win over Washington on Dec. 12, 2021."
parsons_s1_rare.image_url = "https://assets.nflallday.com/resize/editions/in_the_trenches/ea71ab97-5e26-4369-b609-adfde141d69f/play_ea71ab97-5e26-4369-b609-adfde141d69f_in_the_trenches_capture_Hero_Black_2880_2880_Black.png"
parsons_s1_rare.save

# Find or create Parsons rare 140
parsons_s1_rare_140 = parsons_s1_rare.moment_mints.find_or_create_by(serial: 140)
# Update additional fields
parsons_s1_rare_140.user_id = amcritchie_user.id
parsons_s1_rare_140.nflallday_mint_id = "b2552559-919f-40cc-a937-f0993b313e50"
parsons_s1_rare_140.nft_serial = 686473
parsons_s1_rare_140.latest_flow_transaction_id = 'c4f769b8b94ccc4dbdbe15501854627a7c5bad2cafc9ba842aeed1adf9aa29bd'
parsons_s1_rare_140.save

# ========================================
# Justin Jefferson S1 common
# ========================================

# Find Jefferson common low serial for identification
jefferson_s1_common_low_serial = Moment.calculate_low_serial(1978,843432)
# Find or create Herbert common
jefferson_s1_common = Moment.find_or_create_by(nft_low_serial: jefferson_s1_common_low_serial)
# Update additional fields
jefferson_s1_common.slug = :jefferson_s1_common
jefferson_s1_common.player_name = "JUSTIN JEFFERSON"
jefferson_s1_common.player_number = 18
jefferson_s1_common.team_name = "Minnesota Vikings"
jefferson_s1_common.position = :wr
jefferson_s1_common.mint_count = 10000
jefferson_s1_common.tier = :common
jefferson_s1_common.play_type = :reception
jefferson_s1_common.series = "Series 1"
jefferson_s1_common.set = "Base"
jefferson_s1_common.badges = [:debut]
jefferson_s1_common.discord_emoji_description = ":one: :eight: :crown: :open_hands:"
jefferson_s1_common.game_summary = "CHI 9 - 17 MIN"
jefferson_s1_common.moment_on = "2021-12-20" #YYYY-MM-DD
jefferson_s1_common.week = "Week 15"
jefferson_s1_common.contract = "A.e4cf4bdc1751c65d.AllDay"
jefferson_s1_common.nfl_all_day_moment_id = "507" # Used for purchase link
jefferson_s1_common.nfl_all_day_player_id = "00-0036322" # Used for search link
jefferson_s1_common.description = "Justin Jefferson's fake to the inside and move toward the back corner of the end zone created the space he needed to reel in this pass from quarterback Kirk Cousins for the touchdown. Jefferson caught four passes for 47 yards and this score in a 17-9 Vikings win over Chicago on Dec. 20, 2021."
jefferson_s1_common.image_url = "https://assets.nflallday.com/editions/base/11e5784f-3562-42f4-88ac-92db99c84628/play_11e5784f-3562-42f4-88ac-92db99c84628_base_capture_Hero_Trans_2880_2880_Transparent.png"
jefferson_s1_common.save

# Find or create Jefferson common 1978
jefferson_s1_common_1978 = parsons_s1_rare.moment_mints.find_or_create_by(serial: 1978)
# Update additional fields
jefferson_s1_common_1978.user_id = amcritchie_user.id
jefferson_s1_common_1978.nflallday_mint_id = "544b7804-5187-4b7e-9362-9af2e933c9ee"
jefferson_s1_common_1978.nft_serial = 843432
jefferson_s1_common_1978.latest_flow_transaction_id = '886493248a002f925606e96874a64a312c72ec7be4de45c607205e4c42c697ef'
jefferson_s1_common_1978.save

# ========================================
# Quinn Meinerz S1 rare
# ========================================

# Find Meinerz common low serial for identification
meinerz_s1_rare_low_serial = Moment.calculate_low_serial(54,339341)
# Find or create Herbert common
meinerz_s1_rare = Moment.find_or_create_by(nft_low_serial: meinerz_s1_rare_low_serial)
# Update additional fields
meinerz_s1_rare.slug = :meinerz_s1_rare
meinerz_s1_rare.player_name = "QUINN MEINERZ"
meinerz_s1_rare.player_number = 77
meinerz_s1_rare.team_name = "Denver Broncos"
meinerz_s1_rare.position = :ol
meinerz_s1_rare.mint_count = 699
meinerz_s1_rare.tier = :rare
meinerz_s1_rare.play_type = :block
meinerz_s1_rare.series = "Series 1"
meinerz_s1_rare.set = "In the Trenches"
meinerz_s1_rare.badges = [:rookie_year, :minted_rookie_year, :debut]
meinerz_s1_rare.discord_emoji_description = ":seven: :seven: :racehorse: :brown_square:"
meinerz_s1_rare.game_summary = "KC 22 - 9 DEN"
meinerz_s1_rare.moment_on = "2021-12-05" #YYYY-MM-DD
meinerz_s1_rare.week = "Week 13"
meinerz_s1_rare.contract = "A.e4cf4bdc1751c65d.AllDay"
meinerz_s1_rare.nfl_all_day_moment_id = "413" # Used for purchase link
meinerz_s1_rare.nfl_all_day_player_id = "00-0037001" # Used for search link
meinerz_s1_rare.description = "Quinn Meinerz just kept his legs moving and moved defenders along with him. As the back made his way up the field, there was Meinerz every step of the way to help them push forward. Denver would ultimately fall to Kansas City, 22-9, on Dec. 5, 2021."
meinerz_s1_rare.image_url = "https://assets.nflallday.com/editions/in_the_trenches/1123ea00-20f9-46b7-b3fa-85394c604115/play_1123ea00-20f9-46b7-b3fa-85394c604115_in_the_trenches_capture_Hero_Trans_2880_2880_Transparent.png"
meinerz_s1_rare.save

# Find or create Meinerz rare 54
meinerz_s1_rare_54 = meinerz_s1_rare.moment_mints.find_or_create_by(serial: 54)
# Update additional fields
meinerz_s1_rare_54.user_id = ryanb_user.id
meinerz_s1_rare_54.nflallday_mint_id = "74840977-b380-4616-b3a1-0b1ee383347f"
meinerz_s1_rare_54.nft_serial = 339341
meinerz_s1_rare_54.latest_flow_transaction_id = 'cfd4d766f8e5d42e520b91bc370257ba252dc6d9a8f20e145647f162e7227f1d'
meinerz_s1_rare_54.save

# ========================================
# Javonte Williams S1 common
# ========================================

# Find Jefferson common low serial for identification
williams_s1_common_low_serial = Moment.calculate_low_serial(612,445259)
# Find or create Herbert common
williams_s1_common = Moment.find_or_create_by(nft_low_serial: williams_s1_common_low_serial)
# Update additional fields
williams_s1_common.slug = :williams_s1_common
williams_s1_common.player_name = "JAVONTE WILLIAMS"
williams_s1_common.player_number = 33
williams_s1_common.team_name = "Denver Broncos"
williams_s1_common.position = :rb
williams_s1_common.mint_count = 10000
williams_s1_common.tier = :common
williams_s1_common.play_type = :reception
williams_s1_common.series = "Series 1"
williams_s1_common.set = "Base"
williams_s1_common.badges = [:debut]
williams_s1_common.discord_emoji_description = ":three: :three: :racehorse: :open_hands:"
williams_s1_common.game_summary = "DEN 38 - 10 DET"
williams_s1_common.moment_on = "2021-12-12" #YYYY-MM-DD
williams_s1_common.week = "Week 14"
williams_s1_common.contract = "A.e4cf4bdc1751c65d.AllDay"
williams_s1_common.nfl_all_day_moment_id = "433" # Used for purchase link
williams_s1_common.nfl_all_day_player_id = "00-0036997" # Used for search link
williams_s1_common.description = "Backpedaling. Spinning. Breaking tackles. Javonte Williams did it all while keeping his balance to take this one in for the touchdown against Detroit. Williams carried the ball 15 times for 73 yards and had this catch for 10 yards to go along with two total touchdowns in Denver's 38-10 victory over Detroit on Dec. 12, 2021."
williams_s1_common.image_url = "https://assets.nflallday.com/editions/base/11e5784f-3562-42f4-88ac-92db99c84628/play_11e5784f-3562-42f4-88ac-92db99c84628_base_capture_Hero_Trans_2880_2880_Transparent.png"
williams_s1_common.save

# Find or create Williams common 612
williams_s1_common_612 = parsons_s1_rare.moment_mints.find_or_create_by(serial: 612)
# Update additional fields
williams_s1_common_612.user_id = bkeby_user.id
williams_s1_common_612.nflallday_mint_id = "74840977-b380-4616-b3a1-0b1ee383347f"
williams_s1_common_612.nft_serial = 445259
williams_s1_common_612.latest_flow_transaction_id = 'cfd4d766f8e5d42e520b91bc370257ba252dc6d9a8f20e145647f162e7227f1d'
williams_s1_common_612.save

# To Add
# [x] JUSTIN JEFFERSON [d] common https://nflallday.com/listing/moment/507
# [x] QUINN MEINERZ [r,m,d] rare https://nflallday.com/listing/moment/413
# [x] JAVONTE WILLIAMS [r,m,d] common https://nflallday.com/listing/moment/433
# JOSH ALLEN [d] common https://nflallday.com/listing/moment/425
# NAJEE HARRIS [r,m,d] rare https://nflallday.com/listing/moment/583
# OLAMIDE ZACCHEAUS [first base moment #1 = #489] common https://nflallday.com/listing/moment/353
# JAVONTE WILLIAMS [r,m] legendary https://nflallday.com/listing/moment/991
# COURTLAND SUTTON common https://nflallday.com/listing/moment/882
# COURTLAND SUTTON [d] rare https://nflallday.com/listing/moment/668
# KYLE PITTS [r,m] common https://nflallday.com/listing/moment/812
# KYLE PITTS [r,m,d] legendary https://nflallday.com/listing/moment/551
# KIRK COUSINS [d] rare https://nflallday.com/listing/moment/487
# MIKE WILLIAMS [d] rare https://nflallday.com/listing/moment/416
# MIKE WILLIAMS rare https://nflallday.com/listing/moment/640
# JUSTIN TUCKER [d] rare https://nflallday.com/listing/moment/952
# AUSTIN EKELER [d] rare https://nflallday.com/listing/moment/639
# ODELL BECKHAM JR. [r] ultimate https://nflallday.com/listing/moment/1017
# JONATHAN TAYLOR rare https://nflallday.com/listing/moment/989
# JONATHAN TAYLOR [d] legendary https://nflallday.com/listing/moment/522
# JAYLEN WADDLE [r,m,d] legendary https://nflallday.com/listing/moment/608
