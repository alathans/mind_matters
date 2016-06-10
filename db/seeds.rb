# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# # # Data for CREDENTIALS
# c = Credential.new
# c.name = "PhD"
# c.save
#
# c = Credential.new
# c.name = "PsyD"
# c.save
#
# c = Credential.new
# c.name = "LCSW"
# c.save
#
# c = Credential.new
# c.name = "LCW"
# c.save
#
# c = Credential.new
# c.name = "MD"
# c.save
#
# c = Credential.new
# c.name = "CADC"
# c.save
#
# c = Credential.new
# c.name = "LPC"
# c.save
#
# # # # Data for ThERAPIST CREDENTIALS (Join Model)
# t = TherapistCredential.new
# t.therapist_id = "1"
# t.credential_id = "11"
# t.save
#
# t = TherapistCredential.new
# t.therapist_id = "2"
# t.credential_id = "11"
# t.save
#
# t = TherapistCredential.new
# t.therapist_id = "3"
# t.credential_id = "14"
# t.save
#
# t = TherapistCredential.new
# t.therapist_id = "4"
# t.credential_id = "10"
# t.save
#
# t = TherapistCredential.new
# t.therapist_id = "5"
# t.credential_id = "9"
# t.save
#
# t = TherapistCredential.new
# t.therapist_id = "6"
# t.credential_id = "14"
# t.save
#
# t = TherapistCredential.new
# t.therapist_id = "7"
# t.credential_id = "12"
# t.save
#
# t = TherapistCredential.new
# t.therapist_id = "8"
# t.credential_id = "14"
# t.save
#
# t = TherapistCredential.new
# t.therapist_id = "9"
# t.credential_id = "13"
# t.save
#
# t = TherapistCredential.new
# t.therapist_id = "10"
# t.credential_id = "11"
# t.save
#
# t = TherapistCredential.new
# t.therapist_id = "2"
# t.credential_id = "9"
# t.save
#
# t = TherapistCredential.new
# t.therapist_id = "14"
# t.credential_id = "6"
# t.save
#
# t = TherapistCredential.new
# t.therapist_id = "10"
# t.credential_id = "15"
# t.save

# t = TherapistCredential.new
# t.therapist_id = "4"
# t.credential_id = "15"
# t.save

# # # # Data for STATES
#
# s = State.new
# s.name = "California"
# s.save
#
# s = State.new
# s.name = "Colorado"
# s.save
#
# s = State.new
# s.name = "Florida"
# s.save
#
#
# s = State.new
# s.name = "Georgia"
# s.save
#
# s = State.new
# s.name = "Illinois"
# s.save
#
#
# s = State.new
# s.name = "North Carolina"
# s.save
#
#
# s = State.new
# s.name = "Texas"
# s.save
#
# s = State.new
# s.name = "Virginia"
# s.save

# Data for LICENSES (States Join Model)
#
l = License.new
l.state_id = "3"
l.therapist_id = "5"
l.license_number = "713407169"
l.save

l = License.new
l.state_id = "3"
l.therapist_id = "7"
l.license_number = "246348531"
l.save

l = License.new
l.state_id = "3"
l.therapist_id = "9"
l.license_number = "131762861"
l.save

l = License.new
l.state_id = "3"
l.therapist_id = "9"
l.license_number = "131762861"
l.save

l = License.new
l.state_id = "3"
l.therapist_id = "1"
l.license_number = "940163618"
l.save

l = License.new
l.state_id = "4"
l.therapist_id = "5"
l.license_number = "865187564"
l.save

l = License.new
l.state_id = "4"
l.therapist_id = "10"
l.license_number = "337951817"
l.save

l = License.new
l.state_id = "5"
l.therapist_id = "7"
l.license_number = "986364944"
l.save

l = License.new
l.state_id = "5"
l.therapist_id = "7"
l.license_number = "826092145"
l.save

l = License.new
l.state_id = "7"
l.therapist_id = "3"
l.license_number = "832739061"
l.save

l = License.new
l.state_id = "7"
l.therapist_id = "1"
l.license_number = "883032165"
l.save

l = License.new
l.state_id = "7"
l.therapist_id = "2"
l.license_number = "348830780"
l.save

l = License.new
l.state_id = "7"
l.therapist_id = "3"
l.license_number = "563628523"
l.save

l = License.new
l.state_id = "7"
l.therapist_id = "4"
l.license_number = "646901707"
l.save

l = License.new
l.state_id = "7"
l.therapist_id = "6"
l.license_number = "986364944"
l.save

l = License.new
l.state_id = "8"
l.therapist_id = "4"
l.license_number = "653202287"
l.save

l = License.new
l.state_id = "8"
l.therapist_id = "8"
l.license_number = "440816757"
l.save

l = License.new
l.state_id = "9"
l.therapist_id = "3"
l.license_number = "617015851"
l.save

l = License.new
l.state_id = "9"
l.therapist_id = "4"
l.license_number = "653202287"
l.save

l = License.new
l.state_id = "9"
l.therapist_id = "8"
l.license_number = "440816757"
l.save

l = License.new
l.state_id = "10"
l.therapist_id = "3"
l.license_number = "648025234"
l.save

# Data for INSURER (States Join Model)
# i = Insurer.new
# i.insurer_name = "Aetna"
# i.save
#
# i = Insurer.new
# i.insurer_name = "Blue Cross Blue Shield"
# i.save
#
# i = Insurer.new
# i.insurer_name = "Cigna"
# i.save
#
# i = Insurer.new
# i.insurer_name = "Coventry Health Care"
# i.save
#
# i = Insurer.new
# i.insurer_name = "Humana"
# i.save
#
# i = Insurer.new
# i.insurer_name = "Kaiser Permanente"
# i.save
#
# i = Insurer.new
# i.insurer_name = "TRICARE"
# i.save
#
# i = Insurer.new
# i.insurer_name = "UnitedHealth Group"
# i.save
#
# i = Insurer.new
# i.insurer_name = "WellPoint"
# i.save

# Data for AcceptedInsurance (Insurers Join Model)
# a = AcceptedInsurance.new
# a.insurer_id = "1"
# a.therapist_id = "1"
# a.save
#
# a = AcceptedInsurance.new
# a.insurer_id = "1"
# a.therapist_id = "2"
# a.save
#
# a = AcceptedInsurance.new
# a.insurer_id = "1"
# a.therapist_id = "6"
# a.save
#
# a = AcceptedInsurance.new
# a.insurer_id = "1"
# a.therapist_id = "9"
# a.save
#
# # Insuer 2
#
# a = AcceptedInsurance.new
# a.insurer_id = "2"
# a.therapist_id = "1"
# a.save
#
# a = AcceptedInsurance.new
# a.insurer_id = "2"
# a.therapist_id = "3"
# a.save
#
# a = AcceptedInsurance.new
# a.insurer_id = "2"
# a.therapist_id = "7"
# a.save
#
# # Insuer 3
#
# a = AcceptedInsurance.new
# a.insurer_id = "3"
# a.therapist_id = "1"
# a.save
#
# a = AcceptedInsurance.new
# a.insurer_id = "3"
# a.therapist_id = "3"
# a.save
#
# a = AcceptedInsurance.new
# a.insurer_id = "3"
# a.therapist_id = "7"
# a.save
#
# a = AcceptedInsurance.new
# a.insurer_id = "3"
# a.therapist_id = "8"
# a.save
#
# # Insuer 4
#
# a = AcceptedInsurance.new
# a.insurer_id = "4"
# a.therapist_id = "2"
# a.save
#
# a = AcceptedInsurance.new
# a.insurer_id = "4"
# a.therapist_id = "3"
# a.save
#
# a = AcceptedInsurance.new
# a.insurer_id = "4"
# a.therapist_id = "6"
# a.save
#
# a = AcceptedInsurance.new
# a.insurer_id = "4"
# a.therapist_id = "7"
# a.save
#
# # Insuer 5
#
# a = AcceptedInsurance.new
# a.insurer_id = "5"
# a.therapist_id = "5"
# a.save
#
# a = AcceptedInsurance.new
# a.insurer_id = "5"
# a.therapist_id = "8"
# a.save
#
# a = AcceptedInsurance.new
# a.insurer_id = "5"
# a.therapist_id = "10"
# a.save
#
#
# # Insuer 6
#
# a = AcceptedInsurance.new
# a.insurer_id = "6"
# a.therapist_id = "1"
# a.save
#
# a = AcceptedInsurance.new
# a.insurer_id = "6"
# a.therapist_id = "2"
# a.save
#
# a = AcceptedInsurance.new
# a.insurer_id = "6"
# a.therapist_id = "4"
# a.save
#
# a = AcceptedInsurance.new
# a.insurer_id = "6"
# a.therapist_id = "5"
# a.save
#
# # Insuer 7
#
# a = AcceptedInsurance.new
# a.insurer_id = "7"
# a.therapist_id = "2"
# a.save
#
# a.insurer_id = "7"
# a.therapist_id = "5"
# a.save
#
# a.insurer_id = "7"
# a.therapist_id = "6"
# a.save
#
# a.insurer_id = "7"
# a.therapist_id = "8"
# a.save
#
# a.insurer_id = "7"
# a.therapist_id = "10"
# a.save
#
# # Insuer 8
#
# a = AcceptedInsurance.new
# a.insurer_id = "8"
# a.therapist_id = "3"
# a.save
#
# a = AcceptedInsurance.new
# a.insurer_id = "8"
# a.therapist_id = "4"
# a.save
#
# a = AcceptedInsurance.new
# a.insurer_id = "8"
# a.therapist_id = "5"
# a.save
#
# a = AcceptedInsurance.new
# a.insurer_id = "8"
# a.therapist_id = "9"
# a.save
#
# a = AcceptedInsurance.new
# a.insurer_id = "8"
# a.therapist_id = "10"
# a.save
#
# # Insuer 9
#
# a = AcceptedInsurance.new
# a.insurer_id = "9"
# a.therapist_id = "4"
# a.save
#
# a = AcceptedInsurance.new
# a.insurer_id = "9"
# a.therapist_id = "5"
# a.save
#
# a = AcceptedInsurance.new
# a.insurer_id = "9"
# a.therapist_id = "9"
# a.save
