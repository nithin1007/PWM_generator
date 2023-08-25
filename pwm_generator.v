module pwm_generator (
    input wire clk,
    input wire rst,
    input wire [7:0] duty_cycle, // Duty cycle control (0-255)
    output wire pwm_output
);

    reg [7:0] counter = 8'h00;
    reg pwm_output_reg;

    always @(posedge clk or posedge rst) begin
        if (rst) begin
            counter <= 8'h00;
            pwm_output_reg <= 1'b0;
        end
        else if (counter >= 8'hFF) begin
            counter <= 8'h00;
            pwm_output_reg <= (counter < duty_cycle) ? 1'b1 : 1'b0;
        end
        else begin
            counter <= counter + 1;
            pwm_output_reg <= (counter < duty_cycle) ? 1'b1 : 1'b0;
        end
    end

    assign pwm_output = pwm_output_reg;

endmodule
