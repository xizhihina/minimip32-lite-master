`include "defines.v"

module wb_stage(

    // �ӷô�׶λ�õ���Ϣ
	input  wire [`REG_ADDR_BUS  ] wb_wa_i,
	input  wire                   wb_wreg_i,
	input  wire [`REG_BUS       ] wb_dreg_i,
	input  wire [`INST_ADDR_BUS]  wb_debug_wb_pc,  // ������ʹ�õ�PCֵ���ϰ����ʱ���ɾ�����ź�

    // д��Ŀ�ļĴ���������
    output wire [`REG_ADDR_BUS  ] wb_wa_o,
	output wire                   wb_wreg_o,
    output wire [`WORD_BUS      ] wb_wd_o,
    
    output wire [`INST_ADDR_BUS]  debug_wb_pc,       // ������ʹ�õ�PCֵ���ϰ����ʱ���ɾ�����ź�
    output wire                   debug_wb_rf_wen,   // ������ʹ�õ�PCֵ���ϰ����ʱ���ɾ�����ź�
    output wire [`REG_ADDR_BUS  ] debug_wb_rf_wnum,  // ������ʹ�õ�PCֵ���ϰ����ʱ���ɾ�����ź�
    output wire [`WORD_BUS      ] debug_wb_rf_wdata  // ������ʹ�õ�PCֵ���ϰ����ʱ���ɾ�����ź�
    );

    assign wb_wa_o      = wb_wa_i;
    assign wb_wreg_o    = wb_wreg_i;
    assign wb_wd_o      = wb_dreg_i;
    
    assign debug_wb_pc         = wb_debug_wb_pc;    // �ϰ����ʱ���ɾ�������
    assign debug_wb_rf_wen     = wb_wreg_i;         // �ϰ����ʱ���ɾ������� 
    assign debug_wb_rf_wnum    = wb_wa_i;           // �ϰ����ʱ���ɾ�������
    assign debug_wb_rf_wdata   = wb_dreg_i;         // �ϰ����ʱ���ɾ������� 
    
endmodule
