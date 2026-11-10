`timescale 1ps/1ps
module tb;

    reg a,b,cin;
    wire s,cout;

    full_adder fa(
        .a(a),
        .b(b),
        .cin(cin),
        .s(s),
        .cout(cout)
    );

    initial begin
        $monitor("Time = %d, a = %b, b = %b, cin = %b, s = %b, cout = %b", $time, a, b, cin, s, cout);

        a = 0;b = 0;cin = 0;
        #1;
        a = 0;b = 0;cin = 1;
        #1;
        a = 0;b = 1;cin = 0;
        #1;
        a = 0;b = 1;cin = 1;
        #1;
        a = 1;b = 0;cin = 0;
        #1;
        a = 1;b = 0;cin = 1;
        #1;
        a = 1;b = 1;cin = 0;
        #1;
        a = 1;b = 1;cin = 1;
        #1;

        $finish;
    end

    initial begin
        $dumpfile("full_adder_tb");
        $dumpvars(0,tb);
    end
endmodule
