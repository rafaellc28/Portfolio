# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Entity.create(id: 1, name: "educations")
Entity.create(id: 2, name: "academic_periods")
Entity.create(id: 3, name: "companies")
Entity.create(id: 4, name: "publications")
Entity.create(id: 5, name: "certificates")
Entity.create(id: 6, name: "jobs")

Education.create(id: 1, title: "Mestre em Ciência da Computação", institution: "Universidade Estadual de Campinas", description: "", started_at: "2010-03-01", done_at: "2013-03-31")
Education.create(id: 2, title: "Bacharel em Ciência da Computação", institution: "Universidade Estadual de Campinas", description: "", started_at: "2006-03-01", done_at: "2009-12-20")

Tag.create(id: 1, tag: "Computer Science")
Tag.create(id: 2, tag: "Game Theory")
Tag.create(id: 3, tag: "Routing Games")
Tag.create(id: 4, tag: "Visual Computing")

TagsEntity.create(tag_id: 1, entity_id: 1)
TagsEntity.create(tag_id: 2, entity_id: 1)
TagsEntity.create(tag_id: 3, entity_id: 1)
TagsEntity.create(tag_id: 4, entity_id: 1)
