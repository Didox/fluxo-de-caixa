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

ActiveRecord::Schema.define(version: 2019_07_25_170341) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "administradores", force: :cascade do |t|
    t.string "nome"
    t.string "email"
    t.string "senha"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "clientes", force: :cascade do |t|
    t.string "razao_social"
    t.string "cnpj"
    t.string "inscricao_estadual"
    t.string "inscricao_municipal"
    t.text "endereco"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "faturas", force: :cascade do |t|
    t.datetime "emissao"
    t.datetime "vencimento"
    t.bigint "cliente_id"
    t.integer "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["cliente_id"], name: "index_faturas_on_cliente_id"
  end

  create_table "funcionarios", force: :cascade do |t|
    t.string "nome"
    t.string "telefone"
    t.string "email"
    t.datetime "nascimento"
    t.datetime "admissao"
    t.string "rg"
    t.string "cpf"
    t.string "endereco"
    t.string "funcao"
    t.datetime "data_do_aso"
    t.datetime "vencimento_do_aso"
    t.datetime "vencimento_da_integracao"
    t.datetime "vencimento_cnh"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text "nome_dos_filhos"
    t.string "estado_civil"
    t.string "nome_conjuge"
  end

  create_table "itens_faturas", force: :cascade do |t|
    t.bigint "fatura_id"
    t.string "placa"
    t.text "descricao"
    t.datetime "data_inicio"
    t.datetime "data_fim"
    t.float "valor"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["fatura_id"], name: "index_itens_faturas_on_fatura_id"
  end

  create_table "pedido_produtos", force: :cascade do |t|
    t.bigint "pedido_id"
    t.string "nome"
    t.float "valor"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["pedido_id"], name: "index_pedido_produtos_on_pedido_id"
  end

  create_table "pedidos", force: :cascade do |t|
    t.string "placa"
    t.date "data_emissao_fatura"
    t.text "descricao"
    t.string "numero_fatura"
    t.date "data_inicio"
    t.date "data_fim"
    t.date "vencimento"
    t.float "valor"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "status", default: 2
  end

  create_table "produtos", force: :cascade do |t|
    t.string "nome"
    t.float "tamanho"
    t.float "peso"
    t.integer "quantidade"
    t.float "valor"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "saidas", force: :cascade do |t|
    t.string "placa"
    t.date "data_emissao_fatura"
    t.text "descricao"
    t.string "numero_fatura"
    t.date "vencimento"
    t.float "valor"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "status", default: 2
  end

  create_table "tipos_saidas", force: :cascade do |t|
    t.string "tipo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "veiculos", force: :cascade do |t|
    t.string "placa"
    t.bigint "cliente_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["cliente_id"], name: "index_veiculos_on_cliente_id"
  end

  add_foreign_key "faturas", "clientes"
  add_foreign_key "itens_faturas", "faturas"
  add_foreign_key "pedido_produtos", "pedidos"
  add_foreign_key "veiculos", "clientes"
end
