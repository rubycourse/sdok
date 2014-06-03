def prep
  ActiveRecord::Base.connection.execute("TRUNCATE TABLE doctors, patients, appointments")
end

def preconditions
  @zhivago = Doctor.create(name: "Zhivago")
  @bob = Patient.create(name: "Bob")
end

def sdok_one
  @zhivago.appointments.create(patient: @bob, room_number: 666, symptom: "Viennese Mumbling Measles")
end

def sdok_two
  params = {:specialties=>[{:name=>"Prussian Flu"}, {:name=>"Viennese Mumps"}]}
  @zhivago.specialties.create(params[:specialties])
end

prep; preconditions; sdok_one; sdok_two

10.times{ Appointment.create( patient: Patient.create(name: Faker::Name.name), doctor: Doctor.find_by_name("Zhivago")) }

100.times do
  Friend.create name: Faker::Name.name, sex: 'F', country: Faker::Address.country, age: ((20..60).to_a.sample), iq: ((120..250).to_a.sample)
end

Friend.all.sample(5).each{|f| f.update_attribute :country, "Russia"}
