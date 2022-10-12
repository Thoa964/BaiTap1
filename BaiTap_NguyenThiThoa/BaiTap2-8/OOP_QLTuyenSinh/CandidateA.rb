require_relative 'Candidate.rb'

class CandidateA < Candidate
    @toanA
    @ly 
    @hoaA

    attr_accessor :toanA,:ly,:hoaA

    def initialize(id,name,addr,priority,toanA,ly,hoaA)
        super(id,name,addr,priority)
        @toanA = toanA
        @ly = ly
        @hoaA = hoaA
    end

    def to_s
        "Candidate A:" + "ID= #{@id}" + ",Name= #{@name}" + ",Address= #{@addr}" + ",Priority = #{@priority} "  + ",Toan = #{@toanA}" + ",Ly = #{@ly}" + ",Hoa= #{@hoaA}"
    end

end