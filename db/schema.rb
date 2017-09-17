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

ActiveRecord::Schema.define(version: 20170917194520) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "andamento_solicitacao_enviadas", force: :cascade do |t|
    t.date "data"
    t.string "descricao"
    t.text "observacao"
    t.integer "funcionario_id"
    t.integer "solicitacao_enviada_id"
    t.integer "criado_por"
    t.integer "atualizado_por"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "andamento_solicitacao_recebidas", force: :cascade do |t|
    t.date "data"
    t.string "descricao"
    t.text "observacao"
    t.integer "funcionario_id"
    t.integer "solicitacao_recebida_id"
    t.integer "criado_por"
    t.integer "atualizado_por"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "categoria", force: :cascade do |t|
    t.string "descricao"
    t.integer "criado_por"
    t.integer "atualizado_por"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "estado_civils", force: :cascade do |t|
    t.string "descricao"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "estados", force: :cascade do |t|
    t.string "nome"
    t.string "sigla"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "funcionarios", force: :cascade do |t|
    t.string "nome"
    t.date "data_aniversario"
    t.integer "criado_por"
    t.integer "atualizado_por"
    t.string "sexo"
    t.string "endereco"
    t.string "email"
    t.string "bairro"
    t.integer "municipio_id"
    t.date "data_admissao"
    t.date "data_desligamento"
    t.string "cep"
    t.string "telefone"
    t.string "celular"
    t.string "cpf"
    t.string "matricula"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "municipios", force: :cascade do |t|
    t.string "nome"
    t.integer "estado_id"
    t.integer "criado_por"
    t.integer "atualizado_por"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "processos", force: :cascade do |t|
    t.date "data"
    t.string "numero"
    t.string "assunto"
    t.text "descricao"
    t.string "situacao"
    t.string "local"
    t.string "contato"
    t.integer "criado_por"
    t.integer "atualizado_por"
    t.string "tipo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "secaos", force: :cascade do |t|
    t.string "numero"
    t.bigint "zona_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["zona_id"], name: "index_secaos_on_zona_id"
  end

  create_table "solicitacao_enviadas", force: :cascade do |t|
    t.string "local"
    t.string "descricao"
    t.date "data_abertura"
    t.date "data_encerramento"
    t.text "observacao"
    t.string "status"
    t.integer "criado_por"
    t.integer "atualizado_por"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "solicitacao_recebidas", force: :cascade do |t|
    t.integer "solicitante_id"
    t.string "descricao"
    t.date "data_abertura"
    t.date "data_encerramento"
    t.text "observacao"
    t.string "status"
    t.integer "criado_por"
    t.integer "atualizado_por"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "solicitantes", force: :cascade do |t|
    t.string "tipo_tratamento"
    t.string "nome"
    t.string "sexo"
    t.date "data_aniversario"
    t.string "endereco"
    t.string "bairro"
    t.string "email"
    t.string "profissao"
    t.string "organizacao"
    t.string "titulo"
    t.text "observacao"
    t.integer "categoria_id"
    t.integer "municipio_id"
    t.integer "criado_por"
    t.integer "atualizado_por"
    t.string "cep"
    t.string "telefone_fixo"
    t.string "celular"
    t.string "comercial"
    t.string "estado_civil_id"
    t.string "cpf"
    t.string "rg"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "zona_id"
    t.integer "secao_id"
    t.string "estado"
    t.integer "estado_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet "current_sign_in_ip"
    t.inet "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "zonas", force: :cascade do |t|
    t.string "numero"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "secaos", "zonas"
end
