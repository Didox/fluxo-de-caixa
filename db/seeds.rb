# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Administrador.create(nome: 'Luciane', email: 'luciane.rocha49@gmail.com', senha: 'l@mt0420')
Cliente.create(razao_social: 'Lsl Transportes Ltda 2w Matriz Paulínia', cnpj: '04.548.548/00018-66', inscricao_estadual: '513.066.533.111', inscricao_municipal: '15.317', endereco: 'Estrada Municipal PLN, 345- São Bento Paulínia-SP')
Cliente.create(razao_social: 'Logística Sumaré Ltda', cnpj: '01.734.015/0001-46', inscricao_estadual: '671.083.571.113', inscricao_municipal: '15.675.013', endereco: 'Estrada Municipal Valêncio Calegari, 777-Nova Veneza-Sumaré-Sp/ CEP:13.181-585')