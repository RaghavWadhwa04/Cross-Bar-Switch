module crossbar_tb;

    logic a, b, c, d;
    logic [1:0] sel0, sel1, sel2, sel3;
    logic w, x, y, z;

    crossbar dut (
        .a(a),
        .b(b),
        .c(c),
        .d(d),
        .sel0(sel0),
        .sel1(sel1),
        .sel2(sel2),
        .sel3(sel3),
        .w(w),
        .x(x),
        .y(y),
        .z(z)
    );

    initial begin

        a = 1;
        b = 0;
        c = 1;
        d = 0;

        sel0 = 2'b00;
        sel1 = 2'b00;
        sel2 = 2'b00;
        sel3 = 2'b00;

        #10;

        sel3 = 2'b01;
        #10;

        sel3 = 2'b10;
        #10;

        sel3 = 2'b11;
        #10;

        $finish;
    end

endmodule