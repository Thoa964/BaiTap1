require_relative 'document.rb'
class TapChi < TaiLieu
    @soPH
    @thangPH
    attr_accessor :soPH,:thangPH

    def initialize(id,nxb,number,soPH,thangPH)
        super(id,nxb,number)
        @soPH = soPH
        @thangPH = thangPH
    end

    def to_s
        "Journal{" + "@issueNumber=" + "#{@soPH}" +", monthIssue=" + "#{@thangPH}" +", id=" + @id + ", nxb=" + @nxb + ", number=" + "#{@number}" +'}'
    end
end