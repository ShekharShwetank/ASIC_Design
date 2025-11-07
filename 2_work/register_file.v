`timescale 1ns / 1ps

// 8-Register, 32-bit, 2-Read/1-Write Register File
module register_file #(
    parameter DATA_WIDTH = 32,
    parameter REG_COUNT = 8,
    parameter ADDR_WIDTH = 3  // 2^3 = 8 registers
) (
    input wire clk,
    input wire rst_n, // Asynchronous active-low reset
    
    // Port A (Read)
    input wire [ADDR_WIDTH-1:0] addr_a,
    output wire [DATA_WIDTH-1:0] data_a,
    
    // Port B (Read)
    input wire [ADDR_WIDTH-1:0] addr_b,
    output wire [DATA_WIDTH-1:0] data_b,
    
    // Port W (Write)
    input wire we_w, // Write Enable
    input wire [ADDR_WIDTH-1:0] addr_w,
    input wire [DATA_WIDTH-1:0] data_w
);

    // Core register storage
    reg [DATA_WIDTH-1:0] registers [0:REG_COUNT-1];

    // Loop variable for reset
    integer i;

    // Write Logic: Synchronous write, Asynchronous reset
    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            // Asynchronous reset: clear all registers
            for (i = 0; i < REG_COUNT; i = i + 1) begin
                registers[i] <= 32'b0;
            end
        end else if (we_w) begin
            // Synchronous write on posedge clk
            registers[addr_w] <= data_w;
        end
    end

    // Read Logic: Combinational (asynchronous)
    // This creates a standard "read-before-write" file.
    // The value read is the one from the previous clock cycle.
    assign data_a = registers[addr_a];
    assign data_b = registers[addr_b];

endmodule
