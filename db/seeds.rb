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
mcpherson_s1_common_833.save

puts "Create listing ===="
Listing.create(processing_status: :new)
