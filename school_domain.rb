class School

	attr_accessor :roster, :student, :grade

	def initialize(roster)
		@roster = {}
	end

	def add_student(student, grade)
		self.roster[grade] ||= []
		self.roster[grade] << student
	end

	def grade(grade)
		self.roster[grade]
	end

	def sort
		sorted_roster = self.roster.each do |grade, students|
			students.sort!
		end
	end

end