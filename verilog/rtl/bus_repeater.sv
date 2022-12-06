/*********************************************
  Bus Repeater SOUTH
**********************************************/
wire          wb_clk_i_rp;
wire          wb_rst_i_rp ;      
wire          wbs_cyc_i_rp ;     
wire          wbs_stb_i_rp ;     
wire          wbs_we_i_rp  ;    
wire   [3:0]  wbs_sel_i_rp;      
wire   [31:0] wbs_adr_i_rp; 
wire   [31:0] wbs_dat_i_rp; 

wire          wbs_ack_int_o ;     
wire   [31:0] wbs_dat_int_o;

wire   [17:0] la_data_in_rp;

wire [252:0] ch_in_south = {
                    user_clock2,
                    la_data_out_int[127],
                    la_data_out_int[126],
                    la_data_out_int[125],
                    la_data_out_int[124],
                    la_data_out_int[123],
                    la_data_out_int[122],
                    la_data_out_int[121],
                    la_data_out_int[120],
                    la_data_out_int[119],
                    la_data_out_int[118],
                    la_data_out_int[117],
                    la_data_out_int[116],
                    la_data_out_int[115],
                    la_data_out_int[114],
                    la_data_out_int[113],
                    la_data_out_int[112],
                    la_data_out_int[111],
                    la_data_out_int[110],
                    la_data_out_int[109],
                    la_data_out_int[108],
                    la_data_out_int[107],
                    la_data_out_int[106],
                    la_data_out_int[105],
                    la_data_out_int[104],
                    la_data_out_int[103],
                    la_data_out_int[102],
                    la_data_out_int[101],
                    la_data_out_int[100],
                    la_data_out_int[99],
                    la_data_out_int[98],
                    la_data_out_int[97],
                    la_data_out_int[96],
                    la_data_out_int[95],
                    la_data_out_int[94],
                    la_data_out_int[93],
                    la_data_out_int[92],
                    la_data_out_int[91],
                    la_data_out_int[90],
                    la_data_out_int[89],
                    la_data_out_int[88],
                    la_data_out_int[87],
                    la_data_out_int[86],
                    la_data_out_int[85],
                    la_data_out_int[84],
                    la_data_out_int[83],
                    la_data_out_int[82],
                    la_data_out_int[81],
                    la_data_out_int[80],
                    la_data_out_int[79],
                    la_data_out_int[78],
                    la_data_out_int[77],
                    la_data_out_int[76],
                    la_data_out_int[75],
                    la_data_out_int[74],
                    la_data_out_int[73],
                    la_data_out_int[72],
                    la_data_out_int[71],
                    la_data_out_int[70],
                    la_data_out_int[69],
                    la_data_out_int[68],
                    la_data_out_int[67],
                    la_data_out_int[66],
                    la_data_out_int[65],
                    la_data_out_int[64],
                    la_data_out_int[63],
                    la_data_out_int[62],
                    la_data_out_int[61],
                    la_data_out_int[60],
                    la_data_out_int[59],
                    la_data_out_int[58],
                    la_data_out_int[57],
                    la_data_out_int[56],
                    la_data_out_int[55],
                    la_data_out_int[54],
                    la_data_out_int[53],
                    la_data_out_int[52],
                    la_data_out_int[51],
                    la_data_out_int[50],
                    la_data_out_int[49],
                    la_data_out_int[48],
                    la_data_out_int[47],
                    la_data_out_int[46],
                    la_data_out_int[45],
                    la_data_out_int[44],
                    la_data_out_int[43],
                    la_data_out_int[42],
                    la_data_out_int[41],
                    la_data_out_int[40],
                    la_data_out_int[39],
                    la_data_out_int[38],
                    la_data_out_int[37],
                    la_data_out_int[36],
                    la_data_out_int[35],
                    la_data_out_int[34],
                    la_data_out_int[33],
                    la_data_out_int[32],
                    la_data_out_int[31],
                    la_data_out_int[30],
                    la_data_out_int[29],
                    la_data_out_int[28],
                    la_data_out_int[27],
                    la_data_out_int[26],
                    la_data_out_int[25],
                    la_data_out_int[24],
                    la_data_out_int[23],
                    la_data_out_int[22],
                    la_data_out_int[21],
                    la_data_out_int[20],
                    la_data_out_int[19],
                    la_data_out_int[18],
                    la_data_out_int[17],
                    la_data_in[17],
                    la_data_out_int[16],
                    la_data_in[16],
                    la_data_out_int[15],
                    la_data_in[15],
                    la_data_out_int[14],
                    la_data_in[14],
                    la_data_out_int[13],
                    la_data_in[13],
                    la_data_out_int[12],
                    la_data_in[12],
                    la_data_out_int[11],
                    la_data_in[11],
                    la_data_out_int[10],
                    la_data_in[10],
                    la_data_out_int[9],
                    la_data_in[9],
                    la_data_out_int[8],
                    la_data_in[8],
                    la_data_out_int[7],
                    la_data_in[7],
                    la_data_out_int[6],
                    la_data_in[6],
                    la_data_out_int[5],
                    la_data_in[5],
                    la_data_out_int[4],
                    la_data_in[4],
                    la_data_out_int[3],
                    la_data_in[3],
                    la_data_out_int[2],
                    la_data_in[2],
                    la_data_out_int[1],
                    la_data_in[1],
                    la_data_out_int[0],
                    la_data_in[0],

                    wbs_dat_int_o[31]  , // 105
                    wbs_dat_i[31]      ,
                    wbs_adr_i[31]      ,
                    wbs_dat_int_o[30]  , 
                    wbs_dat_i[30]      ,
                    wbs_adr_i[30]      ,
                    wbs_dat_int_o[29]  , 
                    wbs_dat_i[29]      ,
                    wbs_adr_i[29]      ,
                    wbs_dat_int_o[28]  , 
                    wbs_dat_i[28]      ,
                    wbs_adr_i[28]      ,
                    wbs_dat_int_o[27]  , 
                    wbs_dat_i[27]      ,
                    wbs_adr_i[27]      ,
                    wbs_dat_int_o[26]  , 
                    wbs_dat_i[26]      ,
                    wbs_adr_i[26]      ,
                    wbs_dat_int_o[25]  , 
                    wbs_dat_i[25]      ,
                    wbs_adr_i[25]      ,
                    wbs_dat_int_o[24]  , 
                    wbs_dat_i[24]      ,
                    wbs_adr_i[24]      ,
                    wbs_dat_int_o[23]  , 
                    wbs_dat_i[23]      ,
                    wbs_adr_i[23]      ,
                    wbs_dat_int_o[22]  , 
                    wbs_dat_i[22]      ,
                    wbs_adr_i[22]      ,
                    wbs_dat_int_o[21]  , 
                    wbs_dat_i[21]      ,
                    wbs_adr_i[21]      ,
                    wbs_dat_int_o[20]  , 
                    wbs_dat_i[20]      ,
                    wbs_adr_i[20]      ,
                    wbs_dat_int_o[19]  , 
                    wbs_dat_i[19]      ,
                    wbs_adr_i[19]      ,
                    wbs_dat_int_o[18]  , 
                    wbs_dat_i[18]      ,
                    wbs_adr_i[18]      ,
                    wbs_dat_int_o[17]  , 
                    wbs_dat_i[17]      ,
                    wbs_adr_i[17]      ,
                    wbs_dat_int_o[16]  , 
                    wbs_dat_i[16]      ,
                    wbs_adr_i[16]      ,
                    wbs_dat_int_o[15]  , 
                    wbs_dat_i[15]      ,
                    wbs_adr_i[15]      ,
                    wbs_dat_int_o[14]  , 
                    wbs_dat_i[14]      ,
                    wbs_adr_i[14]      ,
                    wbs_dat_int_o[13]  , 
                    wbs_dat_i[13]      ,
                    wbs_adr_i[13]      ,
                    wbs_dat_int_o[12]  , 
                    wbs_dat_i[12]      ,
                    wbs_adr_i[12]      ,
                    wbs_dat_int_o[11]  , 
                    wbs_dat_i[11]      ,
                    wbs_adr_i[11]      ,
                    wbs_dat_int_o[10]  , 
                    wbs_dat_i[10]      ,
                    wbs_adr_i[10]      ,
                    wbs_dat_int_o[9]   , 
                    wbs_dat_i[9]       ,
                    wbs_adr_i[9]       ,
                    wbs_dat_int_o[8]   , // 36
                    wbs_dat_i[8]       ,
                    wbs_adr_i[8]       ,
                    wbs_dat_int_o[7]   , // 33
                    wbs_dat_i[7]       ,
                    wbs_adr_i[7]       ,
                    wbs_dat_int_o[6]   , // 30
                    wbs_dat_i[6]       ,
                    wbs_adr_i[6]       ,
                    wbs_dat_int_o[5]   , // 27
                    wbs_dat_i[5]       ,
                    wbs_adr_i[5]       ,
                    wbs_dat_int_o[4]   , // 24
                    wbs_dat_i[4]       ,
                    wbs_adr_i[4]       ,
                    wbs_sel_i[3]       ,
                    wbs_dat_int_o[3]   , // 20
                    wbs_dat_i[3]       ,
                    wbs_adr_i[3]       , 
                    wbs_sel_i[2]       , 
                    wbs_dat_int_o[2]   , // 16
                    wbs_dat_i[2]       ,
                    wbs_adr_i[2]       ,
                    wbs_sel_i[1]       ,
                    wbs_dat_int_o[1]   , // 12
                    wbs_dat_i[1]       ,
                    wbs_adr_i[1]       ,
                    wbs_sel_i[0]       , 
                    wbs_dat_int_o[0]   , // 8
                    wbs_dat_i[0]       ,
                    wbs_adr_i[0]       ,
                    wbs_we_i           ,
                    wbs_stb_i          ,
                    wbs_cyc_i          ,
                    wbs_ack_int_o      ,  
                    wb_rst_i           ,  
                    wb_clk_i           
            };
wire [252:0] ch_out_south ;
assign {
                    user_clock2_rp  ,
                    la_data_out[127],
                    la_data_out[126],
                    la_data_out[125],
                    la_data_out[124],
                    la_data_out[123],
                    la_data_out[122],
                    la_data_out[121],
                    la_data_out[120],
                    la_data_out[119],
                    la_data_out[118],
                    la_data_out[117],
                    la_data_out[116],
                    la_data_out[115],
                    la_data_out[114],
                    la_data_out[113],
                    la_data_out[112],
                    la_data_out[111],
                    la_data_out[110],
                    la_data_out[109],
                    la_data_out[108],
                    la_data_out[107],
                    la_data_out[106],
                    la_data_out[105],
                    la_data_out[104],
                    la_data_out[103],
                    la_data_out[102],
                    la_data_out[101],
                    la_data_out[100],
                    la_data_out[99],
                    la_data_out[98],
                    la_data_out[97],
                    la_data_out[96],
                    la_data_out[95],
                    la_data_out[94],
                    la_data_out[93],
                    la_data_out[92],
                    la_data_out[91],
                    la_data_out[90],
                    la_data_out[89],
                    la_data_out[88],
                    la_data_out[87],
                    la_data_out[86],
                    la_data_out[85],
                    la_data_out[84],
                    la_data_out[83],
                    la_data_out[82],
                    la_data_out[81],
                    la_data_out[80],
                    la_data_out[79],
                    la_data_out[78],
                    la_data_out[77],
                    la_data_out[76],
                    la_data_out[75],
                    la_data_out[74],
                    la_data_out[73],
                    la_data_out[72],
                    la_data_out[71],
                    la_data_out[70],
                    la_data_out[69],
                    la_data_out[68],
                    la_data_out[67],
                    la_data_out[66],
                    la_data_out[65],
                    la_data_out[64],
                    la_data_out[63],
                    la_data_out[62],
                    la_data_out[61],
                    la_data_out[60],
                    la_data_out[59],
                    la_data_out[58],
                    la_data_out[57],
                    la_data_out[56],
                    la_data_out[55],
                    la_data_out[54],
                    la_data_out[53],
                    la_data_out[52],
                    la_data_out[51],
                    la_data_out[50],
                    la_data_out[49],
                    la_data_out[48],
                    la_data_out[47],
                    la_data_out[46],
                    la_data_out[45],
                    la_data_out[44],
                    la_data_out[43],
                    la_data_out[42],
                    la_data_out[41],
                    la_data_out[40],
                    la_data_out[39],
                    la_data_out[38],
                    la_data_out[37],
                    la_data_out[36],
                    la_data_out[35],
                    la_data_out[34],
                    la_data_out[33],
                    la_data_out[32],
                    la_data_out[31],
                    la_data_out[30],
                    la_data_out[29],
                    la_data_out[28],
                    la_data_out[27],
                    la_data_out[26],
                    la_data_out[25],
                    la_data_out[24],
                    la_data_out[23],
                    la_data_out[22],
                    la_data_out[21],
                    la_data_out[20],
                    la_data_out[19],
                    la_data_out[18],
                    la_data_out[17],
                    la_data_in_rp[17],
                    la_data_out[16],
                    la_data_in_rp[16],
                    la_data_out[15],
                    la_data_in_rp[15],
                    la_data_out[14],
                    la_data_in_rp[14],
                    la_data_out[13],
                    la_data_in_rp[13],
                    la_data_out[12],
                    la_data_in_rp[12],
                    la_data_out[11],
                    la_data_in_rp[11],
                    la_data_out[10],
                    la_data_in_rp[10],
                    la_data_out[9],
                    la_data_in_rp[9],
                    la_data_out[8],
                    la_data_in_rp[8],
                    la_data_out[7],
                    la_data_in_rp[7],
                    la_data_out[6],
                    la_data_in_rp[6],
                    la_data_out[5],
                    la_data_in_rp[5],
                    la_data_out[4],
                    la_data_in_rp[4],
                    la_data_out[3],
                    la_data_in_rp[3],
                    la_data_out[2],
                    la_data_in_rp[2],
                    la_data_out[1],
                    la_data_in_rp[1],
                    la_data_out[0],
                    la_data_in_rp[0],

                    wbs_dat_o[31]   , 
                    wbs_dat_i_rp[31],
                    wbs_adr_i_rp[31],
                    wbs_dat_o[30]   , 
                    wbs_dat_i_rp[30],
                    wbs_adr_i_rp[30],
                    wbs_dat_o[29]   , 
                    wbs_dat_i_rp[29],
                    wbs_adr_i_rp[29],
                    wbs_dat_o[28]   , 
                    wbs_dat_i_rp[28],
                    wbs_adr_i_rp[28],
                    wbs_dat_o[27]   , 
                    wbs_dat_i_rp[27],
                    wbs_adr_i_rp[27],
                    wbs_dat_o[26]   , 
                    wbs_dat_i_rp[26],
                    wbs_adr_i_rp[26],
                    wbs_dat_o[25]   , 
                    wbs_dat_i_rp[25],
                    wbs_adr_i_rp[25],
                    wbs_dat_o[24]   , 
                    wbs_dat_i_rp[24],
                    wbs_adr_i_rp[24],
                    wbs_dat_o[23]   , 
                    wbs_dat_i_rp[23],
                    wbs_adr_i_rp[23],
                    wbs_dat_o[22]   , 
                    wbs_dat_i_rp[22],
                    wbs_adr_i_rp[22],
                    wbs_dat_o[21]   , 
                    wbs_dat_i_rp[21],
                    wbs_adr_i_rp[21],
                    wbs_dat_o[20]   , 
                    wbs_dat_i_rp[20],
                    wbs_adr_i_rp[20],
                    wbs_dat_o[19]   , 
                    wbs_dat_i_rp[19],
                    wbs_adr_i_rp[19],
                    wbs_dat_o[18]   , 
                    wbs_dat_i_rp[18],
                    wbs_adr_i_rp[18],
                    wbs_dat_o[17]   , 
                    wbs_dat_i_rp[17],
                    wbs_adr_i_rp[17],
                    wbs_dat_o[16]   , 
                    wbs_dat_i_rp[16],
                    wbs_adr_i_rp[16],
                    wbs_dat_o[15]   , 
                    wbs_dat_i_rp[15],
                    wbs_adr_i_rp[15],
                    wbs_dat_o[14]   , 
                    wbs_dat_i_rp[14],
                    wbs_adr_i_rp[14],
                    wbs_dat_o[13]   , 
                    wbs_dat_i_rp[13],
                    wbs_adr_i_rp[13],
                    wbs_dat_o[12]   , 
                    wbs_dat_i_rp[12],
                    wbs_adr_i_rp[12],
                    wbs_dat_o[11]   , 
                    wbs_dat_i_rp[11],
                    wbs_adr_i_rp[11],
                    wbs_dat_o[10]   , 
                    wbs_dat_i_rp[10],
                    wbs_adr_i_rp[10],
                    wbs_dat_o[9]   , 
                    wbs_dat_i_rp[9],
                    wbs_adr_i_rp[9],
                    wbs_dat_o[8]   , 
                    wbs_dat_i_rp[8],
                    wbs_adr_i_rp[8],
                    wbs_dat_o[7]   , 
                    wbs_dat_i_rp[7],
                    wbs_adr_i_rp[7],
                    wbs_dat_o[6]   , 
                    wbs_dat_i_rp[6],
                    wbs_adr_i_rp[6],
                    wbs_dat_o[5]   , 
                    wbs_dat_i_rp[5],
                    wbs_adr_i_rp[5],
                    wbs_dat_o[4]   , 
                    wbs_dat_i_rp[4],
                    wbs_adr_i_rp[4],

                    wbs_sel_i_rp[3]       ,
                    wbs_dat_o[3]   , 
                    wbs_dat_i_rp[3]       ,
                    wbs_adr_i_rp[3]       , 
                    wbs_sel_i_rp[2]       , 
                    wbs_dat_o[2]   , 
                    wbs_dat_i_rp[2]       ,
                    wbs_adr_i_rp[2]       ,
                    wbs_sel_i_rp[1]       ,
                    wbs_dat_o[1]   , 
                    wbs_dat_i_rp[1]       ,
                    wbs_adr_i_rp[1]       ,
                    wbs_sel_i_rp[0]       , 
                    wbs_dat_o[0]   , 
                    wbs_dat_i_rp[0]       ,
                    wbs_adr_i_rp[0]       ,
                    wbs_we_i_rp           ,
                    wbs_stb_i_rp          ,
                    wbs_cyc_i_rp          ,
                    wbs_ack_o             ,  
                    wb_rst_i_rp           ,  
                    wb_clk_i_rp           
            } = ch_out_south;

bus_rep_south  #(
`ifndef SYNTHESIS
.BUS_REP_WD(253)
`endif
      ) u_rp_south(
`ifdef USE_POWER_PINS
    .vccd1                 (vccd1                  ),
    .vssd1                 (vssd1                  ),
`endif
    .ch_in (ch_in_south),
    .ch_out (ch_out_south)
   );


/*********************************************
  Bus Repeater WEST
**********************************************/

wire [41:0] ch_in_west = {
                          io_oeb_int[37],
                          io_out_int[37],
                          io_in[37],
                          io_oeb_int[36],
                          io_out_int[36],
                          io_in[36],
                          io_oeb_int[35],
                          io_out_int[35],
                          io_in[35],
                          io_oeb_int[34],
                          io_out_int[34],
                          io_in[34],
                          io_oeb_int[33],
                          io_out_int[33],
                          io_in[33],
                          io_oeb_int[32],
                          io_out_int[32],
                          io_in[32],
                          io_oeb_int[31],
                          io_out_int[31],
                          io_in[31],
                          io_oeb_int[30],
                          io_out_int[30],
                          io_in[30],
                          io_oeb_int[29],
                          io_out_int[29],
                          io_in[29],
                          io_oeb_int[28],
                          io_out_int[28],
                          io_in[28],
                          io_oeb_int[27],
                          io_out_int[27],
                          io_in[27],
                          io_oeb_int[26],
                          io_out_int[26],
                          io_in[26],
                          io_oeb_int[25],
                          io_out_int[25],
                          io_in[25],
                          io_oeb_int[24],
                          io_out_int[24],
                          io_in[24]
                         };

wire [41:0] ch_out_west ;
assign  {
                          io_oeb[37],
                          io_out[37],
                          io_in_rp[37],
                          io_oeb[36],
                          io_out[36],
                          io_in_rp[36],
                          io_oeb[35],
                          io_out[35],
                          io_in_rp[35],
                          io_oeb[34],
                          io_out[34],
                          io_in_rp[34],
                          io_oeb[33],
                          io_out[33],
                          io_in_rp[33],
                          io_oeb[32],
                          io_out[32],
                          io_in_rp[32],
                          io_oeb[31],
                          io_out[31],
                          io_in_rp[31],
                          io_oeb[30],
                          io_out[30],
                          io_in_rp[30],
                          io_oeb[29],
                          io_out[29],
                          io_in_rp[29],
                          io_oeb[28],
                          io_out[28],
                          io_in_rp[28],
                          io_oeb[27],
                          io_out[27],
                          io_in_rp[27],
                          io_oeb[26],
                          io_out[26],
                          io_in_rp[26],
                          io_oeb[25],
                          io_out[25],
                          io_in_rp[25],
                          io_oeb[24],
                          io_out[24],
                          io_in_rp[24]

         } = ch_out_west;

bus_rep_west  #(
`ifndef SYNTHESIS
.BUS_REP_WD(42)
`endif
      ) u_rp_west(
`ifdef USE_POWER_PINS
    .vccd1                 (vccd1                  ),
    .vssd1                 (vssd1                  ),
`endif
    .ch_in  (ch_in_west),
    .ch_out (ch_out_west)
   );

/*********************************************
  Bus Repeater NORTH
**********************************************/

wire [26:0] ch_in_north = {
                            io_in[15],
                            io_out_int[15],
                            io_oeb_int[15],
                            io_in[16],
                            io_out_int[16],
                            io_oeb_int[16],
                            io_in[17],
                            io_out_int[17],
                            io_oeb_int[17],
                            io_in[18],
                            io_out_int[18],
                            io_oeb_int[18],
                            io_in[19],
                            io_out_int[19],
                            io_oeb_int[19],
                            io_in[20],
                            io_out_int[20],
                            io_oeb_int[20],
                            io_in[21],
                            io_out_int[21],
                            io_oeb_int[21],
                            io_in[22],
                            io_out_int[22],
                            io_oeb_int[22],
                            io_in[23],
                            io_out_int[23],
                            io_oeb_int[23]
                          };


wire [26:0] ch_out_north ;
assign  {
           io_in_rp[15],
           io_out[15],
           io_oeb[15],
           io_in_rp[16],
           io_out[16],
           io_oeb[16],
           io_in_rp[17],
           io_out[17],
           io_oeb[17],
           io_in_rp[18],
           io_out[18],
           io_oeb[18],
           io_in_rp[19],
           io_out[19],
           io_oeb[19],
           io_in_rp[20],
           io_out[20],
           io_oeb[20],
           io_in_rp[21],
           io_out[21],
           io_oeb[21],
           io_in_rp[22],
           io_out[22],
           io_oeb[22],
           io_in_rp[23],
           io_out[23],
           io_oeb[23]
          } = ch_out_north;

bus_rep_north  #(
`ifndef SYNTHESIS
.BUS_REP_WD(27)
`endif
      ) u_rp_north(
`ifdef USE_POWER_PINS
    .vccd1                 (vccd1                  ),
    .vssd1                 (vssd1                  ),
`endif
    .ch_in (ch_in_north),
    .ch_out (ch_out_north)
   );

/*********************************************
  Bus Repeater EAST
**********************************************/

wire [44:0] ch_in_east = {
                            io_in[0],
                            io_out_int[0],
                            io_oeb_int[0],
                            io_in[1],
                            io_out_int[1],
                            io_oeb_int[1],
                            io_in[2],
                            io_out_int[2],
                            io_oeb_int[2],
                            io_in[3],
                            io_out_int[3],
                            io_oeb_int[3],
                            io_in[4],
                            io_out_int[4],
                            io_oeb_int[4],
                            io_in[5],
                            io_out_int[5],
                            io_oeb_int[5],
                            io_in[6],
                            io_out_int[6],
                            io_oeb_int[6],
                            io_in[7],
                            io_out_int[7],
                            io_oeb_int[7],
                            io_in[8],
                            io_out_int[8],
                            io_oeb_int[8],
                            io_in[9],
                            io_out_int[9],
                            io_oeb_int[9],
                            io_in[10],
                            io_out_int[10],
                            io_oeb_int[10],
                            io_in[11],
                            io_out_int[11],
                            io_oeb_int[11],
                            io_in[12],
                            io_out_int[12],
                            io_oeb_int[12],
                            io_in[13],
                            io_out_int[13],
                            io_oeb_int[13],
                            io_in[14],
                            io_out_int[14],
                            io_oeb_int[14]
                          };


wire [44:0] ch_out_east ;
assign  {
                            io_in_rp[0],
                            io_out[0],
                            io_oeb[0],
                            io_in_rp[1],
                            io_out[1],
                            io_oeb[1],
                            io_in_rp[2],
                            io_out[2],
                            io_oeb[2],
                            io_in_rp[3],
                            io_out[3],
                            io_oeb[3],
                            io_in_rp[4],
                            io_out[4],
                            io_oeb[4],
                            io_in_rp[5],
                            io_out[5],
                            io_oeb[5],
                            io_in_rp[6],
                            io_out[6],
                            io_oeb[6],
                            io_in_rp[7],
                            io_out[7],
                            io_oeb[7],
                            io_in_rp[8],
                            io_out[8],
                            io_oeb[8],
                            io_in_rp[9],
                            io_out[9],
                            io_oeb[9],
                            io_in_rp[10],
                            io_out[10],
                            io_oeb[10],
                            io_in_rp[11],
                            io_out[11],
                            io_oeb[11],
                            io_in_rp[12],
                            io_out[12],
                            io_oeb[12],
                            io_in_rp[13],
                            io_out[13],
                            io_oeb[13],
                            io_in_rp[14],
                            io_out[14],
                            io_oeb[14]
        } = ch_out_east;

bus_rep_east  #(
`ifndef SYNTHESIS
.BUS_REP_WD(45)
`endif
      ) u_rp_east(
`ifdef USE_POWER_PINS
    .vccd1                 (vccd1                  ),
    .vssd1                 (vssd1                  ),
`endif
    .ch_in (ch_in_east),
    .ch_out (ch_out_east)
   );

//---------------------------------------------------------
// No Repeated added for these ports yet
//---------------------------------------------------------
//assign io_oeb[14:0]    = io_oeb_int[14:0];
//assign io_out[14:0]    = io_out_int[14:0];
//assign io_in_rp[14:0]  = io_in[14:0];

//assign io_oeb[37:24]    = io_oeb_int[37:24];
//assign io_out[37:24]    = io_out_int[37:24];
//assign io_in_rp[37:24]  = io_in[37:24];
