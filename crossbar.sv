
`timescale 1ns / 1ps

module crossbar(
    input  logic a,
    input  logic b,
    input  logic c,
    input  logic d,

    input  logic [1:0] sel0,
    input  logic [1:0] sel1,
    input  logic [1:0] sel2,
    input  logic [1:0] sel3,

    output logic w,
    output logic x,
    output logic y,
    output logic z
);

always_comb begin
    case(sel0)
        2'b00 : w = a;
        2'b01 : w = b;
        2'b10 : w = c;
        2'b11 : w = d;
        default: w = 1'b0;
    endcase
end

always_comb begin
    case(sel1)
        2'b00 : x = a;
        2'b01 : x = b;
        2'b10 : x = c;
        2'b11 : x = d;
        default: x = 1'b0;
    endcase
end

always_comb begin
    case(sel2)
        2'b00 : y = a;
        2'b01 : y = b;
        2'b10 : y = c;
        2'b11 : y = d;
        default: y = 1'b0;
    endcase
end

always_comb begin
    case(sel3)
        2'b00 : z = a;
        2'b01 : z = b;
        2'b10 : z = c;
        2'b11 : z = d;
        default: z = 1'b0;
    endcase
end

endmodule
