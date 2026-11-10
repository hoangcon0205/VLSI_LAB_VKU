`timescale 1ps/1ps
module tb;
  
    reg atb,btb;
    wire stb,couttb;

    //module half_adder (.*);

    //half_adder ha (atb,btb,stb,couttb);//ket noi liet ke

    half_adder ha (
        .a(atb),
        .b(btb),
        .s(stb),
        .cout(couttb)
    );//ket noi theo ten cong cu the

    initial begin
        $monitor("Time = %d, a = %b, b = %b, s = %b, cout = %b", $time, atb, btb, stb, couttb);

        atb = 0;btb = 0;
        #1;//1ps/1ps
        atb = 0;btb = 1;
        #1;
        atb = 1;btb = 0;
        #1;
        atb = 1;btb = 1;
        #3;
        $finish;

    end

    initial begin
        $dumpfile("half_adder_tb.vcd");
        $dumpvars(0,tb);
    end

endmodule
