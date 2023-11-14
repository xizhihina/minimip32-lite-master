`include "defines.v"

module memwb_reg (
    input  wire                     cpu_clk_50M,
	input  wire                     cpu_rst_n,

	// ���Էô�׶ε���Ϣ
	input  wire [`REG_ADDR_BUS  ]   mem_wa,
	input  wire                     mem_wreg,
	input  wire [`REG_BUS       ] 	mem_dreg,
	input  wire [`INST_ADDR_BUS]   mem_debug_wb_pc, // ������ʹ�õ�PCֵ���ϰ����ʱ���ɾ�����ź�

	// ����д�ؽ׶ε���Ϣ 
	output reg  [`REG_ADDR_BUS  ]   wb_wa,
	output reg                      wb_wreg,
	output reg  [`REG_BUS       ]   wb_dreg,
	
	output reg  [`INST_ADDR_BUS]    wb_debug_wb_pc  // ������ʹ�õ�PCֵ���ϰ����ʱ���ɾ�����ź�
    );

    always @(posedge cpu_clk_50M) begin
		// ��λ��ʱ������д�ؽ׶ε���Ϣ��0
		if (cpu_rst_n == `RST_ENABLE) begin
			wb_wa                 <= `REG_NOP;
			wb_wreg               <= `WRITE_DISABLE;
			wb_dreg               <= `ZERO_WORD;
			wb_debug_wb_pc        <= `PC_INIT;   // �ϰ����ʱ���ɾ�������
		end
		// �����Էô�׶ε���Ϣ�Ĵ沢����д�ؽ׶�
		else begin
			wb_wa 	              <= mem_wa;
			wb_wreg               <= mem_wreg;
			wb_dreg               <= mem_dreg;
			wb_debug_wb_pc        <= mem_debug_wb_pc;   // �ϰ����ʱ���ɾ�������
		end
	end

endmodule