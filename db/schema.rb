# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.1].define(version: 2024_07_12_040916) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "character_classes", force: :cascade do |t|
    t.string "name"
    t.integer "charisma"
    t.integer "intelligence"
    t.integer "stealth"
    t.integer "dexterity"
    t.integer "constitution"
    t.integer "speed"
    t.integer "strength"
    t.integer "mana"
    t.integer "salary"
    t.string "effect"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "character_races", force: :cascade do |t|
    t.string "name"
    t.integer "charisma"
    t.integer "intelligence"
    t.integer "stealth"
    t.integer "dexterity"
    t.integer "constitution"
    t.integer "speed"
    t.integer "strength"
    t.integer "mana"
    t.integer "min_size"
    t.integer "max_size"
    t.integer "min_weight"
    t.integer "max_weight"
    t.string "effect"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "games", force: :cascade do |t|
    t.string "name"
    t.datetime "start_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "players", force: :cascade do |t|
    t.string "name"
    t.integer "size"
    t.integer "weight"
    t.integer "money"
    t.bigint "game_id", null: false
    t.integer "life_point"
    t.bigint "character_race_id"
    t.bigint "character_class_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "fame", default: 0
    t.integer "charisma_learned", default: 0
    t.integer "intelligence_learned", default: 0
    t.integer "stealth_learned", default: 0
    t.integer "dexterity_learned", default: 0
    t.integer "constitution_learned", default: 0
    t.integer "speed_learned", default: 0
    t.integer "strength_learned", default: 0
    t.integer "mana_learned", default: 0
    t.integer "charisma_bonus", default: 0
    t.integer "intelligence_bonus", default: 0
    t.integer "stealth_bonus", default: 0
    t.integer "dexterity_bonus", default: 0
    t.integer "constitution_bonus", default: 0
    t.integer "speed_bonus", default: 0
    t.integer "strength_bonus", default: 0
    t.integer "mana_bonus", default: 0
    t.index ["character_class_id"], name: "index_players_on_character_class_id"
    t.index ["character_race_id"], name: "index_players_on_character_race_id"
    t.index ["game_id"], name: "index_players_on_game_id"
  end

  add_foreign_key "players", "character_classes"
  add_foreign_key "players", "character_races"
  add_foreign_key "players", "games"
end
