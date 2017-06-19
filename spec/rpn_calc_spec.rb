require 'rpn_start'

def call_calc_file
  system "./rpn_calc.rb"
end

RSpec.describe "RpnCalc" do

  it "calls system" do
    expect(self).to receive(:system)
    call_calc_file
  end

  describe "calculate" do
    describe "add method" do
      it "5 5 +, should equal 10" do
        expect(calculate(5,5,"+")).to eq(10)
      end

      it "-1 5 +, should equal 4" do
        expect(calculate(-1,5,"+")).to eq(4)
      end
    end

    describe "subtract method" do
      it "5 5 -, should equal 0" do
        expect(calculate(5,5,"-")).to eq(0)
      end

      it "-1 5 -, should equal -6" do
        expect(calculate(-1,5,"-")).to eq(-6)
      end
    end

    describe "multiplication method" do
      it "5 5 *, should equal 25" do
        expect(calculate(5,5,"*")).to eq(25)
      end

      it "-5 5 *, should equal -25" do
        expect(calculate(-5,5,"*")).to eq(-25)
      end
    end

    describe "division method" do
      it "25 5 /, should equal 5" do
        expect(calculate(25,5,"/")).to eq(5)
      end

      it "-25 5 /, should equal -5" do
        expect(calculate(-25,5,"/")).to eq(-5)
      end
    end

    describe "errors" do
      it "no operation" do
        expect(calculate(-1,5)).to eq("This isn't an operation this calculator does")
      end

      it "invalid operation" do
        expect(calculate(1,5, "[")).to eq("This isn't an operation this calculator does")
      end

      it "invalid operation" do
        expect(calculate(1, "[")).to eq("This isn't an operation this calculator does")
      end

      it "invalid operation" do
        expect(calculate(1, "*")).to eq("This isn't an operation this calculator does")
      end

      it "no values" do
        expect(calculate()).to eq("This isn't an operation this calculator does")
      end
    end
  end
end