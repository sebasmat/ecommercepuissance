# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_05_09_143721) do

  create_table "camaras", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "tipo"
    t.string "tamanoPantalla"
    t.string "resolucion"
    t.bigint "producto_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["producto_id"], name: "index_camaras_on_producto_id"
  end

  create_table "celulars", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "pulgadas"
    t.bigint "computo_id", null: false
    t.bigint "producto_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["computo_id"], name: "index_celulars_on_computo_id"
    t.index ["producto_id"], name: "index_celulars_on_producto_id"
  end

  create_table "computadors", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "tipo"
    t.bigint "computo_id", null: false
    t.bigint "producto_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["computo_id"], name: "index_computadors_on_computo_id"
    t.index ["producto_id"], name: "index_computadors_on_producto_id"
  end

  create_table "computos", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "tipoRed"
    t.string "RAM"
    t.string "procesador"
    t.string "almacenamiento"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "consolas", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "marca"
    t.string "paquete"
    t.bigint "producto_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["producto_id"], name: "index_consolas_on_producto_id"
  end

  create_table "pedidos", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.datetime "fecha"
    t.bigint "producto_id", null: false
    t.bigint "Usuario_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["Usuario_id"], name: "index_pedidos_on_Usuario_id"
    t.index ["producto_id"], name: "index_pedidos_on_producto_id"
  end

  create_table "productos", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "marca"
    t.string "linea"
    t.float "precio"
    t.string "imagen"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "tablets", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "pulgadas"
    t.bigint "computo_id", null: false
    t.bigint "producto_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["computo_id"], name: "index_tablets_on_computo_id"
    t.index ["producto_id"], name: "index_tablets_on_producto_id"
  end

  create_table "usuarios", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "nombres"
    t.string "apellidos"
    t.string "correoElectronico"
    t.string "dirección"
    t.string "telefonoFijo"
    t.string "contrasena"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "camaras", "productos"
  add_foreign_key "celulars", "computos"
  add_foreign_key "celulars", "productos"
  add_foreign_key "computadors", "computos"
  add_foreign_key "computadors", "productos"
  add_foreign_key "consolas", "productos"
  add_foreign_key "pedidos", "Usuarios"
  add_foreign_key "pedidos", "productos"
  add_foreign_key "tablets", "computos"
  add_foreign_key "tablets", "productos"
end
