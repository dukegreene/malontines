Malontine.destroy_all
LoveNote.destroy_all
Malone.destroy_all
User.destroy_all

love_notes = LoveNote.create([
  { message: "CUTIE PIE" },
  { message: "YOU ROCK" },
  { message: "TEXT ME" },
  { message: "TRUE LOVE" }, 
  { message: "4EVA YOURS" },
  { message: "TOO SWEET" },
  { message: "MISS YOU" },
  { message: "SOUL MATE" },
  { message: ";-)" },
  { message: "MI AMOR" },
  { message: "I'M YOURS" },
  { message: "DM ME" },
  { message: "CALL ME" },
  { message: "TWEET ME" },
  { message: "SWEET PEA" },
  { message: "THANK YOU" },
  { message: "BE MINE" },
  { message: "ONLY YOU" },
  { message: "YOU & ME" },
  { message: "ASK ME" },
  { message: "DEAR HEART" },
  { message: "COOL FOOL" },
  { message: "STAY" },
  { message: "YUO BET" },
  { message: "R U SHY?" }
])

malones = Malone.create([
  { name: "Big Smile Malone", image_url: "malone-1.jpg", description: "Post Malone posing for a photo with an open-mouth grin" },
  { name: "Buttoned Down Malone", image_url: "malone-2.jpg", description: "Post Malone smiling in a white dress shirt buttoned all the way up" },
  { name: "Pretty Please Malone", image_url: "malone-3.jpg", description: "Post Malone pressing his hands together plaintively during a show" },
  { name: "Moon Man Malone", image_url: "malone-4.jpg", description: "Post Malone holding an MTV Video Music Award in one hand and a cup of beer in the other" },
  { name: "Smoke Break Malone", image_url: "malone-5.jpg", description: "Post Malone grinning holding a microphone and a lit cigarette in the same hand" },
  { name: "Sad Smoke Malone", image_url: "malone-6.jpg", description: "Post Malone looking sad and holding an unlit cigarette in his mouth" },
  { name: "Airbrush Malone", image_url: "malone-7.jpg", description: "Post Malone playing a concert in a colorfully airbrushed white outfit" },
  { name: "Grate 'n' Grill Malone", image_url: "malone-8.jpg", description: "Post Malone smiling through a gap in a metal fence with a shiny gold grill" },
  { name: "Mic Chuckle Malone", image_url: "malone-9.jpg", description: "Post Malone appearing to chuckle while holding a microphone on a stand" },
  { name: "Black and Gold Malone", image_url: "malone-10.jpg", description: "Post Malone holding a gold award statuette while wearing a black and yellow vest" },
  { name: "No Games Malone", image_url: "malone-11.jpg", description: "Post Malone posing with hands folded in front of him, showing a serious expression" },
  { name: "Thousand-Yard Malone", image_url: "malone-12.jpg", description: "Post Malone staring off into space with a somewhat blank look" },
  { name: "Slam Dunk Malone", image_url: "malone-13.jpg", description: "Post Malone portrait photo wearing a tank top style sports jersey" },
  { name: "Peaced Malone", image_url: "malone-14.jpg", description: "Post Malone holding up a peace sign with his right hand" },
  { name: "Reckless Malone", image_url: "malone-15.jpg", description: "Post Malone with cornrows, a shiny earring, and a shirt that says 'RCK LSS'" },
  { name: "Four-Horned Malone", image_url: "malone-16.jpg", description: "Post Malone making rock and roll 'horns' gesture with both hands" },
  { name: "Wild Child Malone", image_url: "malone-17.jpg", description: "Post Malone making rock and roll 'horns' gesture with one hand while hanging his tongue out of his open mouth" },
  { name: "Meditative Malone", image_url: "malone-18.jpg", description: "Post Malone close up, eyes serious, mouth hidden behind his tattooed, ring-laden, interlocked fingers" },
  { name: "Stage Smile Malone", image_url: "malone-19.jpg", description: "Post Malone tthrowing up the rock 'horns' gesture while holding a mic and smiling to an audience out of frame" },
  { name: "Faux Malone", image_url: "malone-20.jpg", description: "Rita Ora convincingly dressed up as Post Malone for Halloween" }
])

users = User.create([
  { username: "stanmalone", password: "iheartp0st!" },
  { username: "go-dj-go", password: "mus1cm4ker" },
  { username: "postpost", password: "tr0llmal0ne" }
])

20.times do
  first_word = Faker::Cannabis.medical_use.capitalize
  second_word = Faker::Science.element.capitalize
  Malontine.create(
    title: "#{first_word} #{second_word}",
    creator: users.sample, malone: malones.sample,
    love_note: love_notes.sample)
end
