module half_adder (a,b,s,cout);

    input wire a,b;
    output wire s,cout;

/*
always @(a,b) begin  //(....)dnah sach bien
    s = a ^ b;
    cout = a & b;
end
*/

assign s = a ^ b;
assign cout = a & b;


endmodule
