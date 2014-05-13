def prep
  Doctor.destroy_all
  Patient.destroy_all
end

def preconditions
  zhivago = Doctor.create(name: "Zhivago")
  bob = Patient.create(name: "Bob")
end

