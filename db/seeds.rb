def prep
  Doctor.destroy_all
  Patient.destroy_all
end

def preconditions
  zhivago = Doctor.create(name: "Zhivago")
  bob = Patient.create(name: "Bob")
end

def swok_one
  zhivago.appointments.create(patient: bob, room_number: 666, symptom: "Viennese Mumbling Measles")
end
