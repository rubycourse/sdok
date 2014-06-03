def prep
  Doctor.destroy_all
  Patient.destroy_all
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
