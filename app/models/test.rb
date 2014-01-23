require_relative '../../db/config'
require_relative 'student'
require_relative 'teacher'
require_relative 'assignment'

# Teacher.create(name: "Charlie Truong", email: "charlie.m.truong@gmail.com", phone: "123-123-1234", address: "1234 Smith Lane, Chicago, IL 12345")

#testing error with duplicate email
#p Teacher.create(name: "John Truong", email: "charlie.m.truong@gmail.com", phone: "123-123-1234", address: "1234 Smith Lane, Chicago, IL 12345").invalid?

#Seed Data for Teachers
 # Teacher.create(name: "John Truong", email: "charlie.m.truong1@gmail.com", phone: "123-123-1234", address: "1234 Smith Lane, Chicago, IL 12345").invalid?
 # Teacher.create(name: "John Truong", email: "charlie.m.truong2@gmail.com", phone: "123-123-1234", address: "1234 Smith Lane, Chicago, IL 12345").invalid?
 # Teacher.create(name: "John Truong", email: "charlie.m.truong3@gmail.com", phone: "123-123-1234", address: "1234 Smith Lane, Chicago, IL 12345").invalid?
 # Teacher.create(name: "John Truong", email: "charlie.m.truong4@gmail.com", phone: "123-123-1234", address: "1234 Smith Lane, Chicago, IL 12345").invalid?
 # Teacher.create(name: "John Truong", email: "charlie.m.truong5@gmail.com", phone: "123-123-1234", address: "1234 Smith Lane, Chicago, IL 12345").invalid?
 # Teacher.create(name: "John Truong", email: "charlie.m.truong6@gmail.com", phone: "123-123-1234", address: "1234 Smith Lane, Chicago, IL 12345").invalid?
 # Teacher.create(name: "John Truong", email: "charlie.m.truong7@gmail.com", phone: "123-123-1234", address: "1234 Smith Lane, Chicago, IL 12345").invalid?
 # Teacher.create(name: "John Truong", email: "charlie.m.truong8@gmail.com", phone: "123-123-1234", address: "1234 Smith Lane, Chicago, IL 12345").invalid?

#Assign student to teacher associations


#students = Student.all

#  students.each do |student|
#    student.teacher_id = rand(1..9)
#   student.save
# end

# random_student_teacher = students[5].teacher_id
# random_student_teacher
# p students[5].teacher == Teacher.find_by(id: random_student_teacher)

# p Teacher.find_by(id: random_student_teacher).students.include?(students[5])

# Section.create(student_id: 1, teacher_id: 1)
# Section.create(student_id: 1, teacher_id: 2)
# Section.create(student_id: 1, teacher_id: 3)
# Section.create(student_id: 1, teacher_id: 4)
# Section.create(student_id: 2, teacher_id: 5)
# Section.create(student_id: 2, teacher_id: 2)
# Section.create(student_id: 2, teacher_id: 3)
# Section.create(student_id: 2, teacher_id: 6)
# Section.create(student_id: 2, teacher_id: 7)

#p Student.find_by(id: 1).teachers
#p Teacher.find_by(id: 2).students

students = Student.all

students.each do |student|
  student.name = student.full_name
  student.save
end
