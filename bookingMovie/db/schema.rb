# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20140303235307) do

  create_table "bookings", force: true do |t|
    t.integer  "shows_id"
    t.integer  "users_id"
    t.integer  "seats_booked"
    t.integer  "show_id"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "movies", force: true do |t|
    t.string   "name"
    t.string   "language"
    t.string   "genre"
    t.float    "imbd_rating"
    t.float    "review_rating"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "payments", force: true do |t|
    t.string   "credit_card_num"
    t.integer  "cvv"
    t.datetime "expiry_date"
    t.string   "street_name"
    t.string   "city"
    t.string   "state"
    t.string   "zipcode"
    t.float    "amount_paid"
    t.integer  "item_id"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "reviews", force: true do |t|
    t.float    "rating"
    t.string   "review_des"
    t.integer  "user_id"
    t.integer  "movie_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "screens", force: true do |t|
    t.integer  "theatre_id"
    t.string   "type_of"
    t.integer  "num_of_seats"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "search_theatres", force: true do |t|
    t.integer  "theatre_id"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "shopping_carts", force: true do |t|
    t.float    "price_per_seat"
    t.integer  "num_of_tickets"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "shows", force: true do |t|
    t.datetime "start_time"
    t.datetime "end_time"
    t.integer  "seats_avail"
    t.integer  "screen_id"
    t.integer  "movie_id"
    t.datetime "date_of_show"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "theatre_movies", force: true do |t|
    t.integer  "theatre_id"
    t.integer  "movie_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "theatres", force: true do |t|
    t.string   "name"
    t.string   "city"
    t.string   "state"
    t.string   "zipcode"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "email"
    t.string   "password"
    t.string   "first_name"
    t.string   "last_name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
