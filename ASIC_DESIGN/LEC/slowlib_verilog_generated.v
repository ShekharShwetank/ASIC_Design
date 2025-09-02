//
// Conformal-LEC: Version 21.10-s300 (22-Aug-2021) (64 bit executable)
//
module XOR3XL(A, B, C, Y);
input  A, B, C;
output Y;
wire  A, B, C, Y;
  xor U$1(Y, A, B, C);
endmodule

module XOR3X1(A, B, C, Y);
input  A, B, C;
output Y;
wire  A, B, C, Y;
  xor U$1(Y, A, B, C);
endmodule

module XOR2XL(A, B, Y);
input  A, B;
output Y;
wire  A, B, Y;
  xor U$1(Y, A, B);
endmodule

module XOR2X4(A, B, Y);
input  A, B;
output Y;
wire  A, B, Y;
  xor U$1(Y, A, B);
endmodule

module XOR2X2(A, B, Y);
input  A, B;
output Y;
wire  A, B, Y;
  xor U$1(Y, A, B);
endmodule

module XOR2X1(A, B, Y);
input  A, B;
output Y;
wire  A, B, Y;
  xor U$1(Y, A, B);
endmodule

module XNOR3XL(A, B, C, Y);
input  A, B, C;
output Y;
wire  A, B, C, Y;
  xnor U$1(Y, A, B, C);
endmodule

module XNOR3X1(A, B, C, Y);
input  A, B, C;
output Y;
wire  A, B, C, Y;
  xnor U$1(Y, A, B, C);
endmodule

module XNOR2XL(A, B, Y);
input  A, B;
output Y;
wire  A, B, Y;
  xnor U$1(Y, A, B);
endmodule

module XNOR2X4(A, B, Y);
input  A, B;
output Y;
wire  A, B, Y;
  xnor U$1(Y, A, B);
endmodule

module XNOR2X2(A, B, Y);
input  A, B;
output Y;
wire  A, B, Y;
  xnor U$1(Y, A, B);
endmodule

module XNOR2X1(A, B, Y);
input  A, B;
output Y;
wire  A, B, Y;
  xnor U$1(Y, A, B);
endmodule

module TLATXL(D, G, Q, QN);
input  D, G;
output Q, QN;
wire  D, G, Q, QN;
  _HDLAT_verplex U$1(.Q(Q), .QN(QN), .S(1'b0), .R(1'b0), .CK(G), .D(D));
endmodule

module TLATX4(D, G, Q, QN);
input  D, G;
output Q, QN;
wire  D, G, Q, QN;
  _HDLAT_verplex U$1(.Q(Q), .QN(QN), .S(1'b0), .R(1'b0), .CK(G), .D(D));
endmodule

module TLATX2(D, G, Q, QN);
input  D, G;
output Q, QN;
wire  D, G, Q, QN;
  _HDLAT_verplex U$1(.Q(Q), .QN(QN), .S(1'b0), .R(1'b0), .CK(G), .D(D));
endmodule

module TLATX1(D, G, Q, QN);
input  D, G;
output Q, QN;
wire  D, G, Q, QN;
  _HDLAT_verplex U$1(.Q(Q), .QN(QN), .S(1'b0), .R(1'b0), .CK(G), .D(D));
endmodule

module TLATSRXL(D, G, Q, QN, RN, SN);
input  D, G, RN, SN;
output Q, QN;
wire  D, G, Q, QN, RN, SN, n$1, n$2;
  _HDLAT_verplex U$1(.Q(Q), .QN(QN), .S(n$1), .R(1'b0), .CK(n$2), .D(D));
  not U$4(n$1, SN);
  and U$5(n$2, G, RN);
endmodule

module TLATSRX4(D, G, Q, QN, RN, SN);
input  D, G, RN, SN;
output Q, QN;
wire  D, G, Q, QN, RN, SN, n$1, n$2;
  _HDLAT_verplex U$1(.Q(Q), .QN(QN), .S(n$1), .R(1'b0), .CK(n$2), .D(D));
  not U$4(n$1, SN);
  and U$5(n$2, G, RN);
endmodule

module TLATSRX2(D, G, Q, QN, RN, SN);
input  D, G, RN, SN;
output Q, QN;
wire  D, G, Q, QN, RN, SN, n$1, n$2;
  _HDLAT_verplex U$1(.Q(Q), .QN(QN), .S(n$1), .R(1'b0), .CK(n$2), .D(D));
  not U$4(n$1, SN);
  and U$5(n$2, G, RN);
endmodule

module TLATSRX1(D, G, Q, QN, RN, SN);
input  D, G, RN, SN;
output Q, QN;
wire  D, G, Q, QN, RN, SN, n$1, n$2;
  _HDLAT_verplex U$1(.Q(Q), .QN(QN), .S(n$1), .R(1'b0), .CK(n$2), .D(D));
  not U$4(n$1, SN);
  and U$5(n$2, G, RN);
endmodule

module TLATNXL(D, GN, Q, QN);
input  D, GN;
output Q, QN;
wire  D, GN, Q, QN, n$1;
  _HDLAT_verplex U$1(.Q(Q), .QN(QN), .S(1'b0), .R(1'b0), .CK(n$1), .D(D));
  not U$4(n$1, GN);
endmodule

module TLATNX4(D, GN, Q, QN);
input  D, GN;
output Q, QN;
wire  D, GN, Q, QN, n$1;
  _HDLAT_verplex U$1(.Q(Q), .QN(QN), .S(1'b0), .R(1'b0), .CK(n$1), .D(D));
  not U$4(n$1, GN);
endmodule

module TLATNX2(D, GN, Q, QN);
input  D, GN;
output Q, QN;
wire  D, GN, Q, QN, n$1;
  _HDLAT_verplex U$1(.Q(Q), .QN(QN), .S(1'b0), .R(1'b0), .CK(n$1), .D(D));
  not U$4(n$1, GN);
endmodule

module TLATNX1(D, GN, Q, QN);
input  D, GN;
output Q, QN;
wire  D, GN, Q, QN, n$1;
  _HDLAT_verplex U$1(.Q(Q), .QN(QN), .S(1'b0), .R(1'b0), .CK(n$1), .D(D));
  not U$4(n$1, GN);
endmodule

module TLATNTSCAX8(CK, E, ECK, SE);
input  CK, E, SE;
output ECK;
wire  \sttb_$U1/udp1/N$2 , \sttb_$U1/udp1/N$1 , ENL, CK, E, ECK, SE;
  or \sttb_$U1/udp1/sttb_ins (\sttb_$U1/udp1/N$2 , SE, E);
  not \sttb_$U1/udp1/sttb_ins$1 (\sttb_$U1/udp1/N$1 , CK);
  _HDLAT_verplex \sttb_$U1/udp1/U$1 (.Q(ENL), .QN( ), .S(1'b0), .R(1'b0), .CK(
    \sttb_$U1/udp1/N$1 ), .D(\sttb_$U1/udp1/N$2 ));
  and U$1(ECK, CK, ENL);
endmodule

module TLATNTSCAX6(CK, E, ECK, SE);
input  CK, E, SE;
output ECK;
wire  \sttb_$U1/udp1/N$2 , \sttb_$U1/udp1/N$1 , ENL, CK, E, ECK, SE;
  or \sttb_$U1/udp1/sttb_ins (\sttb_$U1/udp1/N$2 , SE, E);
  not \sttb_$U1/udp1/sttb_ins$1 (\sttb_$U1/udp1/N$1 , CK);
  _HDLAT_verplex \sttb_$U1/udp1/U$1 (.Q(ENL), .QN( ), .S(1'b0), .R(1'b0), .CK(
    \sttb_$U1/udp1/N$1 ), .D(\sttb_$U1/udp1/N$2 ));
  and U$1(ECK, CK, ENL);
endmodule

module TLATNTSCAX4(CK, E, ECK, SE);
input  CK, E, SE;
output ECK;
wire  \sttb_$U1/udp1/N$2 , \sttb_$U1/udp1/N$1 , ENL, CK, E, ECK, SE;
  or \sttb_$U1/udp1/sttb_ins (\sttb_$U1/udp1/N$2 , SE, E);
  not \sttb_$U1/udp1/sttb_ins$1 (\sttb_$U1/udp1/N$1 , CK);
  _HDLAT_verplex \sttb_$U1/udp1/U$1 (.Q(ENL), .QN( ), .S(1'b0), .R(1'b0), .CK(
    \sttb_$U1/udp1/N$1 ), .D(\sttb_$U1/udp1/N$2 ));
  and U$1(ECK, CK, ENL);
endmodule

module TLATNTSCAX3(CK, E, ECK, SE);
input  CK, E, SE;
output ECK;
wire  \sttb_$U1/udp1/N$2 , \sttb_$U1/udp1/N$1 , ENL, CK, E, ECK, SE;
  or \sttb_$U1/udp1/sttb_ins (\sttb_$U1/udp1/N$2 , SE, E);
  not \sttb_$U1/udp1/sttb_ins$1 (\sttb_$U1/udp1/N$1 , CK);
  _HDLAT_verplex \sttb_$U1/udp1/U$1 (.Q(ENL), .QN( ), .S(1'b0), .R(1'b0), .CK(
    \sttb_$U1/udp1/N$1 ), .D(\sttb_$U1/udp1/N$2 ));
  and U$1(ECK, CK, ENL);
endmodule

module TLATNTSCAX20(CK, E, ECK, SE);
input  CK, E, SE;
output ECK;
wire  \sttb_$U1/udp1/N$2 , \sttb_$U1/udp1/N$1 , ENL, CK, E, ECK, SE;
  or \sttb_$U1/udp1/sttb_ins (\sttb_$U1/udp1/N$2 , SE, E);
  not \sttb_$U1/udp1/sttb_ins$1 (\sttb_$U1/udp1/N$1 , CK);
  _HDLAT_verplex \sttb_$U1/udp1/U$1 (.Q(ENL), .QN( ), .S(1'b0), .R(1'b0), .CK(
    \sttb_$U1/udp1/N$1 ), .D(\sttb_$U1/udp1/N$2 ));
  and U$1(ECK, CK, ENL);
endmodule

module TLATNTSCAX2(CK, E, ECK, SE);
input  CK, E, SE;
output ECK;
wire  \sttb_$U1/udp1/N$2 , \sttb_$U1/udp1/N$1 , ENL, CK, E, ECK, SE;
  or \sttb_$U1/udp1/sttb_ins (\sttb_$U1/udp1/N$2 , SE, E);
  not \sttb_$U1/udp1/sttb_ins$1 (\sttb_$U1/udp1/N$1 , CK);
  _HDLAT_verplex \sttb_$U1/udp1/U$1 (.Q(ENL), .QN( ), .S(1'b0), .R(1'b0), .CK(
    \sttb_$U1/udp1/N$1 ), .D(\sttb_$U1/udp1/N$2 ));
  and U$1(ECK, CK, ENL);
endmodule

module TLATNTSCAX16(CK, E, ECK, SE);
input  CK, E, SE;
output ECK;
wire  \sttb_$U1/udp1/N$2 , \sttb_$U1/udp1/N$1 , ENL, CK, E, ECK, SE;
  or \sttb_$U1/udp1/sttb_ins (\sttb_$U1/udp1/N$2 , SE, E);
  not \sttb_$U1/udp1/sttb_ins$1 (\sttb_$U1/udp1/N$1 , CK);
  _HDLAT_verplex \sttb_$U1/udp1/U$1 (.Q(ENL), .QN( ), .S(1'b0), .R(1'b0), .CK(
    \sttb_$U1/udp1/N$1 ), .D(\sttb_$U1/udp1/N$2 ));
  and U$1(ECK, CK, ENL);
endmodule

module TLATNTSCAX12(CK, E, ECK, SE);
input  CK, E, SE;
output ECK;
wire  \sttb_$U1/udp1/N$2 , \sttb_$U1/udp1/N$1 , ENL, CK, E, ECK, SE;
  or \sttb_$U1/udp1/sttb_ins (\sttb_$U1/udp1/N$2 , SE, E);
  not \sttb_$U1/udp1/sttb_ins$1 (\sttb_$U1/udp1/N$1 , CK);
  _HDLAT_verplex \sttb_$U1/udp1/U$1 (.Q(ENL), .QN( ), .S(1'b0), .R(1'b0), .CK(
    \sttb_$U1/udp1/N$1 ), .D(\sttb_$U1/udp1/N$2 ));
  and U$1(ECK, CK, ENL);
endmodule

module TLATNSRXL(D, GN, Q, QN, RN, SN);
input  D, GN, RN, SN;
output Q, QN;
wire  D, GN, Q, QN, RN, SN, n$1, n$2, n$3;
  _HDLAT_verplex U$1(.Q(Q), .QN(QN), .S(n$1), .R(1'b0), .CK(n$2), .D(D));
  not U$4(n$1, SN);
  and U$5(n$2, n$3, RN);
  not U$6(n$3, GN);
endmodule

module TLATNSRX4(D, GN, Q, QN, RN, SN);
input  D, GN, RN, SN;
output Q, QN;
wire  D, GN, Q, QN, RN, SN, n$1, n$2, n$3;
  _HDLAT_verplex U$1(.Q(Q), .QN(QN), .S(n$1), .R(1'b0), .CK(n$2), .D(D));
  not U$4(n$1, SN);
  and U$5(n$2, n$3, RN);
  not U$6(n$3, GN);
endmodule

module TLATNSRX2(D, GN, Q, QN, RN, SN);
input  D, GN, RN, SN;
output Q, QN;
wire  D, GN, Q, QN, RN, SN, n$1, n$2, n$3;
  _HDLAT_verplex U$1(.Q(Q), .QN(QN), .S(n$1), .R(1'b0), .CK(n$2), .D(D));
  not U$4(n$1, SN);
  and U$5(n$2, n$3, RN);
  not U$6(n$3, GN);
endmodule

module TLATNSRX1(D, GN, Q, QN, RN, SN);
input  D, GN, RN, SN;
output Q, QN;
wire  D, GN, Q, QN, RN, SN, n$1, n$2, n$3;
  _HDLAT_verplex U$1(.Q(Q), .QN(QN), .S(n$1), .R(1'b0), .CK(n$2), .D(D));
  not U$4(n$1, SN);
  and U$5(n$2, n$3, RN);
  not U$6(n$3, GN);
endmodule

module TLATNCAX8(CK, E, ECK);
input  CK, E;
output ECK;
wire  \sttb_$U1/udp1/N$1 , ENL, CK, E, ECK;
  not \sttb_$U1/udp1/sttb_ins (\sttb_$U1/udp1/N$1 , CK);
  _HDLAT_verplex \sttb_$U1/udp1/U$1 (.Q(ENL), .QN( ), .S(1'b0), .R(1'b0), .CK(
    \sttb_$U1/udp1/N$1 ), .D(E));
  and U$1(ECK, CK, ENL);
endmodule

module TLATNCAX6(CK, E, ECK);
input  CK, E;
output ECK;
wire  \sttb_$U1/udp1/N$1 , ENL, CK, E, ECK;
  not \sttb_$U1/udp1/sttb_ins (\sttb_$U1/udp1/N$1 , CK);
  _HDLAT_verplex \sttb_$U1/udp1/U$1 (.Q(ENL), .QN( ), .S(1'b0), .R(1'b0), .CK(
    \sttb_$U1/udp1/N$1 ), .D(E));
  and U$1(ECK, CK, ENL);
endmodule

module TLATNCAX4(CK, E, ECK);
input  CK, E;
output ECK;
wire  \sttb_$U1/udp1/N$1 , ENL, CK, E, ECK;
  not \sttb_$U1/udp1/sttb_ins (\sttb_$U1/udp1/N$1 , CK);
  _HDLAT_verplex \sttb_$U1/udp1/U$1 (.Q(ENL), .QN( ), .S(1'b0), .R(1'b0), .CK(
    \sttb_$U1/udp1/N$1 ), .D(E));
  and U$1(ECK, CK, ENL);
endmodule

module TLATNCAX3(CK, E, ECK);
input  CK, E;
output ECK;
wire  \sttb_$U1/udp1/N$1 , ENL, CK, E, ECK;
  not \sttb_$U1/udp1/sttb_ins (\sttb_$U1/udp1/N$1 , CK);
  _HDLAT_verplex \sttb_$U1/udp1/U$1 (.Q(ENL), .QN( ), .S(1'b0), .R(1'b0), .CK(
    \sttb_$U1/udp1/N$1 ), .D(E));
  and U$1(ECK, CK, ENL);
endmodule

module TLATNCAX20(CK, E, ECK);
input  CK, E;
output ECK;
wire  \sttb_$U1/udp1/N$1 , ENL, CK, E, ECK;
  not \sttb_$U1/udp1/sttb_ins (\sttb_$U1/udp1/N$1 , CK);
  _HDLAT_verplex \sttb_$U1/udp1/U$1 (.Q(ENL), .QN( ), .S(1'b0), .R(1'b0), .CK(
    \sttb_$U1/udp1/N$1 ), .D(E));
  and U$1(ECK, CK, ENL);
endmodule

module TLATNCAX2(CK, E, ECK);
input  CK, E;
output ECK;
wire  \sttb_$U1/udp1/N$1 , ENL, CK, E, ECK;
  not \sttb_$U1/udp1/sttb_ins (\sttb_$U1/udp1/N$1 , CK);
  _HDLAT_verplex \sttb_$U1/udp1/U$1 (.Q(ENL), .QN( ), .S(1'b0), .R(1'b0), .CK(
    \sttb_$U1/udp1/N$1 ), .D(E));
  and U$1(ECK, CK, ENL);
endmodule

module TLATNCAX16(CK, E, ECK);
input  CK, E;
output ECK;
wire  \sttb_$U1/udp1/N$1 , ENL, CK, E, ECK;
  not \sttb_$U1/udp1/sttb_ins (\sttb_$U1/udp1/N$1 , CK);
  _HDLAT_verplex \sttb_$U1/udp1/U$1 (.Q(ENL), .QN( ), .S(1'b0), .R(1'b0), .CK(
    \sttb_$U1/udp1/N$1 ), .D(E));
  and U$1(ECK, CK, ENL);
endmodule

module TLATNCAX12(CK, E, ECK);
input  CK, E;
output ECK;
wire  \sttb_$U1/udp1/N$1 , ENL, CK, E, ECK;
  not \sttb_$U1/udp1/sttb_ins (\sttb_$U1/udp1/N$1 , CK);
  _HDLAT_verplex \sttb_$U1/udp1/U$1 (.Q(ENL), .QN( ), .S(1'b0), .R(1'b0), .CK(
    \sttb_$U1/udp1/N$1 ), .D(E));
  and U$1(ECK, CK, ENL);
endmodule

module TIELO(Y);
output Y;
wire  Y;
  (* tie0 *) assign Y = 1'b0;
endmodule

module TIEHI(Y);
output Y;
wire  Y;
  (* tie1 *) assign Y = 1'b1;
endmodule

module TBUFXL(A, OE, Y);
input  A, OE;
output Y;
wire  A, OE, Y;
  bufif1 U$1(Y, A, OE);
endmodule

module TBUFX8(A, OE, Y);
input  A, OE;
output Y;
wire  A, OE, Y;
  bufif1 U$1(Y, A, OE);
endmodule

module TBUFX6(A, OE, Y);
input  A, OE;
output Y;
wire  A, OE, Y;
  bufif1 U$1(Y, A, OE);
endmodule

module TBUFX4(A, OE, Y);
input  A, OE;
output Y;
wire  A, OE, Y;
  bufif1 U$1(Y, A, OE);
endmodule

module TBUFX3(A, OE, Y);
input  A, OE;
output Y;
wire  A, OE, Y;
  bufif1 U$1(Y, A, OE);
endmodule

module TBUFX20(A, OE, Y);
input  A, OE;
output Y;
wire  A, OE, Y;
  bufif1 U$1(Y, A, OE);
endmodule

module TBUFX2(A, OE, Y);
input  A, OE;
output Y;
wire  A, OE, Y;
  bufif1 U$1(Y, A, OE);
endmodule

module TBUFX16(A, OE, Y);
input  A, OE;
output Y;
wire  A, OE, Y;
  bufif1 U$1(Y, A, OE);
endmodule

module TBUFX12(A, OE, Y);
input  A, OE;
output Y;
wire  A, OE, Y;
  bufif1 U$1(Y, A, OE);
endmodule

module TBUFX1(A, OE, Y);
input  A, OE;
output Y;
wire  A, OE, Y;
  bufif1 U$1(Y, A, OE);
endmodule

module SMDFFHQX8(CK, D0, D1, Q, S0, SE, SI);
input  CK, D0, D1, S0, SE, SI;
output Q;
wire  QBINT_30, CK, D0, D1, Q, S0, SE, SI, n$1, n$2, n$3, n$4, n$5, n$6, n$7, 
    n$8;
  _HDFF_verplex U$1(.Q(Q), .QN(QBINT_30), .S(1'b0), .R(1'b0), .CK(CK), .D(n$1));
  or U$3(n$1, n$2, n$3);
  and U$4(n$2, SE, SI);
  and U$5(n$3, n$4, n$5);
  not U$6(n$4, SE);
  or U$7(n$5, n$6, n$7);
  and U$8(n$6, S0, D1);
  and U$9(n$7, n$8, D0);
  not U$10(n$8, S0);
endmodule

module SMDFFHQX4(CK, D0, D1, Q, S0, SE, SI);
input  CK, D0, D1, S0, SE, SI;
output Q;
wire  QBINT_21, CK, D0, D1, Q, S0, SE, SI, n$1, n$2, n$3, n$4, n$5, n$6, n$7, 
    n$8;
  _HDFF_verplex U$1(.Q(Q), .QN(QBINT_21), .S(1'b0), .R(1'b0), .CK(CK), .D(n$1));
  or U$3(n$1, n$2, n$3);
  and U$4(n$2, SE, SI);
  and U$5(n$3, n$4, n$5);
  not U$6(n$4, SE);
  or U$7(n$5, n$6, n$7);
  and U$8(n$6, S0, D1);
  and U$9(n$7, n$8, D0);
  not U$10(n$8, S0);
endmodule

module SMDFFHQX2(CK, D0, D1, Q, S0, SE, SI);
input  CK, D0, D1, S0, SE, SI;
output Q;
wire  QBINT_3, CK, D0, D1, Q, S0, SE, SI, n$1, n$2, n$3, n$4, n$5, n$6, n$7, n$8;
  _HDFF_verplex U$1(.Q(Q), .QN(QBINT_3), .S(1'b0), .R(1'b0), .CK(CK), .D(n$1));
  or U$3(n$1, n$2, n$3);
  and U$4(n$2, SE, SI);
  and U$5(n$3, n$4, n$5);
  not U$6(n$4, SE);
  or U$7(n$5, n$6, n$7);
  and U$8(n$6, S0, D1);
  and U$9(n$7, n$8, D0);
  not U$10(n$8, S0);
endmodule

module SMDFFHQX1(CK, D0, D1, Q, S0, SE, SI);
input  CK, D0, D1, S0, SE, SI;
output Q;
wire  QBINT_3, CK, D0, D1, Q, S0, SE, SI, n$1, n$2, n$3, n$4, n$5, n$6, n$7, n$8;
  _HDFF_verplex U$1(.Q(Q), .QN(QBINT_3), .S(1'b0), .R(1'b0), .CK(CK), .D(n$1));
  or U$3(n$1, n$2, n$3);
  and U$4(n$2, SE, SI);
  and U$5(n$3, n$4, n$5);
  not U$6(n$4, SE);
  or U$7(n$5, n$6, n$7);
  and U$8(n$6, S0, D1);
  and U$9(n$7, n$8, D0);
  not U$10(n$8, S0);
endmodule

module SEDFFXL(CK, D, E, Q, QN, SE, SI);
input  CK, D, E, SE, SI;
output Q, QN;
wire  CK, D, E, Q, QN, SE, SI, n$1, n$2, n$3, n$4, n$5, n$6, n$7, n$8;
  _HDFF_verplex U$1(.Q(Q), .QN(QN), .S(1'b0), .R(1'b0), .CK(CK), .D(n$1));
  or U$4(n$1, n$2, n$3);
  and U$5(n$2, SE, SI);
  and U$6(n$3, n$4, n$5);
  not U$7(n$4, SE);
  or U$8(n$5, n$6, n$7);
  and U$9(n$6, E, D);
  and U$10(n$7, n$8, Q);
  not U$11(n$8, E);
endmodule

module SEDFFX4(CK, D, E, Q, QN, SE, SI);
input  CK, D, E, SE, SI;
output Q, QN;
wire  CK, D, E, Q, QN, SE, SI, n$1, n$2, n$3, n$4, n$5, n$6, n$7, n$8;
  _HDFF_verplex U$1(.Q(Q), .QN(QN), .S(1'b0), .R(1'b0), .CK(CK), .D(n$1));
  or U$4(n$1, n$2, n$3);
  and U$5(n$2, SE, SI);
  and U$6(n$3, n$4, n$5);
  not U$7(n$4, SE);
  or U$8(n$5, n$6, n$7);
  and U$9(n$6, E, D);
  and U$10(n$7, n$8, Q);
  not U$11(n$8, E);
endmodule

module SEDFFX2(CK, D, E, Q, QN, SE, SI);
input  CK, D, E, SE, SI;
output Q, QN;
wire  CK, D, E, Q, QN, SE, SI, n$1, n$2, n$3, n$4, n$5, n$6, n$7, n$8;
  _HDFF_verplex U$1(.Q(Q), .QN(QN), .S(1'b0), .R(1'b0), .CK(CK), .D(n$1));
  or U$4(n$1, n$2, n$3);
  and U$5(n$2, SE, SI);
  and U$6(n$3, n$4, n$5);
  not U$7(n$4, SE);
  or U$8(n$5, n$6, n$7);
  and U$9(n$6, E, D);
  and U$10(n$7, n$8, Q);
  not U$11(n$8, E);
endmodule

module SEDFFX1(CK, D, E, Q, QN, SE, SI);
input  CK, D, E, SE, SI;
output Q, QN;
wire  CK, D, E, Q, QN, SE, SI, n$1, n$2, n$3, n$4, n$5, n$6, n$7, n$8;
  _HDFF_verplex U$1(.Q(Q), .QN(QN), .S(1'b0), .R(1'b0), .CK(CK), .D(n$1));
  or U$4(n$1, n$2, n$3);
  and U$5(n$2, SE, SI);
  and U$6(n$3, n$4, n$5);
  not U$7(n$4, SE);
  or U$8(n$5, n$6, n$7);
  and U$9(n$6, E, D);
  and U$10(n$7, n$8, Q);
  not U$11(n$8, E);
endmodule

module SEDFFTRXL(CK, D, E, Q, QN, RN, SE, SI);
input  CK, D, E, RN, SE, SI;
output Q, QN;
wire  CK, D, E, Q, QN, RN, SE, SI, n$1, n$2, n$3, n$4, n$5, n$6, n$7;
  _HDFF_verplex U$1(.Q(Q), .QN(QN), .S(1'b0), .R(1'b0), .CK(CK), .D(n$1));
  or U$4(n$1, n$2, n$3);
  and U$5(n$2, SE, SI);
  and U$6(n$3, n$4, n$5, n$7, RN);
  not U$7(n$4, SE);
  or U$8(n$5, D, n$6);
  not U$9(n$6, E);
  or U$10(n$7, E, Q);
endmodule

module SEDFFTRX4(CK, D, E, Q, QN, RN, SE, SI);
input  CK, D, E, RN, SE, SI;
output Q, QN;
wire  CK, D, E, Q, QN, RN, SE, SI, n$1, n$2, n$3, n$4, n$5, n$6, n$7;
  _HDFF_verplex U$1(.Q(Q), .QN(QN), .S(1'b0), .R(1'b0), .CK(CK), .D(n$1));
  or U$4(n$1, n$2, n$3);
  and U$5(n$2, SE, SI);
  and U$6(n$3, n$4, n$5, n$7, RN);
  not U$7(n$4, SE);
  or U$8(n$5, D, n$6);
  not U$9(n$6, E);
  or U$10(n$7, E, Q);
endmodule

module SEDFFTRX2(CK, D, E, Q, QN, RN, SE, SI);
input  CK, D, E, RN, SE, SI;
output Q, QN;
wire  CK, D, E, Q, QN, RN, SE, SI, n$1, n$2, n$3, n$4, n$5, n$6, n$7;
  _HDFF_verplex U$1(.Q(Q), .QN(QN), .S(1'b0), .R(1'b0), .CK(CK), .D(n$1));
  or U$4(n$1, n$2, n$3);
  and U$5(n$2, SE, SI);
  and U$6(n$3, n$4, n$5, n$7, RN);
  not U$7(n$4, SE);
  or U$8(n$5, D, n$6);
  not U$9(n$6, E);
  or U$10(n$7, E, Q);
endmodule

module SEDFFTRX1(CK, D, E, Q, QN, RN, SE, SI);
input  CK, D, E, RN, SE, SI;
output Q, QN;
wire  CK, D, E, Q, QN, RN, SE, SI, n$1, n$2, n$3, n$4, n$5, n$6, n$7;
  _HDFF_verplex U$1(.Q(Q), .QN(QN), .S(1'b0), .R(1'b0), .CK(CK), .D(n$1));
  or U$4(n$1, n$2, n$3);
  and U$5(n$2, SE, SI);
  and U$6(n$3, n$4, n$5, n$7, RN);
  not U$7(n$4, SE);
  or U$8(n$5, D, n$6);
  not U$9(n$6, E);
  or U$10(n$7, E, Q);
endmodule

module SEDFFHQX8(CK, D, E, Q, SE, SI);
input  CK, D, E, SE, SI;
output Q;
wire  QBINT_38, CK, D, E, Q, SE, SI, n$1, n$2, n$3, n$4, n$5, n$6, n$7, n$8;
  _HDFF_verplex U$1(.Q(Q), .QN(QBINT_38), .S(1'b0), .R(1'b0), .CK(CK), .D(n$1));
  or U$3(n$1, n$2, n$3);
  and U$4(n$2, SE, SI);
  and U$5(n$3, n$4, n$5);
  not U$6(n$4, SE);
  or U$7(n$5, n$6, n$7);
  and U$8(n$6, E, D);
  and U$9(n$7, n$8, Q);
  not U$10(n$8, E);
endmodule

module SEDFFHQX4(CK, D, E, Q, SE, SI);
input  CK, D, E, SE, SI;
output Q;
wire  QBINT_23, CK, D, E, Q, SE, SI, n$1, n$2, n$3, n$4, n$5, n$6, n$7, n$8;
  _HDFF_verplex U$1(.Q(Q), .QN(QBINT_23), .S(1'b0), .R(1'b0), .CK(CK), .D(n$1));
  or U$3(n$1, n$2, n$3);
  and U$4(n$2, SE, SI);
  and U$5(n$3, n$4, n$5);
  not U$6(n$4, SE);
  or U$7(n$5, n$6, n$7);
  and U$8(n$6, E, D);
  and U$9(n$7, n$8, Q);
  not U$10(n$8, E);
endmodule

module SEDFFHQX2(CK, D, E, Q, SE, SI);
input  CK, D, E, SE, SI;
output Q;
wire  QBINT_17, CK, D, E, Q, SE, SI, n$1, n$2, n$3, n$4, n$5, n$6, n$7, n$8;
  _HDFF_verplex U$1(.Q(Q), .QN(QBINT_17), .S(1'b0), .R(1'b0), .CK(CK), .D(n$1));
  or U$3(n$1, n$2, n$3);
  and U$4(n$2, SE, SI);
  and U$5(n$3, n$4, n$5);
  not U$6(n$4, SE);
  or U$7(n$5, n$6, n$7);
  and U$8(n$6, E, D);
  and U$9(n$7, n$8, Q);
  not U$10(n$8, E);
endmodule

module SEDFFHQX1(CK, D, E, Q, SE, SI);
input  CK, D, E, SE, SI;
output Q;
wire  QBINT_10, CK, D, E, Q, SE, SI, n$1, n$2, n$3, n$4, n$5, n$6, n$7, n$8;
  _HDFF_verplex U$1(.Q(Q), .QN(QBINT_10), .S(1'b0), .R(1'b0), .CK(CK), .D(n$1));
  or U$3(n$1, n$2, n$3);
  and U$4(n$2, SE, SI);
  and U$5(n$3, n$4, n$5);
  not U$6(n$4, SE);
  or U$7(n$5, n$6, n$7);
  and U$8(n$6, E, D);
  and U$9(n$7, n$8, Q);
  not U$10(n$8, E);
endmodule

module SDFFXL(CK, D, Q, QN, SE, SI);
input  CK, D, SE, SI;
output Q, QN;
wire  CK, D, Q, QN, SE, SI, n$1, n$2, n$3, n$4;
  _HDFF_verplex U$1(.Q(Q), .QN(QN), .S(1'b0), .R(1'b0), .CK(CK), .D(n$1));
  or U$4(n$1, n$2, n$3);
  and U$5(n$2, SE, SI);
  and U$6(n$3, n$4, D);
  not U$7(n$4, SE);
endmodule

module SDFFX4(CK, D, Q, QN, SE, SI);
input  CK, D, SE, SI;
output Q, QN;
wire  CK, D, Q, QN, SE, SI, n$1, n$2, n$3, n$4;
  _HDFF_verplex U$1(.Q(Q), .QN(QN), .S(1'b0), .R(1'b0), .CK(CK), .D(n$1));
  or U$4(n$1, n$2, n$3);
  and U$5(n$2, SE, SI);
  and U$6(n$3, n$4, D);
  not U$7(n$4, SE);
endmodule

module SDFFX2(CK, D, Q, QN, SE, SI);
input  CK, D, SE, SI;
output Q, QN;
wire  CK, D, Q, QN, SE, SI, n$1, n$2, n$3, n$4;
  _HDFF_verplex U$1(.Q(Q), .QN(QN), .S(1'b0), .R(1'b0), .CK(CK), .D(n$1));
  or U$4(n$1, n$2, n$3);
  and U$5(n$2, SE, SI);
  and U$6(n$3, n$4, D);
  not U$7(n$4, SE);
endmodule

module SDFFX1(CK, D, Q, QN, SE, SI);
input  CK, D, SE, SI;
output Q, QN;
wire  CK, D, Q, QN, SE, SI, n$1, n$2, n$3, n$4;
  _HDFF_verplex U$1(.Q(Q), .QN(QN), .S(1'b0), .R(1'b0), .CK(CK), .D(n$1));
  or U$4(n$1, n$2, n$3);
  and U$5(n$2, SE, SI);
  and U$6(n$3, n$4, D);
  not U$7(n$4, SE);
endmodule

module SDFFTRXL(CK, D, Q, QN, RN, SE, SI);
input  CK, D, RN, SE, SI;
output Q, QN;
wire  CK, D, Q, QN, RN, SE, SI, n$1, n$2, n$3, n$4;
  _HDFF_verplex U$1(.Q(Q), .QN(QN), .S(1'b0), .R(1'b0), .CK(CK), .D(n$1));
  or U$4(n$1, n$2, n$3);
  and U$5(n$2, SE, SI);
  and U$6(n$3, n$4, D, RN);
  not U$7(n$4, SE);
endmodule

module SDFFTRX4(CK, D, Q, QN, RN, SE, SI);
input  CK, D, RN, SE, SI;
output Q, QN;
wire  CK, D, Q, QN, RN, SE, SI, n$1, n$2, n$3, n$4;
  _HDFF_verplex U$1(.Q(Q), .QN(QN), .S(1'b0), .R(1'b0), .CK(CK), .D(n$1));
  or U$4(n$1, n$2, n$3);
  and U$5(n$2, SE, SI);
  and U$6(n$3, n$4, D, RN);
  not U$7(n$4, SE);
endmodule

module SDFFTRX2(CK, D, Q, QN, RN, SE, SI);
input  CK, D, RN, SE, SI;
output Q, QN;
wire  CK, D, Q, QN, RN, SE, SI, n$1, n$2, n$3, n$4;
  _HDFF_verplex U$1(.Q(Q), .QN(QN), .S(1'b0), .R(1'b0), .CK(CK), .D(n$1));
  or U$4(n$1, n$2, n$3);
  and U$5(n$2, SE, SI);
  and U$6(n$3, n$4, D, RN);
  not U$7(n$4, SE);
endmodule

module SDFFTRX1(CK, D, Q, QN, RN, SE, SI);
input  CK, D, RN, SE, SI;
output Q, QN;
wire  CK, D, Q, QN, RN, SE, SI, n$1, n$2, n$3, n$4;
  _HDFF_verplex U$1(.Q(Q), .QN(QN), .S(1'b0), .R(1'b0), .CK(CK), .D(n$1));
  or U$4(n$1, n$2, n$3);
  and U$5(n$2, SE, SI);
  and U$6(n$3, n$4, D, RN);
  not U$7(n$4, SE);
endmodule

module SDFFSXL(CK, D, Q, QN, SE, SI, SN);
input  CK, D, SE, SI, SN;
output Q, QN;
wire  CK, D, Q, QN, SE, SI, SN, n$1, n$2, n$3, n$4, n$5;
  _HDFF_verplex U$1(.Q(Q), .QN(QN), .S(n$1), .R(1'b0), .CK(CK), .D(n$2));
  not U$4(n$1, SN);
  or U$5(n$2, n$3, n$4);
  and U$6(n$3, SE, SI);
  and U$7(n$4, n$5, D);
  not U$8(n$5, SE);
endmodule

module SDFFSX4(CK, D, Q, QN, SE, SI, SN);
input  CK, D, SE, SI, SN;
output Q, QN;
wire  CK, D, Q, QN, SE, SI, SN, n$1, n$2, n$3, n$4, n$5;
  _HDFF_verplex U$1(.Q(Q), .QN(QN), .S(n$1), .R(1'b0), .CK(CK), .D(n$2));
  not U$4(n$1, SN);
  or U$5(n$2, n$3, n$4);
  and U$6(n$3, SE, SI);
  and U$7(n$4, n$5, D);
  not U$8(n$5, SE);
endmodule

module SDFFSX2(CK, D, Q, QN, SE, SI, SN);
input  CK, D, SE, SI, SN;
output Q, QN;
wire  CK, D, Q, QN, SE, SI, SN, n$1, n$2, n$3, n$4, n$5;
  _HDFF_verplex U$1(.Q(Q), .QN(QN), .S(n$1), .R(1'b0), .CK(CK), .D(n$2));
  not U$4(n$1, SN);
  or U$5(n$2, n$3, n$4);
  and U$6(n$3, SE, SI);
  and U$7(n$4, n$5, D);
  not U$8(n$5, SE);
endmodule

module SDFFSX1(CK, D, Q, QN, SE, SI, SN);
input  CK, D, SE, SI, SN;
output Q, QN;
wire  CK, D, Q, QN, SE, SI, SN, n$1, n$2, n$3, n$4, n$5;
  _HDFF_verplex U$1(.Q(Q), .QN(QN), .S(n$1), .R(1'b0), .CK(CK), .D(n$2));
  not U$4(n$1, SN);
  or U$5(n$2, n$3, n$4);
  and U$6(n$3, SE, SI);
  and U$7(n$4, n$5, D);
  not U$8(n$5, SE);
endmodule

module SDFFSRXL(CK, D, Q, QN, RN, SE, SI, SN);
input  CK, D, RN, SE, SI, SN;
output Q, QN;
wire  CK, D, Q, QN, RN, SE, SI, SN, n$1, n$2, n$3, n$4, n$5, n$6, n$7, n$8;
  _HDFF_verplex U$1(.Q(Q), .QN(QN), .S(n$1), .R(n$8), .CK(CK), .D(n$3));
  not U$4(n$1, SN);
  not U$5(n$2, RN);
  or U$6(n$3, n$4, n$5);
  and U$7(n$4, SE, SI);
  and U$8(n$5, n$6, D);
  not U$9(n$6, SE);
  not U$10(n$7, n$1);
  and U$11(n$8, n$7, n$2);
endmodule

module SDFFSRX4(CK, D, Q, QN, RN, SE, SI, SN);
input  CK, D, RN, SE, SI, SN;
output Q, QN;
wire  CK, D, Q, QN, RN, SE, SI, SN, n$1, n$2, n$3, n$4, n$5, n$6, n$7, n$8;
  _HDFF_verplex U$1(.Q(Q), .QN(QN), .S(n$1), .R(n$8), .CK(CK), .D(n$3));
  not U$4(n$1, SN);
  not U$5(n$2, RN);
  or U$6(n$3, n$4, n$5);
  and U$7(n$4, SE, SI);
  and U$8(n$5, n$6, D);
  not U$9(n$6, SE);
  not U$10(n$7, n$1);
  and U$11(n$8, n$7, n$2);
endmodule

module SDFFSRX2(CK, D, Q, QN, RN, SE, SI, SN);
input  CK, D, RN, SE, SI, SN;
output Q, QN;
wire  CK, D, Q, QN, RN, SE, SI, SN, n$1, n$2, n$3, n$4, n$5, n$6, n$7, n$8;
  _HDFF_verplex U$1(.Q(Q), .QN(QN), .S(n$1), .R(n$8), .CK(CK), .D(n$3));
  not U$4(n$1, SN);
  not U$5(n$2, RN);
  or U$6(n$3, n$4, n$5);
  and U$7(n$4, SE, SI);
  and U$8(n$5, n$6, D);
  not U$9(n$6, SE);
  not U$10(n$7, n$1);
  and U$11(n$8, n$7, n$2);
endmodule

module SDFFSRX1(CK, D, Q, QN, RN, SE, SI, SN);
input  CK, D, RN, SE, SI, SN;
output Q, QN;
wire  CK, D, Q, QN, RN, SE, SI, SN, n$1, n$2, n$3, n$4, n$5, n$6, n$7, n$8;
  _HDFF_verplex U$1(.Q(Q), .QN(QN), .S(n$1), .R(n$8), .CK(CK), .D(n$3));
  not U$4(n$1, SN);
  not U$5(n$2, RN);
  or U$6(n$3, n$4, n$5);
  and U$7(n$4, SE, SI);
  and U$8(n$5, n$6, D);
  not U$9(n$6, SE);
  not U$10(n$7, n$1);
  and U$11(n$8, n$7, n$2);
endmodule

module SDFFSRHQX8(CK, D, Q, RN, SE, SI, SN);
input  CK, D, RN, SE, SI, SN;
output Q;
wire  QBINT_28, CK, D, Q, RN, SE, SI, SN, n$1, n$2, n$3, n$4, n$5, n$6, n$7, n$8;
  _HDFF_verplex U$1(.Q(Q), .QN(QBINT_28), .S(n$1), .R(n$8), .CK(CK), .D(n$3));
  not U$3(n$1, SN);
  not U$4(n$2, RN);
  or U$5(n$3, n$4, n$5);
  and U$6(n$4, SE, SI);
  and U$7(n$5, n$6, D);
  not U$8(n$6, SE);
  not U$9(n$7, n$1);
  and U$10(n$8, n$7, n$2);
endmodule

module SDFFSRHQX4(CK, D, Q, RN, SE, SI, SN);
input  CK, D, RN, SE, SI, SN;
output Q;
wire  QBINT_18, CK, D, Q, RN, SE, SI, SN, n$1, n$2, n$3, n$4, n$5, n$6, n$7, n$8;
  _HDFF_verplex U$1(.Q(Q), .QN(QBINT_18), .S(n$1), .R(n$8), .CK(CK), .D(n$3));
  not U$3(n$1, SN);
  not U$4(n$2, RN);
  or U$5(n$3, n$4, n$5);
  and U$6(n$4, SE, SI);
  and U$7(n$5, n$6, D);
  not U$8(n$6, SE);
  not U$9(n$7, n$1);
  and U$10(n$8, n$7, n$2);
endmodule

module SDFFSRHQX2(CK, D, Q, RN, SE, SI, SN);
input  CK, D, RN, SE, SI, SN;
output Q;
wire  QBINT_4, CK, D, Q, RN, SE, SI, SN, n$1, n$2, n$3, n$4, n$5, n$6, n$7, n$8;
  _HDFF_verplex U$1(.Q(Q), .QN(QBINT_4), .S(n$1), .R(n$8), .CK(CK), .D(n$3));
  not U$3(n$1, SN);
  not U$4(n$2, RN);
  or U$5(n$3, n$4, n$5);
  and U$6(n$4, SE, SI);
  and U$7(n$5, n$6, D);
  not U$8(n$6, SE);
  not U$9(n$7, n$1);
  and U$10(n$8, n$7, n$2);
endmodule

module SDFFSRHQX1(CK, D, Q, RN, SE, SI, SN);
input  CK, D, RN, SE, SI, SN;
output Q;
wire  QBINT, CK, D, Q, RN, SE, SI, SN, n$1, n$2, n$3, n$4, n$5, n$6, n$7, n$8;
  _HDFF_verplex U$1(.Q(Q), .QN(QBINT), .S(n$1), .R(n$8), .CK(CK), .D(n$3));
  not U$3(n$1, SN);
  not U$4(n$2, RN);
  or U$5(n$3, n$4, n$5);
  and U$6(n$4, SE, SI);
  and U$7(n$5, n$6, D);
  not U$8(n$6, SE);
  not U$9(n$7, n$1);
  and U$10(n$8, n$7, n$2);
endmodule

module SDFFSHQX8(CK, D, Q, SE, SI, SN);
input  CK, D, SE, SI, SN;
output Q;
wire  QBINT_26, CK, D, Q, SE, SI, SN, n$1, n$2, n$3, n$4, n$5;
  _HDFF_verplex U$1(.Q(Q), .QN(QBINT_26), .S(n$1), .R(1'b0), .CK(CK), .D(n$2));
  not U$3(n$1, SN);
  or U$4(n$2, n$3, n$4);
  and U$5(n$3, SE, SI);
  and U$6(n$4, n$5, D);
  not U$7(n$5, SE);
endmodule

module SDFFSHQX4(CK, D, Q, SE, SI, SN);
input  CK, D, SE, SI, SN;
output Q;
wire  QBINT_6, CK, D, Q, SE, SI, SN, n$1, n$2, n$3, n$4, n$5;
  _HDFF_verplex U$1(.Q(Q), .QN(QBINT_6), .S(n$1), .R(1'b0), .CK(CK), .D(n$2));
  not U$3(n$1, SN);
  or U$4(n$2, n$3, n$4);
  and U$5(n$3, SE, SI);
  and U$6(n$4, n$5, D);
  not U$7(n$5, SE);
endmodule

module SDFFSHQX2(CK, D, Q, SE, SI, SN);
input  CK, D, SE, SI, SN;
output Q;
wire  QBINT_4, CK, D, Q, SE, SI, SN, n$1, n$2, n$3, n$4, n$5;
  _HDFF_verplex U$1(.Q(Q), .QN(QBINT_4), .S(n$1), .R(1'b0), .CK(CK), .D(n$2));
  not U$3(n$1, SN);
  or U$4(n$2, n$3, n$4);
  and U$5(n$3, SE, SI);
  and U$6(n$4, n$5, D);
  not U$7(n$5, SE);
endmodule

module SDFFSHQX1(CK, D, Q, SE, SI, SN);
input  CK, D, SE, SI, SN;
output Q;
wire  QBINT_3, CK, D, Q, SE, SI, SN, n$1, n$2, n$3, n$4, n$5;
  _HDFF_verplex U$1(.Q(Q), .QN(QBINT_3), .S(n$1), .R(1'b0), .CK(CK), .D(n$2));
  not U$3(n$1, SN);
  or U$4(n$2, n$3, n$4);
  and U$5(n$3, SE, SI);
  and U$6(n$4, n$5, D);
  not U$7(n$5, SE);
endmodule

module SDFFRXL(CK, D, Q, QN, RN, SE, SI);
input  CK, D, RN, SE, SI;
output Q, QN;
wire  CK, D, Q, QN, RN, SE, SI, n$1, n$2, n$3, n$4, n$5;
  _HDFF_verplex U$1(.Q(Q), .QN(QN), .S(1'b0), .R(n$1), .CK(CK), .D(n$2));
  not U$4(n$1, RN);
  or U$5(n$2, n$3, n$4);
  and U$6(n$3, SE, SI);
  and U$7(n$4, n$5, D);
  not U$8(n$5, SE);
endmodule

module SDFFRX4(CK, D, Q, QN, RN, SE, SI);
input  CK, D, RN, SE, SI;
output Q, QN;
wire  CK, D, Q, QN, RN, SE, SI, n$1, n$2, n$3, n$4, n$5;
  _HDFF_verplex U$1(.Q(Q), .QN(QN), .S(1'b0), .R(n$1), .CK(CK), .D(n$2));
  not U$4(n$1, RN);
  or U$5(n$2, n$3, n$4);
  and U$6(n$3, SE, SI);
  and U$7(n$4, n$5, D);
  not U$8(n$5, SE);
endmodule

module SDFFRX2(CK, D, Q, QN, RN, SE, SI);
input  CK, D, RN, SE, SI;
output Q, QN;
wire  CK, D, Q, QN, RN, SE, SI, n$1, n$2, n$3, n$4, n$5;
  _HDFF_verplex U$1(.Q(Q), .QN(QN), .S(1'b0), .R(n$1), .CK(CK), .D(n$2));
  not U$4(n$1, RN);
  or U$5(n$2, n$3, n$4);
  and U$6(n$3, SE, SI);
  and U$7(n$4, n$5, D);
  not U$8(n$5, SE);
endmodule

module SDFFRX1(CK, D, Q, QN, RN, SE, SI);
input  CK, D, RN, SE, SI;
output Q, QN;
wire  CK, D, Q, QN, RN, SE, SI, n$1, n$2, n$3, n$4, n$5;
  _HDFF_verplex U$1(.Q(Q), .QN(QN), .S(1'b0), .R(n$1), .CK(CK), .D(n$2));
  not U$4(n$1, RN);
  or U$5(n$2, n$3, n$4);
  and U$6(n$3, SE, SI);
  and U$7(n$4, n$5, D);
  not U$8(n$5, SE);
endmodule

module SDFFRHQX8(CK, D, Q, RN, SE, SI);
input  CK, D, RN, SE, SI;
output Q;
wire  QBINT_38, CK, D, Q, RN, SE, SI, n$1, n$2, n$3, n$4, n$5;
  _HDFF_verplex U$1(.Q(Q), .QN(QBINT_38), .S(1'b0), .R(n$1), .CK(CK), .D(n$2));
  not U$3(n$1, RN);
  or U$4(n$2, n$3, n$4);
  and U$5(n$3, SE, SI);
  and U$6(n$4, n$5, D);
  not U$7(n$5, SE);
endmodule

module SDFFRHQX4(CK, D, Q, RN, SE, SI);
input  CK, D, RN, SE, SI;
output Q;
wire  QBINT_24, CK, D, Q, RN, SE, SI, n$1, n$2, n$3, n$4, n$5;
  _HDFF_verplex U$1(.Q(Q), .QN(QBINT_24), .S(1'b0), .R(n$1), .CK(CK), .D(n$2));
  not U$3(n$1, RN);
  or U$4(n$2, n$3, n$4);
  and U$5(n$3, SE, SI);
  and U$6(n$4, n$5, D);
  not U$7(n$5, SE);
endmodule

module SDFFRHQX2(CK, D, Q, RN, SE, SI);
input  CK, D, RN, SE, SI;
output Q;
wire  QBINT_3, CK, D, Q, RN, SE, SI, n$1, n$2, n$3, n$4, n$5;
  _HDFF_verplex U$1(.Q(Q), .QN(QBINT_3), .S(1'b0), .R(n$1), .CK(CK), .D(n$2));
  not U$3(n$1, RN);
  or U$4(n$2, n$3, n$4);
  and U$5(n$3, SE, SI);
  and U$6(n$4, n$5, D);
  not U$7(n$5, SE);
endmodule

module SDFFRHQX1(CK, D, Q, RN, SE, SI);
input  CK, D, RN, SE, SI;
output Q;
wire  QBINT_3, CK, D, Q, RN, SE, SI, n$1, n$2, n$3, n$4, n$5;
  _HDFF_verplex U$1(.Q(Q), .QN(QBINT_3), .S(1'b0), .R(n$1), .CK(CK), .D(n$2));
  not U$3(n$1, RN);
  or U$4(n$2, n$3, n$4);
  and U$5(n$3, SE, SI);
  and U$6(n$4, n$5, D);
  not U$7(n$5, SE);
endmodule

module SDFFQXL(CK, D, Q, SE, SI);
input  CK, D, SE, SI;
output Q;
wire  QBINT_2, CK, D, Q, SE, SI, n$1, n$2, n$3, n$4;
  _HDFF_verplex U$1(.Q(Q), .QN(QBINT_2), .S(1'b0), .R(1'b0), .CK(CK), .D(n$1));
  or U$3(n$1, n$2, n$3);
  and U$4(n$2, SE, SI);
  and U$5(n$3, n$4, D);
  not U$6(n$4, SE);
endmodule

module SDFFQX4(CK, D, Q, SE, SI);
input  CK, D, SE, SI;
output Q;
wire  QBINT_5, CK, D, Q, SE, SI, n$1, n$2, n$3, n$4;
  _HDFF_verplex U$1(.Q(Q), .QN(QBINT_5), .S(1'b0), .R(1'b0), .CK(CK), .D(n$1));
  or U$3(n$1, n$2, n$3);
  and U$4(n$2, SE, SI);
  and U$5(n$3, n$4, D);
  not U$6(n$4, SE);
endmodule

module SDFFQX2(CK, D, Q, SE, SI);
input  CK, D, SE, SI;
output Q;
wire  QBINT_4, CK, D, Q, SE, SI, n$1, n$2, n$3, n$4;
  _HDFF_verplex U$1(.Q(Q), .QN(QBINT_4), .S(1'b0), .R(1'b0), .CK(CK), .D(n$1));
  or U$3(n$1, n$2, n$3);
  and U$4(n$2, SE, SI);
  and U$5(n$3, n$4, D);
  not U$6(n$4, SE);
endmodule

module SDFFQX1(CK, D, Q, SE, SI);
input  CK, D, SE, SI;
output Q;
wire  QBINT_3, CK, D, Q, SE, SI, n$1, n$2, n$3, n$4;
  _HDFF_verplex U$1(.Q(Q), .QN(QBINT_3), .S(1'b0), .R(1'b0), .CK(CK), .D(n$1));
  or U$3(n$1, n$2, n$3);
  and U$4(n$2, SE, SI);
  and U$5(n$3, n$4, D);
  not U$6(n$4, SE);
endmodule

module SDFFNSRXL(CKN, D, Q, QN, RN, SE, SI, SN);
input  CKN, D, RN, SE, SI, SN;
output Q, QN;
wire  CKN, D, Q, QN, RN, SE, SI, SN, n$1, n$2, n$3, n$4, n$5, n$6, n$7, n$8, n$9;
  _HDFF_verplex U$1(.Q(Q), .QN(QN), .S(n$1), .R(n$9), .CK(n$3), .D(n$4));
  not U$4(n$1, SN);
  not U$5(n$2, RN);
  not U$6(n$3, CKN);
  or U$7(n$4, n$5, n$6);
  and U$8(n$5, SE, SI);
  and U$9(n$6, n$7, D);
  not U$10(n$7, SE);
  not U$11(n$8, n$1);
  and U$12(n$9, n$8, n$2);
endmodule

module SDFFNSRX4(CKN, D, Q, QN, RN, SE, SI, SN);
input  CKN, D, RN, SE, SI, SN;
output Q, QN;
wire  CKN, D, Q, QN, RN, SE, SI, SN, n$1, n$2, n$3, n$4, n$5, n$6, n$7, n$8, n$9;
  _HDFF_verplex U$1(.Q(Q), .QN(QN), .S(n$1), .R(n$9), .CK(n$3), .D(n$4));
  not U$4(n$1, SN);
  not U$5(n$2, RN);
  not U$6(n$3, CKN);
  or U$7(n$4, n$5, n$6);
  and U$8(n$5, SE, SI);
  and U$9(n$6, n$7, D);
  not U$10(n$7, SE);
  not U$11(n$8, n$1);
  and U$12(n$9, n$8, n$2);
endmodule

module SDFFNSRX2(CKN, D, Q, QN, RN, SE, SI, SN);
input  CKN, D, RN, SE, SI, SN;
output Q, QN;
wire  CKN, D, Q, QN, RN, SE, SI, SN, n$1, n$2, n$3, n$4, n$5, n$6, n$7, n$8, n$9;
  _HDFF_verplex U$1(.Q(Q), .QN(QN), .S(n$1), .R(n$9), .CK(n$3), .D(n$4));
  not U$4(n$1, SN);
  not U$5(n$2, RN);
  not U$6(n$3, CKN);
  or U$7(n$4, n$5, n$6);
  and U$8(n$5, SE, SI);
  and U$9(n$6, n$7, D);
  not U$10(n$7, SE);
  not U$11(n$8, n$1);
  and U$12(n$9, n$8, n$2);
endmodule

module SDFFNSRX1(CKN, D, Q, QN, RN, SE, SI, SN);
input  CKN, D, RN, SE, SI, SN;
output Q, QN;
wire  CKN, D, Q, QN, RN, SE, SI, SN, n$1, n$2, n$3, n$4, n$5, n$6, n$7, n$8, n$9;
  _HDFF_verplex U$1(.Q(Q), .QN(QN), .S(n$1), .R(n$9), .CK(n$3), .D(n$4));
  not U$4(n$1, SN);
  not U$5(n$2, RN);
  not U$6(n$3, CKN);
  or U$7(n$4, n$5, n$6);
  and U$8(n$5, SE, SI);
  and U$9(n$6, n$7, D);
  not U$10(n$7, SE);
  not U$11(n$8, n$1);
  and U$12(n$9, n$8, n$2);
endmodule

module SDFFHQX8(CK, D, Q, SE, SI);
input  CK, D, SE, SI;
output Q;
wire  QBINT_30, CK, D, Q, SE, SI, n$1, n$2, n$3, n$4;
  _HDFF_verplex U$1(.Q(Q), .QN(QBINT_30), .S(1'b0), .R(1'b0), .CK(CK), .D(n$1));
  or U$3(n$1, n$2, n$3);
  and U$4(n$2, SE, SI);
  and U$5(n$3, n$4, D);
  not U$6(n$4, SE);
endmodule

module SDFFHQX4(CK, D, Q, SE, SI);
input  CK, D, SE, SI;
output Q;
wire  QBINT_15, CK, D, Q, SE, SI, n$1, n$2, n$3, n$4;
  _HDFF_verplex U$1(.Q(Q), .QN(QBINT_15), .S(1'b0), .R(1'b0), .CK(CK), .D(n$1));
  or U$3(n$1, n$2, n$3);
  and U$4(n$2, SE, SI);
  and U$5(n$3, n$4, D);
  not U$6(n$4, SE);
endmodule

module SDFFHQX2(CK, D, Q, SE, SI);
input  CK, D, SE, SI;
output Q;
wire  QBINT_4, CK, D, Q, SE, SI, n$1, n$2, n$3, n$4;
  _HDFF_verplex U$1(.Q(Q), .QN(QBINT_4), .S(1'b0), .R(1'b0), .CK(CK), .D(n$1));
  or U$3(n$1, n$2, n$3);
  and U$4(n$2, SE, SI);
  and U$5(n$3, n$4, D);
  not U$6(n$4, SE);
endmodule

module SDFFHQX1(CK, D, Q, SE, SI);
input  CK, D, SE, SI;
output Q;
wire  QBINT_2, CK, D, Q, SE, SI, n$1, n$2, n$3, n$4;
  _HDFF_verplex U$1(.Q(Q), .QN(QBINT_2), .S(1'b0), .R(1'b0), .CK(CK), .D(n$1));
  or U$3(n$1, n$2, n$3);
  and U$4(n$2, SE, SI);
  and U$5(n$3, n$4, D);
  not U$6(n$4, SE);
endmodule

module OR4XL(A, B, C, D, Y);
input  A, B, C, D;
output Y;
wire  A, B, C, D, Y;
  or U$1(Y, A, B, C, D);
endmodule

module OR4X8(A, B, C, D, Y);
input  A, B, C, D;
output Y;
wire  A, B, C, D, Y;
  or U$1(Y, A, B, C, D);
endmodule

module OR4X6(A, B, C, D, Y);
input  A, B, C, D;
output Y;
wire  A, B, C, D, Y;
  or U$1(Y, A, B, C, D);
endmodule

module OR4X4(A, B, C, D, Y);
input  A, B, C, D;
output Y;
wire  A, B, C, D, Y;
  or U$1(Y, A, B, C, D);
endmodule

module OR4X2(A, B, C, D, Y);
input  A, B, C, D;
output Y;
wire  A, B, C, D, Y;
  or U$1(Y, A, B, C, D);
endmodule

module OR4X1(A, B, C, D, Y);
input  A, B, C, D;
output Y;
wire  A, B, C, D, Y;
  or U$1(Y, A, B, C, D);
endmodule

module OR3XL(A, B, C, Y);
input  A, B, C;
output Y;
wire  A, B, C, Y;
  or U$1(Y, A, B, C);
endmodule

module OR3X8(A, B, C, Y);
input  A, B, C;
output Y;
wire  A, B, C, Y;
  or U$1(Y, A, B, C);
endmodule

module OR3X6(A, B, C, Y);
input  A, B, C;
output Y;
wire  A, B, C, Y;
  or U$1(Y, A, B, C);
endmodule

module OR3X4(A, B, C, Y);
input  A, B, C;
output Y;
wire  A, B, C, Y;
  or U$1(Y, A, B, C);
endmodule

module OR3X2(A, B, C, Y);
input  A, B, C;
output Y;
wire  A, B, C, Y;
  or U$1(Y, A, B, C);
endmodule

module OR3X1(A, B, C, Y);
input  A, B, C;
output Y;
wire  A, B, C, Y;
  or U$1(Y, A, B, C);
endmodule

module OR2XL(A, B, Y);
input  A, B;
output Y;
wire  A, B, Y;
  or U$1(Y, A, B);
endmodule

module OR2X8(A, B, Y);
input  A, B;
output Y;
wire  A, B, Y;
  or U$1(Y, A, B);
endmodule

module OR2X6(A, B, Y);
input  A, B;
output Y;
wire  A, B, Y;
  or U$1(Y, A, B);
endmodule

module OR2X4(A, B, Y);
input  A, B;
output Y;
wire  A, B, Y;
  or U$1(Y, A, B);
endmodule

module OR2X2(A, B, Y);
input  A, B;
output Y;
wire  A, B, Y;
  or U$1(Y, A, B);
endmodule

module OR2X1(A, B, Y);
input  A, B;
output Y;
wire  A, B, Y;
  or U$1(Y, A, B);
endmodule

module OAI33XL(A0, A1, A2, B0, B1, B2, Y);
input  A0, A1, A2, B0, B1, B2;
output Y;
wire  A0, A1, A2, B0, B1, B2, Y, n$1, n$2;
  nand U$1(Y, n$1, n$2);
  or U$2(n$1, A0, A1, A2);
  or U$3(n$2, B0, B1, B2);
endmodule

module OAI33X4(A0, A1, A2, B0, B1, B2, Y);
input  A0, A1, A2, B0, B1, B2;
output Y;
wire  A0, A1, A2, B0, B1, B2, Y, n$1, n$2;
  nand U$1(Y, n$1, n$2);
  or U$2(n$1, A0, A1, A2);
  or U$3(n$2, B0, B1, B2);
endmodule

module OAI33X2(A0, A1, A2, B0, B1, B2, Y);
input  A0, A1, A2, B0, B1, B2;
output Y;
wire  A0, A1, A2, B0, B1, B2, Y, n$1, n$2;
  nand U$1(Y, n$1, n$2);
  or U$2(n$1, A0, A1, A2);
  or U$3(n$2, B0, B1, B2);
endmodule

module OAI33X1(A0, A1, A2, B0, B1, B2, Y);
input  A0, A1, A2, B0, B1, B2;
output Y;
wire  A0, A1, A2, B0, B1, B2, Y, n$1, n$2;
  nand U$1(Y, n$1, n$2);
  or U$2(n$1, A0, A1, A2);
  or U$3(n$2, B0, B1, B2);
endmodule

module OAI32XL(A0, A1, A2, B0, B1, Y);
input  A0, A1, A2, B0, B1;
output Y;
wire  A0, A1, A2, B0, B1, Y, n$1, n$2;
  nand U$1(Y, n$1, n$2);
  or U$2(n$1, A0, A1, A2);
  or U$3(n$2, B0, B1);
endmodule

module OAI32X4(A0, A1, A2, B0, B1, Y);
input  A0, A1, A2, B0, B1;
output Y;
wire  A0, A1, A2, B0, B1, Y, n$1, n$2;
  nand U$1(Y, n$1, n$2);
  or U$2(n$1, A0, A1, A2);
  or U$3(n$2, B0, B1);
endmodule

module OAI32X2(A0, A1, A2, B0, B1, Y);
input  A0, A1, A2, B0, B1;
output Y;
wire  A0, A1, A2, B0, B1, Y, n$1, n$2;
  nand U$1(Y, n$1, n$2);
  or U$2(n$1, A0, A1, A2);
  or U$3(n$2, B0, B1);
endmodule

module OAI32X1(A0, A1, A2, B0, B1, Y);
input  A0, A1, A2, B0, B1;
output Y;
wire  A0, A1, A2, B0, B1, Y, n$1, n$2;
  nand U$1(Y, n$1, n$2);
  or U$2(n$1, A0, A1, A2);
  or U$3(n$2, B0, B1);
endmodule

module OAI31XL(A0, A1, A2, B0, Y);
input  A0, A1, A2, B0;
output Y;
wire  A0, A1, A2, B0, Y, n$1;
  nand U$1(Y, n$1, B0);
  or U$2(n$1, A0, A1, A2);
endmodule

module OAI31X4(A0, A1, A2, B0, Y);
input  A0, A1, A2, B0;
output Y;
wire  A0, A1, A2, B0, Y, n$1;
  nand U$1(Y, n$1, B0);
  or U$2(n$1, A0, A1, A2);
endmodule

module OAI31X2(A0, A1, A2, B0, Y);
input  A0, A1, A2, B0;
output Y;
wire  A0, A1, A2, B0, Y, n$1;
  nand U$1(Y, n$1, B0);
  or U$2(n$1, A0, A1, A2);
endmodule

module OAI31X1(A0, A1, A2, B0, Y);
input  A0, A1, A2, B0;
output Y;
wire  A0, A1, A2, B0, Y, n$1;
  nand U$1(Y, n$1, B0);
  or U$2(n$1, A0, A1, A2);
endmodule

module OAI2BB2XL(A0N, A1N, B0, B1, Y);
input  A0N, A1N, B0, B1;
output Y;
wire  A0N, A1N, B0, B1, Y, n$1, n$2, n$3, n$4;
  nand U$1(Y, n$1, n$4);
  or U$2(n$1, n$2, n$3);
  not U$3(n$2, A0N);
  not U$4(n$3, A1N);
  or U$5(n$4, B0, B1);
endmodule

module OAI2BB2X4(A0N, A1N, B0, B1, Y);
input  A0N, A1N, B0, B1;
output Y;
wire  A0N, A1N, B0, B1, Y, n$1, n$2, n$3, n$4;
  nand U$1(Y, n$1, n$4);
  or U$2(n$1, n$2, n$3);
  not U$3(n$2, A0N);
  not U$4(n$3, A1N);
  or U$5(n$4, B0, B1);
endmodule

module OAI2BB2X2(A0N, A1N, B0, B1, Y);
input  A0N, A1N, B0, B1;
output Y;
wire  A0N, A1N, B0, B1, Y, n$1, n$2, n$3, n$4;
  nand U$1(Y, n$1, n$4);
  or U$2(n$1, n$2, n$3);
  not U$3(n$2, A0N);
  not U$4(n$3, A1N);
  or U$5(n$4, B0, B1);
endmodule

module OAI2BB2X1(A0N, A1N, B0, B1, Y);
input  A0N, A1N, B0, B1;
output Y;
wire  A0N, A1N, B0, B1, Y, n$1, n$2, n$3, n$4;
  nand U$1(Y, n$1, n$4);
  or U$2(n$1, n$2, n$3);
  not U$3(n$2, A0N);
  not U$4(n$3, A1N);
  or U$5(n$4, B0, B1);
endmodule

module OAI2BB1XL(A0N, A1N, B0, Y);
input  A0N, A1N, B0;
output Y;
wire  A0N, A1N, B0, Y, n$1, n$2, n$3;
  nand U$1(Y, n$1, B0);
  or U$2(n$1, n$2, n$3);
  not U$3(n$2, A0N);
  not U$4(n$3, A1N);
endmodule

module OAI2BB1X4(A0N, A1N, B0, Y);
input  A0N, A1N, B0;
output Y;
wire  A0N, A1N, B0, Y, n$1, n$2, n$3;
  nand U$1(Y, n$1, B0);
  or U$2(n$1, n$2, n$3);
  not U$3(n$2, A0N);
  not U$4(n$3, A1N);
endmodule

module OAI2BB1X2(A0N, A1N, B0, Y);
input  A0N, A1N, B0;
output Y;
wire  A0N, A1N, B0, Y, n$1, n$2, n$3;
  nand U$1(Y, n$1, B0);
  or U$2(n$1, n$2, n$3);
  not U$3(n$2, A0N);
  not U$4(n$3, A1N);
endmodule

module OAI2BB1X1(A0N, A1N, B0, Y);
input  A0N, A1N, B0;
output Y;
wire  A0N, A1N, B0, Y, n$1, n$2, n$3;
  nand U$1(Y, n$1, B0);
  or U$2(n$1, n$2, n$3);
  not U$3(n$2, A0N);
  not U$4(n$3, A1N);
endmodule

module OAI22XL(A0, A1, B0, B1, Y);
input  A0, A1, B0, B1;
output Y;
wire  A0, A1, B0, B1, Y, n$1, n$2;
  nand U$1(Y, n$1, n$2);
  or U$2(n$1, A0, A1);
  or U$3(n$2, B0, B1);
endmodule

module OAI22X4(A0, A1, B0, B1, Y);
input  A0, A1, B0, B1;
output Y;
wire  A0, A1, B0, B1, Y, n$1, n$2;
  nand U$1(Y, n$1, n$2);
  or U$2(n$1, A0, A1);
  or U$3(n$2, B0, B1);
endmodule

module OAI22X2(A0, A1, B0, B1, Y);
input  A0, A1, B0, B1;
output Y;
wire  A0, A1, B0, B1, Y, n$1, n$2;
  nand U$1(Y, n$1, n$2);
  or U$2(n$1, A0, A1);
  or U$3(n$2, B0, B1);
endmodule

module OAI22X1(A0, A1, B0, B1, Y);
input  A0, A1, B0, B1;
output Y;
wire  A0, A1, B0, B1, Y, n$1, n$2;
  nand U$1(Y, n$1, n$2);
  or U$2(n$1, A0, A1);
  or U$3(n$2, B0, B1);
endmodule

module OAI222XL(A0, A1, B0, B1, C0, C1, Y);
input  A0, A1, C0, C1, B0, B1;
output Y;
wire  A0, A1, B0, B1, C0, C1, Y, n$1, n$2, n$3;
  nand U$1(Y, n$1, n$2, n$3);
  or U$2(n$1, A0, A1);
  or U$3(n$2, C0, C1);
  or U$4(n$3, B0, B1);
endmodule

module OAI222X4(A0, A1, B0, B1, C0, C1, Y);
input  C0, C1, A0, A1, B0, B1;
output Y;
wire  A0, A1, B0, B1, C0, C1, Y, n$1, n$2, n$3;
  nand U$1(Y, n$1, n$2, n$3);
  or U$2(n$1, C0, C1);
  or U$3(n$2, A0, A1);
  or U$4(n$3, B0, B1);
endmodule

module OAI222X2(A0, A1, B0, B1, C0, C1, Y);
input  A0, A1, C0, C1, B0, B1;
output Y;
wire  A0, A1, B0, B1, C0, C1, Y, n$1, n$2, n$3;
  nand U$1(Y, n$1, n$2, n$3);
  or U$2(n$1, A0, A1);
  or U$3(n$2, C0, C1);
  or U$4(n$3, B0, B1);
endmodule

module OAI222X1(A0, A1, B0, B1, C0, C1, Y);
input  A0, A1, C0, C1, B0, B1;
output Y;
wire  A0, A1, B0, B1, C0, C1, Y, n$1, n$2, n$3;
  nand U$1(Y, n$1, n$2, n$3);
  or U$2(n$1, A0, A1);
  or U$3(n$2, C0, C1);
  or U$4(n$3, B0, B1);
endmodule

module OAI221XL(A0, A1, B0, B1, C0, Y);
input  A0, A1, B0, B1, C0;
output Y;
wire  A0, A1, B0, B1, C0, Y, n$1, n$2;
  nand U$1(Y, n$1, n$2, C0);
  or U$2(n$1, A0, A1);
  or U$3(n$2, B0, B1);
endmodule

module OAI221X4(A0, A1, B0, B1, C0, Y);
input  A0, A1, B0, B1, C0;
output Y;
wire  A0, A1, B0, B1, C0, Y, n$1, n$2;
  nand U$1(Y, n$1, n$2, C0);
  or U$2(n$1, A0, A1);
  or U$3(n$2, B0, B1);
endmodule

module OAI221X2(A0, A1, B0, B1, C0, Y);
input  A0, A1, B0, B1, C0;
output Y;
wire  A0, A1, B0, B1, C0, Y, n$1, n$2;
  nand U$1(Y, n$1, n$2, C0);
  or U$2(n$1, A0, A1);
  or U$3(n$2, B0, B1);
endmodule

module OAI221X1(A0, A1, B0, B1, C0, Y);
input  A0, A1, B0, B1, C0;
output Y;
wire  A0, A1, B0, B1, C0, Y, n$1, n$2;
  nand U$1(Y, n$1, n$2, C0);
  or U$2(n$1, A0, A1);
  or U$3(n$2, B0, B1);
endmodule

module OAI21XL(A0, A1, B0, Y);
input  A0, A1, B0;
output Y;
wire  A0, A1, B0, Y, n$1;
  nand U$1(Y, n$1, B0);
  or U$2(n$1, A0, A1);
endmodule

module OAI21X4(A0, A1, B0, Y);
input  A0, A1, B0;
output Y;
wire  A0, A1, B0, Y, n$1;
  nand U$1(Y, n$1, B0);
  or U$2(n$1, A0, A1);
endmodule

module OAI21X2(A0, A1, B0, Y);
input  A0, A1, B0;
output Y;
wire  A0, A1, B0, Y, n$1;
  nand U$1(Y, n$1, B0);
  or U$2(n$1, A0, A1);
endmodule

module OAI21X1(A0, A1, B0, Y);
input  A0, A1, B0;
output Y;
wire  A0, A1, B0, Y, n$1;
  nand U$1(Y, n$1, B0);
  or U$2(n$1, A0, A1);
endmodule

module OAI211XL(A0, A1, B0, C0, Y);
input  A0, A1, B0, C0;
output Y;
wire  A0, A1, B0, C0, Y, n$1;
  nand U$1(Y, n$1, B0, C0);
  or U$2(n$1, A0, A1);
endmodule

module OAI211X4(A0, A1, B0, C0, Y);
input  A0, A1, B0, C0;
output Y;
wire  A0, A1, B0, C0, Y, n$1;
  nand U$1(Y, n$1, B0, C0);
  or U$2(n$1, A0, A1);
endmodule

module OAI211X2(A0, A1, B0, C0, Y);
input  A0, A1, B0, C0;
output Y;
wire  A0, A1, B0, C0, Y, n$1;
  nand U$1(Y, n$1, B0, C0);
  or U$2(n$1, A0, A1);
endmodule

module OAI211X1(A0, A1, B0, C0, Y);
input  A0, A1, B0, C0;
output Y;
wire  A0, A1, B0, C0, Y, n$1;
  nand U$1(Y, n$1, B0, C0);
  or U$2(n$1, A0, A1);
endmodule

module OA22XL(A0, A1, B0, B1, Y);
input  A0, A1, B0, B1;
output Y;
wire  A0, A1, B0, B1, Y, n$1, n$2;
  and U$1(Y, n$1, n$2);
  or U$2(n$1, A0, A1);
  or U$3(n$2, B0, B1);
endmodule

module OA22X4(A0, A1, B0, B1, Y);
input  A0, A1, B0, B1;
output Y;
wire  A0, A1, B0, B1, Y, n$1, n$2;
  and U$1(Y, n$1, n$2);
  or U$2(n$1, A0, A1);
  or U$3(n$2, B0, B1);
endmodule

module OA22X2(A0, A1, B0, B1, Y);
input  A0, A1, B0, B1;
output Y;
wire  A0, A1, B0, B1, Y, n$1, n$2;
  and U$1(Y, n$1, n$2);
  or U$2(n$1, A0, A1);
  or U$3(n$2, B0, B1);
endmodule

module OA22X1(A0, A1, B0, B1, Y);
input  A0, A1, B0, B1;
output Y;
wire  A0, A1, B0, B1, Y, n$1, n$2;
  and U$1(Y, n$1, n$2);
  or U$2(n$1, A0, A1);
  or U$3(n$2, B0, B1);
endmodule

module OA21XL(A0, A1, B0, Y);
input  A0, A1, B0;
output Y;
wire  A0, A1, B0, Y, n$1;
  and U$1(Y, n$1, B0);
  or U$2(n$1, A0, A1);
endmodule

module OA21X4(A0, A1, B0, Y);
input  A0, A1, B0;
output Y;
wire  A0, A1, B0, Y, n$1;
  and U$1(Y, n$1, B0);
  or U$2(n$1, A0, A1);
endmodule

module OA21X2(A0, A1, B0, Y);
input  A0, A1, B0;
output Y;
wire  A0, A1, B0, Y, n$1;
  and U$1(Y, n$1, B0);
  or U$2(n$1, A0, A1);
endmodule

module OA21X1(A0, A1, B0, Y);
input  A0, A1, B0;
output Y;
wire  A0, A1, B0, Y, n$1;
  and U$1(Y, n$1, B0);
  or U$2(n$1, A0, A1);
endmodule

module NOR4XL(A, B, C, D, Y);
input  A, B, C, D;
output Y;
wire  A, B, C, D, Y;
  nor U$1(Y, A, B, C, D);
endmodule

module NOR4X8(A, B, C, D, Y);
input  A, B, C, D;
output Y;
wire  A, B, C, D, Y;
  nor U$1(Y, A, B, C, D);
endmodule

module NOR4X6(A, B, C, D, Y);
input  A, B, C, D;
output Y;
wire  A, B, C, D, Y;
  nor U$1(Y, A, B, C, D);
endmodule

module NOR4X4(A, B, C, D, Y);
input  A, B, C, D;
output Y;
wire  A, B, C, D, Y;
  nor U$1(Y, A, B, C, D);
endmodule

module NOR4X2(A, B, C, D, Y);
input  A, B, C, D;
output Y;
wire  A, B, C, D, Y;
  nor U$1(Y, A, B, C, D);
endmodule

module NOR4X1(A, B, C, D, Y);
input  A, B, C, D;
output Y;
wire  A, B, C, D, Y;
  nor U$1(Y, A, B, C, D);
endmodule

module NOR4BXL(AN, B, C, D, Y);
input  AN, B, C, D;
output Y;
wire  AN, B, C, D, Y, n$1;
  nor U$1(Y, n$1, B, C, D);
  not U$2(n$1, AN);
endmodule

module NOR4BX4(AN, B, C, D, Y);
input  AN, B, C, D;
output Y;
wire  AN, B, C, D, Y, n$1;
  nor U$1(Y, n$1, B, C, D);
  not U$2(n$1, AN);
endmodule

module NOR4BX2(AN, B, C, D, Y);
input  AN, B, C, D;
output Y;
wire  AN, B, C, D, Y, n$1;
  nor U$1(Y, n$1, B, C, D);
  not U$2(n$1, AN);
endmodule

module NOR4BX1(AN, B, C, D, Y);
input  AN, B, C, D;
output Y;
wire  AN, B, C, D, Y, n$1;
  nor U$1(Y, n$1, B, C, D);
  not U$2(n$1, AN);
endmodule

module NOR4BBXL(AN, BN, C, D, Y);
input  AN, BN, C, D;
output Y;
wire  AN, BN, C, D, Y, n$1, n$2;
  nor U$1(Y, n$1, n$2, C, D);
  not U$2(n$1, BN);
  not U$3(n$2, AN);
endmodule

module NOR4BBX4(AN, BN, C, D, Y);
input  AN, BN, C, D;
output Y;
wire  AN, BN, C, D, Y, n$1, n$2;
  nor U$1(Y, n$1, n$2, C, D);
  not U$2(n$1, BN);
  not U$3(n$2, AN);
endmodule

module NOR4BBX2(AN, BN, C, D, Y);
input  AN, BN, C, D;
output Y;
wire  AN, BN, C, D, Y, n$1, n$2;
  nor U$1(Y, n$1, n$2, C, D);
  not U$2(n$1, BN);
  not U$3(n$2, AN);
endmodule

module NOR4BBX1(AN, BN, C, D, Y);
input  AN, BN, C, D;
output Y;
wire  AN, BN, C, D, Y, n$1, n$2;
  nor U$1(Y, n$1, n$2, C, D);
  not U$2(n$1, BN);
  not U$3(n$2, AN);
endmodule

module NOR3XL(A, B, C, Y);
input  A, B, C;
output Y;
wire  A, B, C, Y;
  nor U$1(Y, A, B, C);
endmodule

module NOR3X8(A, B, C, Y);
input  A, B, C;
output Y;
wire  A, B, C, Y;
  nor U$1(Y, A, B, C);
endmodule

module NOR3X6(A, B, C, Y);
input  A, B, C;
output Y;
wire  A, B, C, Y;
  nor U$1(Y, A, B, C);
endmodule

module NOR3X4(A, B, C, Y);
input  A, B, C;
output Y;
wire  A, B, C, Y;
  nor U$1(Y, A, B, C);
endmodule

module NOR3X2(A, B, C, Y);
input  A, B, C;
output Y;
wire  A, B, C, Y;
  nor U$1(Y, A, B, C);
endmodule

module NOR3X1(A, B, C, Y);
input  A, B, C;
output Y;
wire  A, B, C, Y;
  nor U$1(Y, A, B, C);
endmodule

module NOR3BXL(AN, B, C, Y);
input  AN, B, C;
output Y;
wire  AN, B, C, Y, n$1;
  nor U$1(Y, n$1, B, C);
  not U$2(n$1, AN);
endmodule

module NOR3BX4(AN, B, C, Y);
input  AN, B, C;
output Y;
wire  AN, B, C, Y, n$1;
  nor U$1(Y, n$1, B, C);
  not U$2(n$1, AN);
endmodule

module NOR3BX2(AN, B, C, Y);
input  AN, B, C;
output Y;
wire  AN, B, C, Y, n$1;
  nor U$1(Y, n$1, B, C);
  not U$2(n$1, AN);
endmodule

module NOR3BX1(AN, B, C, Y);
input  AN, B, C;
output Y;
wire  AN, B, C, Y, n$1;
  nor U$1(Y, n$1, B, C);
  not U$2(n$1, AN);
endmodule

module NOR2XL(A, B, Y);
input  A, B;
output Y;
wire  A, B, Y;
  nor U$1(Y, A, B);
endmodule

module NOR2X8(A, B, Y);
input  A, B;
output Y;
wire  A, B, Y;
  nor U$1(Y, A, B);
endmodule

module NOR2X6(A, B, Y);
input  A, B;
output Y;
wire  A, B, Y;
  nor U$1(Y, A, B);
endmodule

module NOR2X4(A, B, Y);
input  A, B;
output Y;
wire  A, B, Y;
  nor U$1(Y, A, B);
endmodule

module NOR2X2(A, B, Y);
input  A, B;
output Y;
wire  A, B, Y;
  nor U$1(Y, A, B);
endmodule

module NOR2X1(A, B, Y);
input  A, B;
output Y;
wire  A, B, Y;
  nor U$1(Y, A, B);
endmodule

module NOR2BXL(AN, B, Y);
input  AN, B;
output Y;
wire  AN, B, Y, n$1;
  nor U$1(Y, n$1, B);
  not U$2(n$1, AN);
endmodule

module NOR2BX4(AN, B, Y);
input  AN, B;
output Y;
wire  AN, B, Y, n$1;
  nor U$1(Y, n$1, B);
  not U$2(n$1, AN);
endmodule

module NOR2BX2(AN, B, Y);
input  AN, B;
output Y;
wire  AN, B, Y, n$1;
  nor U$1(Y, n$1, B);
  not U$2(n$1, AN);
endmodule

module NOR2BX1(AN, B, Y);
input  AN, B;
output Y;
wire  AN, B, Y, n$1;
  nor U$1(Y, n$1, B);
  not U$2(n$1, AN);
endmodule

module NAND4XL(A, B, C, D, Y);
input  A, B, C, D;
output Y;
wire  A, B, C, D, Y;
  nand U$1(Y, A, B, C, D);
endmodule

module NAND4X8(A, B, C, D, Y);
input  A, B, C, D;
output Y;
wire  A, B, C, D, Y;
  nand U$1(Y, A, B, C, D);
endmodule

module NAND4X6(A, B, C, D, Y);
input  A, B, C, D;
output Y;
wire  A, B, C, D, Y;
  nand U$1(Y, A, B, C, D);
endmodule

module NAND4X4(A, B, C, D, Y);
input  A, B, C, D;
output Y;
wire  A, B, C, D, Y;
  nand U$1(Y, A, B, C, D);
endmodule

module NAND4X2(A, B, C, D, Y);
input  A, B, C, D;
output Y;
wire  A, B, C, D, Y;
  nand U$1(Y, A, B, C, D);
endmodule

module NAND4X1(A, B, C, D, Y);
input  A, B, C, D;
output Y;
wire  A, B, C, D, Y;
  nand U$1(Y, A, B, C, D);
endmodule

module NAND4BXL(AN, B, C, D, Y);
input  AN, B, C, D;
output Y;
wire  AN, B, C, D, Y, n$1;
  nand U$1(Y, n$1, B, C, D);
  not U$2(n$1, AN);
endmodule

module NAND4BX4(AN, B, C, D, Y);
input  AN, B, C, D;
output Y;
wire  AN, B, C, D, Y, n$1;
  nand U$1(Y, n$1, B, C, D);
  not U$2(n$1, AN);
endmodule

module NAND4BX2(AN, B, C, D, Y);
input  AN, B, C, D;
output Y;
wire  AN, B, C, D, Y, n$1;
  nand U$1(Y, n$1, B, C, D);
  not U$2(n$1, AN);
endmodule

module NAND4BX1(AN, B, C, D, Y);
input  AN, B, C, D;
output Y;
wire  AN, B, C, D, Y, n$1;
  nand U$1(Y, n$1, B, C, D);
  not U$2(n$1, AN);
endmodule

module NAND4BBXL(AN, BN, C, D, Y);
input  AN, BN, C, D;
output Y;
wire  AN, BN, C, D, Y, n$1, n$2;
  nand U$1(Y, n$1, n$2, C, D);
  not U$2(n$1, BN);
  not U$3(n$2, AN);
endmodule

module NAND4BBX4(AN, BN, C, D, Y);
input  AN, BN, C, D;
output Y;
wire  AN, BN, C, D, Y, n$1, n$2;
  nand U$1(Y, n$1, n$2, C, D);
  not U$2(n$1, BN);
  not U$3(n$2, AN);
endmodule

module NAND4BBX2(AN, BN, C, D, Y);
input  AN, BN, C, D;
output Y;
wire  AN, BN, C, D, Y, n$1, n$2;
  nand U$1(Y, n$1, n$2, C, D);
  not U$2(n$1, BN);
  not U$3(n$2, AN);
endmodule

module NAND4BBX1(AN, BN, C, D, Y);
input  AN, BN, C, D;
output Y;
wire  AN, BN, C, D, Y, n$1, n$2;
  nand U$1(Y, n$1, n$2, C, D);
  not U$2(n$1, BN);
  not U$3(n$2, AN);
endmodule

module NAND3XL(A, B, C, Y);
input  A, B, C;
output Y;
wire  A, B, C, Y;
  nand U$1(Y, A, B, C);
endmodule

module NAND3X8(A, B, C, Y);
input  A, B, C;
output Y;
wire  A, B, C, Y;
  nand U$1(Y, A, B, C);
endmodule

module NAND3X6(A, B, C, Y);
input  A, B, C;
output Y;
wire  A, B, C, Y;
  nand U$1(Y, A, B, C);
endmodule

module NAND3X4(A, B, C, Y);
input  A, B, C;
output Y;
wire  A, B, C, Y;
  nand U$1(Y, A, B, C);
endmodule

module NAND3X2(A, B, C, Y);
input  A, B, C;
output Y;
wire  A, B, C, Y;
  nand U$1(Y, A, B, C);
endmodule

module NAND3X1(A, B, C, Y);
input  A, B, C;
output Y;
wire  A, B, C, Y;
  nand U$1(Y, A, B, C);
endmodule

module NAND3BXL(AN, B, C, Y);
input  AN, B, C;
output Y;
wire  AN, B, C, Y, n$1;
  nand U$1(Y, n$1, B, C);
  not U$2(n$1, AN);
endmodule

module NAND3BX4(AN, B, C, Y);
input  AN, B, C;
output Y;
wire  AN, B, C, Y, n$1;
  nand U$1(Y, n$1, B, C);
  not U$2(n$1, AN);
endmodule

module NAND3BX2(AN, B, C, Y);
input  AN, B, C;
output Y;
wire  AN, B, C, Y, n$1;
  nand U$1(Y, n$1, B, C);
  not U$2(n$1, AN);
endmodule

module NAND3BX1(AN, B, C, Y);
input  AN, B, C;
output Y;
wire  AN, B, C, Y, n$1;
  nand U$1(Y, n$1, B, C);
  not U$2(n$1, AN);
endmodule

module NAND2XL(A, B, Y);
input  A, B;
output Y;
wire  A, B, Y;
  nand U$1(Y, A, B);
endmodule

module NAND2X8(A, B, Y);
input  A, B;
output Y;
wire  A, B, Y;
  nand U$1(Y, A, B);
endmodule

module NAND2X6(A, B, Y);
input  A, B;
output Y;
wire  A, B, Y;
  nand U$1(Y, A, B);
endmodule

module NAND2X4(A, B, Y);
input  A, B;
output Y;
wire  A, B, Y;
  nand U$1(Y, A, B);
endmodule

module NAND2X2(A, B, Y);
input  A, B;
output Y;
wire  A, B, Y;
  nand U$1(Y, A, B);
endmodule

module NAND2X1(A, B, Y);
input  A, B;
output Y;
wire  A, B, Y;
  nand U$1(Y, A, B);
endmodule

module NAND2BXL(AN, B, Y);
input  AN, B;
output Y;
wire  AN, B, Y, n$1;
  nand U$1(Y, n$1, B);
  not U$2(n$1, AN);
endmodule

module NAND2BX4(AN, B, Y);
input  AN, B;
output Y;
wire  AN, B, Y, n$1;
  nand U$1(Y, n$1, B);
  not U$2(n$1, AN);
endmodule

module NAND2BX2(AN, B, Y);
input  AN, B;
output Y;
wire  AN, B, Y, n$1;
  nand U$1(Y, n$1, B);
  not U$2(n$1, AN);
endmodule

module NAND2BX1(AN, B, Y);
input  AN, B;
output Y;
wire  AN, B, Y, n$1;
  nand U$1(Y, n$1, B);
  not U$2(n$1, AN);
endmodule

module MXI4XL(A, B, C, D, S0, S1, Y);
input  A, B, C, D, S0, S1;
output Y;
wire  A, B, C, D, S0, S1, Y, n$1, n$2, n$3, n$4, n$5, n$6, n$7, n$8, n$9, n$10, 
    n$11;
  nor U$1(Y, n$1, n$6);
  and U$2(n$1, S1, n$2);
  or U$3(n$2, n$3, n$4);
  and U$4(n$3, S0, D);
  and U$5(n$4, n$5, C);
  not U$6(n$5, S0);
  and U$7(n$6, n$7, n$8);
  not U$8(n$7, S1);
  or U$9(n$8, n$9, n$10);
  and U$10(n$9, S0, B);
  and U$11(n$10, n$11, A);
  not U$12(n$11, S0);
endmodule

module MXI4X4(A, B, C, D, S0, S1, Y);
input  A, B, C, D, S0, S1;
output Y;
wire  A, B, C, D, S0, S1, Y, n$1, n$2, n$3, n$4, n$5, n$6, n$7, n$8, n$9, n$10, 
    n$11;
  nor U$1(Y, n$1, n$6);
  and U$2(n$1, S1, n$2);
  or U$3(n$2, n$3, n$4);
  and U$4(n$3, S0, D);
  and U$5(n$4, n$5, C);
  not U$6(n$5, S0);
  and U$7(n$6, n$7, n$8);
  not U$8(n$7, S1);
  or U$9(n$8, n$9, n$10);
  and U$10(n$9, S0, B);
  and U$11(n$10, n$11, A);
  not U$12(n$11, S0);
endmodule

module MXI4X2(A, B, C, D, S0, S1, Y);
input  A, B, C, D, S0, S1;
output Y;
wire  A, B, C, D, S0, S1, Y, n$1, n$2, n$3, n$4, n$5, n$6, n$7, n$8, n$9, n$10, 
    n$11;
  nor U$1(Y, n$1, n$6);
  and U$2(n$1, S1, n$2);
  or U$3(n$2, n$3, n$4);
  and U$4(n$3, S0, D);
  and U$5(n$4, n$5, C);
  not U$6(n$5, S0);
  and U$7(n$6, n$7, n$8);
  not U$8(n$7, S1);
  or U$9(n$8, n$9, n$10);
  and U$10(n$9, S0, B);
  and U$11(n$10, n$11, A);
  not U$12(n$11, S0);
endmodule

module MXI4X1(A, B, C, D, S0, S1, Y);
input  A, B, C, D, S0, S1;
output Y;
wire  A, B, C, D, S0, S1, Y, n$1, n$2, n$3, n$4, n$5, n$6, n$7, n$8, n$9, n$10, 
    n$11;
  nor U$1(Y, n$1, n$6);
  and U$2(n$1, S1, n$2);
  or U$3(n$2, n$3, n$4);
  and U$4(n$3, S0, D);
  and U$5(n$4, n$5, C);
  not U$6(n$5, S0);
  and U$7(n$6, n$7, n$8);
  not U$8(n$7, S1);
  or U$9(n$8, n$9, n$10);
  and U$10(n$9, S0, B);
  and U$11(n$10, n$11, A);
  not U$12(n$11, S0);
endmodule

module MXI3XL(A, B, C, S0, S1, Y);
input  A, B, C, S0, S1;
output Y;
wire  A, B, C, S0, S1, Y, n$1, n$2, n$3, n$4, n$5, n$6, n$7;
  nor U$1(Y, n$1, n$2);
  and U$2(n$1, S1, C);
  and U$3(n$2, n$3, n$4);
  not U$4(n$3, S1);
  or U$5(n$4, n$5, n$6);
  and U$6(n$5, S0, B);
  and U$7(n$6, n$7, A);
  not U$8(n$7, S0);
endmodule

module MXI3X4(A, B, C, S0, S1, Y);
input  A, B, C, S0, S1;
output Y;
wire  A, B, C, S0, S1, Y, n$1, n$2, n$3, n$4, n$5, n$6, n$7;
  nor U$1(Y, n$1, n$2);
  and U$2(n$1, S1, C);
  and U$3(n$2, n$3, n$4);
  not U$4(n$3, S1);
  or U$5(n$4, n$5, n$6);
  and U$6(n$5, S0, B);
  and U$7(n$6, n$7, A);
  not U$8(n$7, S0);
endmodule

module MXI3X2(A, B, C, S0, S1, Y);
input  A, B, C, S0, S1;
output Y;
wire  A, B, C, S0, S1, Y, n$1, n$2, n$3, n$4, n$5, n$6, n$7;
  nor U$1(Y, n$1, n$2);
  and U$2(n$1, S1, C);
  and U$3(n$2, n$3, n$4);
  not U$4(n$3, S1);
  or U$5(n$4, n$5, n$6);
  and U$6(n$5, S0, B);
  and U$7(n$6, n$7, A);
  not U$8(n$7, S0);
endmodule

module MXI3X1(A, B, C, S0, S1, Y);
input  A, B, C, S0, S1;
output Y;
wire  A, B, C, S0, S1, Y, n$1, n$2, n$3, n$4, n$5, n$6, n$7;
  nor U$1(Y, n$1, n$2);
  and U$2(n$1, S1, C);
  and U$3(n$2, n$3, n$4);
  not U$4(n$3, S1);
  or U$5(n$4, n$5, n$6);
  and U$6(n$5, S0, B);
  and U$7(n$6, n$7, A);
  not U$8(n$7, S0);
endmodule

module MXI2XL(A, B, S0, Y);
input  A, B, S0;
output Y;
wire  A, B, S0, Y, n$1, n$2, n$3;
  nor U$1(Y, n$1, n$2);
  and U$2(n$1, S0, B);
  and U$3(n$2, n$3, A);
  not U$4(n$3, S0);
endmodule

module MXI2X8(A, B, S0, Y);
input  A, B, S0;
output Y;
wire  A, B, S0, Y, n$1, n$2, n$3;
  nor U$1(Y, n$1, n$2);
  and U$2(n$1, S0, B);
  and U$3(n$2, n$3, A);
  not U$4(n$3, S0);
endmodule

module MXI2X6(A, B, S0, Y);
input  A, B, S0;
output Y;
wire  A, B, S0, Y, n$1, n$2, n$3;
  nor U$1(Y, n$1, n$2);
  and U$2(n$1, S0, B);
  and U$3(n$2, n$3, A);
  not U$4(n$3, S0);
endmodule

module MXI2X4(A, B, S0, Y);
input  A, B, S0;
output Y;
wire  A, B, S0, Y, n$1, n$2, n$3;
  nor U$1(Y, n$1, n$2);
  and U$2(n$1, S0, B);
  and U$3(n$2, n$3, A);
  not U$4(n$3, S0);
endmodule

module MXI2X2(A, B, S0, Y);
input  A, B, S0;
output Y;
wire  A, B, S0, Y, n$1, n$2, n$3;
  nor U$1(Y, n$1, n$2);
  and U$2(n$1, S0, B);
  and U$3(n$2, n$3, A);
  not U$4(n$3, S0);
endmodule

module MXI2X1(A, B, S0, Y);
input  A, B, S0;
output Y;
wire  A, B, S0, Y, n$1, n$2, n$3;
  nor U$1(Y, n$1, n$2);
  and U$2(n$1, S0, B);
  and U$3(n$2, n$3, A);
  not U$4(n$3, S0);
endmodule

module MX4XL(A, B, C, D, S0, S1, Y);
input  A, B, C, D, S0, S1;
output Y;
wire  A, B, C, D, S0, S1, Y, n$1, n$2, n$3, n$4, n$5, n$6, n$7, n$8, n$9, n$10, 
    n$11;
  or U$1(Y, n$1, n$6);
  and U$2(n$1, S1, n$2);
  or U$3(n$2, n$3, n$4);
  and U$4(n$3, S0, D);
  and U$5(n$4, n$5, C);
  not U$6(n$5, S0);
  and U$7(n$6, n$7, n$8);
  not U$8(n$7, S1);
  or U$9(n$8, n$9, n$10);
  and U$10(n$9, S0, B);
  and U$11(n$10, n$11, A);
  not U$12(n$11, S0);
endmodule

module MX4X4(A, B, C, D, S0, S1, Y);
input  A, B, C, D, S0, S1;
output Y;
wire  A, B, C, D, S0, S1, Y, n$1, n$2, n$3, n$4, n$5, n$6, n$7, n$8, n$9, n$10, 
    n$11;
  or U$1(Y, n$1, n$6);
  and U$2(n$1, S1, n$2);
  or U$3(n$2, n$3, n$4);
  and U$4(n$3, S0, D);
  and U$5(n$4, n$5, C);
  not U$6(n$5, S0);
  and U$7(n$6, n$7, n$8);
  not U$8(n$7, S1);
  or U$9(n$8, n$9, n$10);
  and U$10(n$9, S0, B);
  and U$11(n$10, n$11, A);
  not U$12(n$11, S0);
endmodule

module MX4X2(A, B, C, D, S0, S1, Y);
input  A, B, C, D, S0, S1;
output Y;
wire  A, B, C, D, S0, S1, Y, n$1, n$2, n$3, n$4, n$5, n$6, n$7, n$8, n$9, n$10, 
    n$11;
  or U$1(Y, n$1, n$6);
  and U$2(n$1, S1, n$2);
  or U$3(n$2, n$3, n$4);
  and U$4(n$3, S0, D);
  and U$5(n$4, n$5, C);
  not U$6(n$5, S0);
  and U$7(n$6, n$7, n$8);
  not U$8(n$7, S1);
  or U$9(n$8, n$9, n$10);
  and U$10(n$9, S0, B);
  and U$11(n$10, n$11, A);
  not U$12(n$11, S0);
endmodule

module MX4X1(A, B, C, D, S0, S1, Y);
input  A, B, C, D, S0, S1;
output Y;
wire  A, B, C, D, S0, S1, Y, n$1, n$2, n$3, n$4, n$5, n$6, n$7, n$8, n$9, n$10, 
    n$11;
  or U$1(Y, n$1, n$6);
  and U$2(n$1, S1, n$2);
  or U$3(n$2, n$3, n$4);
  and U$4(n$3, S0, D);
  and U$5(n$4, n$5, C);
  not U$6(n$5, S0);
  and U$7(n$6, n$7, n$8);
  not U$8(n$7, S1);
  or U$9(n$8, n$9, n$10);
  and U$10(n$9, S0, B);
  and U$11(n$10, n$11, A);
  not U$12(n$11, S0);
endmodule

module MX3XL(A, B, C, S0, S1, Y);
input  A, B, C, S0, S1;
output Y;
wire  A, B, C, S0, S1, Y, n$1, n$2, n$3, n$4, n$5, n$6, n$7;
  or U$1(Y, n$1, n$2);
  and U$2(n$1, S1, C);
  and U$3(n$2, n$3, n$4);
  not U$4(n$3, S1);
  or U$5(n$4, n$5, n$6);
  and U$6(n$5, S0, B);
  and U$7(n$6, n$7, A);
  not U$8(n$7, S0);
endmodule

module MX3X4(A, B, C, S0, S1, Y);
input  A, B, C, S0, S1;
output Y;
wire  A, B, C, S0, S1, Y, n$1, n$2, n$3, n$4, n$5, n$6, n$7;
  or U$1(Y, n$1, n$2);
  and U$2(n$1, S1, C);
  and U$3(n$2, n$3, n$4);
  not U$4(n$3, S1);
  or U$5(n$4, n$5, n$6);
  and U$6(n$5, S0, B);
  and U$7(n$6, n$7, A);
  not U$8(n$7, S0);
endmodule

module MX3X2(A, B, C, S0, S1, Y);
input  A, B, C, S0, S1;
output Y;
wire  A, B, C, S0, S1, Y, n$1, n$2, n$3, n$4, n$5, n$6, n$7;
  or U$1(Y, n$1, n$2);
  and U$2(n$1, S1, C);
  and U$3(n$2, n$3, n$4);
  not U$4(n$3, S1);
  or U$5(n$4, n$5, n$6);
  and U$6(n$5, S0, B);
  and U$7(n$6, n$7, A);
  not U$8(n$7, S0);
endmodule

module MX3X1(A, B, C, S0, S1, Y);
input  A, B, C, S0, S1;
output Y;
wire  A, B, C, S0, S1, Y, n$1, n$2, n$3, n$4, n$5, n$6, n$7;
  or U$1(Y, n$1, n$2);
  and U$2(n$1, S1, C);
  and U$3(n$2, n$3, n$4);
  not U$4(n$3, S1);
  or U$5(n$4, n$5, n$6);
  and U$6(n$5, S0, B);
  and U$7(n$6, n$7, A);
  not U$8(n$7, S0);
endmodule

module MX2XL(A, B, S0, Y);
input  A, B, S0;
output Y;
wire  A, B, S0, Y, n$1, n$2, n$3;
  or U$1(Y, n$1, n$2);
  and U$2(n$1, S0, B);
  and U$3(n$2, n$3, A);
  not U$4(n$3, S0);
endmodule

module MX2X8(A, B, S0, Y);
input  A, B, S0;
output Y;
wire  A, B, S0, Y, n$1, n$2, n$3;
  or U$1(Y, n$1, n$2);
  and U$2(n$1, S0, B);
  and U$3(n$2, n$3, A);
  not U$4(n$3, S0);
endmodule

module MX2X6(A, B, S0, Y);
input  A, B, S0;
output Y;
wire  A, B, S0, Y, n$1, n$2, n$3;
  or U$1(Y, n$1, n$2);
  and U$2(n$1, S0, B);
  and U$3(n$2, n$3, A);
  not U$4(n$3, S0);
endmodule

module MX2X4(A, B, S0, Y);
input  A, B, S0;
output Y;
wire  A, B, S0, Y, n$1, n$2, n$3;
  or U$1(Y, n$1, n$2);
  and U$2(n$1, S0, B);
  and U$3(n$2, n$3, A);
  not U$4(n$3, S0);
endmodule

module MX2X2(A, B, S0, Y);
input  A, B, S0;
output Y;
wire  A, B, S0, Y, n$1, n$2, n$3;
  or U$1(Y, n$1, n$2);
  and U$2(n$1, S0, B);
  and U$3(n$2, n$3, A);
  not U$4(n$3, S0);
endmodule

module MX2X1(A, B, S0, Y);
input  A, B, S0;
output Y;
wire  A, B, S0, Y, n$1, n$2, n$3;
  or U$1(Y, n$1, n$2);
  and U$2(n$1, S0, B);
  and U$3(n$2, n$3, A);
  not U$4(n$3, S0);
endmodule

module MDFFHQX8(CK, D0, D1, Q, S0);
input  CK, D0, D1, S0;
output Q;
wire  QBINT_30, CK, D0, D1, Q, S0, n$1, n$2, n$3, n$4;
  _HDFF_verplex U$1(.Q(Q), .QN(QBINT_30), .S(1'b0), .R(1'b0), .CK(CK), .D(n$1));
  or U$3(n$1, n$2, n$3);
  and U$4(n$2, S0, D1);
  and U$5(n$3, n$4, D0);
  not U$6(n$4, S0);
endmodule

module MDFFHQX4(CK, D0, D1, Q, S0);
input  CK, D0, D1, S0;
output Q;
wire  QBINT_15, CK, D0, D1, Q, S0, n$1, n$2, n$3, n$4;
  _HDFF_verplex U$1(.Q(Q), .QN(QBINT_15), .S(1'b0), .R(1'b0), .CK(CK), .D(n$1));
  or U$3(n$1, n$2, n$3);
  and U$4(n$2, S0, D1);
  and U$5(n$3, n$4, D0);
  not U$6(n$4, S0);
endmodule

module MDFFHQX2(CK, D0, D1, Q, S0);
input  CK, D0, D1, S0;
output Q;
wire  QBINT_4, CK, D0, D1, Q, S0, n$1, n$2, n$3, n$4;
  _HDFF_verplex U$1(.Q(Q), .QN(QBINT_4), .S(1'b0), .R(1'b0), .CK(CK), .D(n$1));
  or U$3(n$1, n$2, n$3);
  and U$4(n$2, S0, D1);
  and U$5(n$3, n$4, D0);
  not U$6(n$4, S0);
endmodule

module MDFFHQX1(CK, D0, D1, Q, S0);
input  CK, D0, D1, S0;
output Q;
wire  QBINT_2, CK, D0, D1, Q, S0, n$1, n$2, n$3, n$4;
  _HDFF_verplex U$1(.Q(Q), .QN(QBINT_2), .S(1'b0), .R(1'b0), .CK(CK), .D(n$1));
  or U$3(n$1, n$2, n$3);
  and U$4(n$2, S0, D1);
  and U$5(n$3, n$4, D0);
  not U$6(n$4, S0);
endmodule

module INVXL(A, Y);
input  A;
output Y;
wire  A, Y;
  not U$1(Y, A);
endmodule

module INVX8(A, Y);
input  A;
output Y;
wire  A, Y;
  not U$1(Y, A);
endmodule

module INVX6(A, Y);
input  A;
output Y;
wire  A, Y;
  not U$1(Y, A);
endmodule

module INVX4(A, Y);
input  A;
output Y;
wire  A, Y;
  not U$1(Y, A);
endmodule

module INVX3(A, Y);
input  A;
output Y;
wire  A, Y;
  not U$1(Y, A);
endmodule

module INVX20(A, Y);
input  A;
output Y;
wire  A, Y;
  not U$1(Y, A);
endmodule

module INVX2(A, Y);
input  A;
output Y;
wire  A, Y;
  not U$1(Y, A);
endmodule

module INVX16(A, Y);
input  A;
output Y;
wire  A, Y;
  not U$1(Y, A);
endmodule

module INVX12(A, Y);
input  A;
output Y;
wire  A, Y;
  not U$1(Y, A);
endmodule

module INVX1(A, Y);
input  A;
output Y;
wire  A, Y;
  not U$1(Y, A);
endmodule

module HOLDX1(Y);
// dont_use
inout  Y;
  // module is bboxed.
endmodule

module EDFFXL(CK, D, E, Q, QN);
input  CK, D, E;
output Q, QN;
wire  CK, D, E, Q, QN, n$1, n$2, n$3, n$4;
  _HDFF_verplex U$1(.Q(Q), .QN(QN), .S(1'b0), .R(1'b0), .CK(CK), .D(n$1));
  or U$4(n$1, n$2, n$3);
  and U$5(n$2, E, D);
  and U$6(n$3, n$4, Q);
  not U$7(n$4, E);
endmodule

module EDFFX4(CK, D, E, Q, QN);
input  CK, D, E;
output Q, QN;
wire  CK, D, E, Q, QN, n$1, n$2, n$3, n$4;
  _HDFF_verplex U$1(.Q(Q), .QN(QN), .S(1'b0), .R(1'b0), .CK(CK), .D(n$1));
  or U$4(n$1, n$2, n$3);
  and U$5(n$2, E, D);
  and U$6(n$3, n$4, Q);
  not U$7(n$4, E);
endmodule

module EDFFX2(CK, D, E, Q, QN);
input  CK, D, E;
output Q, QN;
wire  CK, D, E, Q, QN, n$1, n$2, n$3, n$4;
  _HDFF_verplex U$1(.Q(Q), .QN(QN), .S(1'b0), .R(1'b0), .CK(CK), .D(n$1));
  or U$4(n$1, n$2, n$3);
  and U$5(n$2, E, D);
  and U$6(n$3, n$4, Q);
  not U$7(n$4, E);
endmodule

module EDFFX1(CK, D, E, Q, QN);
input  CK, D, E;
output Q, QN;
wire  CK, D, E, Q, QN, n$1, n$2, n$3, n$4;
  _HDFF_verplex U$1(.Q(Q), .QN(QN), .S(1'b0), .R(1'b0), .CK(CK), .D(n$1));
  or U$4(n$1, n$2, n$3);
  and U$5(n$2, E, D);
  and U$6(n$3, n$4, Q);
  not U$7(n$4, E);
endmodule

module EDFFTRXL(CK, D, E, Q, QN, RN);
input  CK, D, E, RN;
output Q, QN;
wire  CK, D, E, Q, QN, RN, n$1, n$2, n$3, n$4;
  _HDFF_verplex U$1(.Q(Q), .QN(QN), .S(1'b0), .R(1'b0), .CK(CK), .D(n$1));
  and U$4(n$1, n$2, n$4, RN);
  or U$5(n$2, D, n$3);
  not U$6(n$3, E);
  or U$7(n$4, E, Q);
endmodule

module EDFFTRX4(CK, D, E, Q, QN, RN);
input  CK, D, E, RN;
output Q, QN;
wire  CK, D, E, Q, QN, RN, n$1, n$2, n$3, n$4;
  _HDFF_verplex U$1(.Q(Q), .QN(QN), .S(1'b0), .R(1'b0), .CK(CK), .D(n$1));
  and U$4(n$1, n$2, n$4, RN);
  or U$5(n$2, D, n$3);
  not U$6(n$3, E);
  or U$7(n$4, E, Q);
endmodule

module EDFFTRX2(CK, D, E, Q, QN, RN);
input  CK, D, E, RN;
output Q, QN;
wire  CK, D, E, Q, QN, RN, n$1, n$2, n$3, n$4;
  _HDFF_verplex U$1(.Q(Q), .QN(QN), .S(1'b0), .R(1'b0), .CK(CK), .D(n$1));
  and U$4(n$1, n$2, n$4, RN);
  or U$5(n$2, D, n$3);
  not U$6(n$3, E);
  or U$7(n$4, E, Q);
endmodule

module EDFFTRX1(CK, D, E, Q, QN, RN);
input  CK, D, E, RN;
output Q, QN;
wire  CK, D, E, Q, QN, RN, n$1, n$2, n$3, n$4;
  _HDFF_verplex U$1(.Q(Q), .QN(QN), .S(1'b0), .R(1'b0), .CK(CK), .D(n$1));
  and U$4(n$1, n$2, n$4, RN);
  or U$5(n$2, D, n$3);
  not U$6(n$3, E);
  or U$7(n$4, E, Q);
endmodule

module EDFFHQX8(CK, D, E, Q);
input  CK, D, E;
output Q;
wire  QBINT_17, CK, D, E, Q, n$1, n$2, n$3, n$4;
  _HDFF_verplex U$1(.Q(Q), .QN(QBINT_17), .S(1'b0), .R(1'b0), .CK(CK), .D(n$1));
  or U$3(n$1, n$2, n$3);
  and U$4(n$2, E, D);
  and U$5(n$3, n$4, Q);
  not U$6(n$4, E);
endmodule

module EDFFHQX4(CK, D, E, Q);
input  CK, D, E;
output Q;
wire  QBINT_14, CK, D, E, Q, n$1, n$2, n$3, n$4;
  _HDFF_verplex U$1(.Q(Q), .QN(QBINT_14), .S(1'b0), .R(1'b0), .CK(CK), .D(n$1));
  or U$3(n$1, n$2, n$3);
  and U$4(n$2, E, D);
  and U$5(n$3, n$4, Q);
  not U$6(n$4, E);
endmodule

module EDFFHQX2(CK, D, E, Q);
input  CK, D, E;
output Q;
wire  QBINT_5, CK, D, E, Q, n$1, n$2, n$3, n$4;
  _HDFF_verplex U$1(.Q(Q), .QN(QBINT_5), .S(1'b0), .R(1'b0), .CK(CK), .D(n$1));
  or U$3(n$1, n$2, n$3);
  and U$4(n$2, E, D);
  and U$5(n$3, n$4, Q);
  not U$6(n$4, E);
endmodule

module EDFFHQX1(CK, D, E, Q);
input  CK, D, E;
output Q;
wire  QBINT_5, CK, D, E, Q, n$1, n$2, n$3, n$4;
  _HDFF_verplex U$1(.Q(Q), .QN(QBINT_5), .S(1'b0), .R(1'b0), .CK(CK), .D(n$1));
  or U$3(n$1, n$2, n$3);
  and U$4(n$2, E, D);
  and U$5(n$3, n$4, Q);
  not U$6(n$4, E);
endmodule

module DLY4X4(A, Y);
input  A;
output Y;
wire  A, Y;
  buf U$1(Y, A);
endmodule

module DLY4X1(A, Y);
input  A;
output Y;
wire  A, Y;
  buf U$1(Y, A);
endmodule

module DLY3X4(A, Y);
input  A;
output Y;
wire  A, Y;
  buf U$1(Y, A);
endmodule

module DLY3X1(A, Y);
input  A;
output Y;
wire  A, Y;
  buf U$1(Y, A);
endmodule

module DLY2X4(A, Y);
input  A;
output Y;
wire  A, Y;
  buf U$1(Y, A);
endmodule

module DLY2X1(A, Y);
input  A;
output Y;
wire  A, Y;
  buf U$1(Y, A);
endmodule

module DLY1X4(A, Y);
input  A;
output Y;
wire  A, Y;
  buf U$1(Y, A);
endmodule

module DLY1X1(A, Y);
input  A;
output Y;
wire  A, Y;
  buf U$1(Y, A);
endmodule

module DFFXL(CK, D, Q, QN);
input  CK, D;
output Q, QN;
wire  CK, D, Q, QN;
  _HDFF_verplex U$1(.Q(Q), .QN(QN), .S(1'b0), .R(1'b0), .CK(CK), .D(D));
endmodule

module DFFX4(CK, D, Q, QN);
input  CK, D;
output Q, QN;
wire  CK, D, Q, QN;
  _HDFF_verplex U$1(.Q(Q), .QN(QN), .S(1'b0), .R(1'b0), .CK(CK), .D(D));
endmodule

module DFFX2(CK, D, Q, QN);
input  CK, D;
output Q, QN;
wire  CK, D, Q, QN;
  _HDFF_verplex U$1(.Q(Q), .QN(QN), .S(1'b0), .R(1'b0), .CK(CK), .D(D));
endmodule

module DFFX1(CK, D, Q, QN);
input  CK, D;
output Q, QN;
wire  CK, D, Q, QN;
  _HDFF_verplex U$1(.Q(Q), .QN(QN), .S(1'b0), .R(1'b0), .CK(CK), .D(D));
endmodule

module DFFTRXL(CK, D, Q, QN, RN);
input  CK, D, RN;
output Q, QN;
wire  CK, D, Q, QN, RN, n$1;
  _HDFF_verplex U$1(.Q(Q), .QN(QN), .S(1'b0), .R(1'b0), .CK(CK), .D(n$1));
  and U$4(n$1, D, RN);
endmodule

module DFFTRX4(CK, D, Q, QN, RN);
input  CK, D, RN;
output Q, QN;
wire  CK, D, Q, QN, RN, n$1;
  _HDFF_verplex U$1(.Q(Q), .QN(QN), .S(1'b0), .R(1'b0), .CK(CK), .D(n$1));
  and U$4(n$1, D, RN);
endmodule

module DFFTRX2(CK, D, Q, QN, RN);
input  CK, D, RN;
output Q, QN;
wire  CK, D, Q, QN, RN, n$1;
  _HDFF_verplex U$1(.Q(Q), .QN(QN), .S(1'b0), .R(1'b0), .CK(CK), .D(n$1));
  and U$4(n$1, D, RN);
endmodule

module DFFTRX1(CK, D, Q, QN, RN);
input  CK, D, RN;
output Q, QN;
wire  CK, D, Q, QN, RN, n$1;
  _HDFF_verplex U$1(.Q(Q), .QN(QN), .S(1'b0), .R(1'b0), .CK(CK), .D(n$1));
  and U$4(n$1, D, RN);
endmodule

module DFFSXL(CK, D, Q, QN, SN);
input  CK, D, SN;
output Q, QN;
wire  CK, D, Q, QN, SN, n$1;
  _HDFF_verplex U$1(.Q(Q), .QN(QN), .S(n$1), .R(1'b0), .CK(CK), .D(D));
  not U$4(n$1, SN);
endmodule

module DFFSX4(CK, D, Q, QN, SN);
input  CK, D, SN;
output Q, QN;
wire  CK, D, Q, QN, SN, n$1;
  _HDFF_verplex U$1(.Q(Q), .QN(QN), .S(n$1), .R(1'b0), .CK(CK), .D(D));
  not U$4(n$1, SN);
endmodule

module DFFSX2(CK, D, Q, QN, SN);
input  CK, D, SN;
output Q, QN;
wire  CK, D, Q, QN, SN, n$1;
  _HDFF_verplex U$1(.Q(Q), .QN(QN), .S(n$1), .R(1'b0), .CK(CK), .D(D));
  not U$4(n$1, SN);
endmodule

module DFFSX1(CK, D, Q, QN, SN);
input  CK, D, SN;
output Q, QN;
wire  CK, D, Q, QN, SN, n$1;
  _HDFF_verplex U$1(.Q(Q), .QN(QN), .S(n$1), .R(1'b0), .CK(CK), .D(D));
  not U$4(n$1, SN);
endmodule

module DFFSRXL(CK, D, Q, QN, RN, SN);
input  CK, D, RN, SN;
output Q, QN;
wire  CK, D, Q, QN, RN, SN, n$1, n$2, n$3, n$4;
  _HDFF_verplex U$1(.Q(Q), .QN(QN), .S(n$1), .R(n$4), .CK(CK), .D(D));
  not U$4(n$1, SN);
  not U$5(n$2, RN);
  not U$6(n$3, n$1);
  and U$7(n$4, n$3, n$2);
endmodule

module DFFSRX4(CK, D, Q, QN, RN, SN);
input  CK, D, RN, SN;
output Q, QN;
wire  CK, D, Q, QN, RN, SN, n$1, n$2, n$3, n$4;
  _HDFF_verplex U$1(.Q(Q), .QN(QN), .S(n$1), .R(n$4), .CK(CK), .D(D));
  not U$4(n$1, SN);
  not U$5(n$2, RN);
  not U$6(n$3, n$1);
  and U$7(n$4, n$3, n$2);
endmodule

module DFFSRX2(CK, D, Q, QN, RN, SN);
input  CK, D, RN, SN;
output Q, QN;
wire  CK, D, Q, QN, RN, SN, n$1, n$2, n$3, n$4;
  _HDFF_verplex U$1(.Q(Q), .QN(QN), .S(n$1), .R(n$4), .CK(CK), .D(D));
  not U$4(n$1, SN);
  not U$5(n$2, RN);
  not U$6(n$3, n$1);
  and U$7(n$4, n$3, n$2);
endmodule

module DFFSRX1(CK, D, Q, QN, RN, SN);
input  CK, D, RN, SN;
output Q, QN;
wire  CK, D, Q, QN, RN, SN, n$1, n$2, n$3, n$4;
  _HDFF_verplex U$1(.Q(Q), .QN(QN), .S(n$1), .R(n$4), .CK(CK), .D(D));
  not U$4(n$1, SN);
  not U$5(n$2, RN);
  not U$6(n$3, n$1);
  and U$7(n$4, n$3, n$2);
endmodule

module DFFSRHQX8(CK, D, Q, RN, SN);
input  CK, D, RN, SN;
output Q;
wire  QBINT_30, CK, D, Q, RN, SN, n$1, n$2, n$3, n$4;
  _HDFF_verplex U$1(.Q(Q), .QN(QBINT_30), .S(n$1), .R(n$4), .CK(CK), .D(D));
  not U$3(n$1, SN);
  not U$4(n$2, RN);
  not U$5(n$3, n$1);
  and U$6(n$4, n$3, n$2);
endmodule

module DFFSRHQX4(CK, D, Q, RN, SN);
input  CK, D, RN, SN;
output Q;
wire  QBINT_6, CK, D, Q, RN, SN, n$1, n$2, n$3, n$4;
  _HDFF_verplex U$1(.Q(Q), .QN(QBINT_6), .S(n$1), .R(n$4), .CK(CK), .D(D));
  not U$3(n$1, SN);
  not U$4(n$2, RN);
  not U$5(n$3, n$1);
  and U$6(n$4, n$3, n$2);
endmodule

module DFFSRHQX2(CK, D, Q, RN, SN);
input  CK, D, RN, SN;
output Q;
wire  QBINT_4, CK, D, Q, RN, SN, n$1, n$2, n$3, n$4;
  _HDFF_verplex U$1(.Q(Q), .QN(QBINT_4), .S(n$1), .R(n$4), .CK(CK), .D(D));
  not U$3(n$1, SN);
  not U$4(n$2, RN);
  not U$5(n$3, n$1);
  and U$6(n$4, n$3, n$2);
endmodule

module DFFSRHQX1(CK, D, Q, RN, SN);
input  CK, D, RN, SN;
output Q;
wire  QBINT_3, CK, D, Q, RN, SN, n$1, n$2, n$3, n$4;
  _HDFF_verplex U$1(.Q(Q), .QN(QBINT_3), .S(n$1), .R(n$4), .CK(CK), .D(D));
  not U$3(n$1, SN);
  not U$4(n$2, RN);
  not U$5(n$3, n$1);
  and U$6(n$4, n$3, n$2);
endmodule

module DFFSHQX8(CK, D, Q, SN);
input  CK, D, SN;
output Q;
wire  QBINT_9, CK, D, Q, SN, n$1;
  _HDFF_verplex U$1(.Q(Q), .QN(QBINT_9), .S(n$1), .R(1'b0), .CK(CK), .D(D));
  not U$3(n$1, SN);
endmodule

module DFFSHQX4(CK, D, Q, SN);
input  CK, D, SN;
output Q;
wire  QBINT_6, CK, D, Q, SN, n$1;
  _HDFF_verplex U$1(.Q(Q), .QN(QBINT_6), .S(n$1), .R(1'b0), .CK(CK), .D(D));
  not U$3(n$1, SN);
endmodule

module DFFSHQX2(CK, D, Q, SN);
input  CK, D, SN;
output Q;
wire  QBINT_4, CK, D, Q, SN, n$1;
  _HDFF_verplex U$1(.Q(Q), .QN(QBINT_4), .S(n$1), .R(1'b0), .CK(CK), .D(D));
  not U$3(n$1, SN);
endmodule

module DFFSHQX1(CK, D, Q, SN);
input  CK, D, SN;
output Q;
wire  QBINT_3, CK, D, Q, SN, n$1;
  _HDFF_verplex U$1(.Q(Q), .QN(QBINT_3), .S(n$1), .R(1'b0), .CK(CK), .D(D));
  not U$3(n$1, SN);
endmodule

module DFFRXL(CK, D, Q, QN, RN);
input  CK, D, RN;
output Q, QN;
wire  CK, D, Q, QN, RN, n$1;
  _HDFF_verplex U$1(.Q(Q), .QN(QN), .S(1'b0), .R(n$1), .CK(CK), .D(D));
  not U$4(n$1, RN);
endmodule

module DFFRX4(CK, D, Q, QN, RN);
input  CK, D, RN;
output Q, QN;
wire  CK, D, Q, QN, RN, n$1;
  _HDFF_verplex U$1(.Q(Q), .QN(QN), .S(1'b0), .R(n$1), .CK(CK), .D(D));
  not U$4(n$1, RN);
endmodule

module DFFRX2(CK, D, Q, QN, RN);
input  CK, D, RN;
output Q, QN;
wire  CK, D, Q, QN, RN, n$1;
  _HDFF_verplex U$1(.Q(Q), .QN(QN), .S(1'b0), .R(n$1), .CK(CK), .D(D));
  not U$4(n$1, RN);
endmodule

module DFFRX1(CK, D, Q, QN, RN);
input  CK, D, RN;
output Q, QN;
wire  CK, D, Q, QN, RN, n$1;
  _HDFF_verplex U$1(.Q(Q), .QN(QN), .S(1'b0), .R(n$1), .CK(CK), .D(D));
  not U$4(n$1, RN);
endmodule

module DFFRHQX8(CK, D, Q, RN);
input  CK, D, RN;
output Q;
wire  QBINT_40, CK, D, Q, RN, n$1;
  _HDFF_verplex U$1(.Q(Q), .QN(QBINT_40), .S(1'b0), .R(n$1), .CK(CK), .D(D));
  not U$3(n$1, RN);
endmodule

module DFFRHQX4(CK, D, Q, RN);
input  CK, D, RN;
output Q;
wire  QBINT_9, CK, D, Q, RN, n$1;
  _HDFF_verplex U$1(.Q(Q), .QN(QBINT_9), .S(1'b0), .R(n$1), .CK(CK), .D(D));
  not U$3(n$1, RN);
endmodule

module DFFRHQX2(CK, D, Q, RN);
input  CK, D, RN;
output Q;
wire  QBINT_4, CK, D, Q, RN, n$1;
  _HDFF_verplex U$1(.Q(Q), .QN(QBINT_4), .S(1'b0), .R(n$1), .CK(CK), .D(D));
  not U$3(n$1, RN);
endmodule

module DFFRHQX1(CK, D, Q, RN);
input  CK, D, RN;
output Q;
wire  QBINT_3, CK, D, Q, RN, n$1;
  _HDFF_verplex U$1(.Q(Q), .QN(QBINT_3), .S(1'b0), .R(n$1), .CK(CK), .D(D));
  not U$3(n$1, RN);
endmodule

module DFFQXL(CK, D, Q);
input  CK, D;
output Q;
wire  QBINT_3, CK, D, Q;
  _HDFF_verplex U$1(.Q(Q), .QN(QBINT_3), .S(1'b0), .R(1'b0), .CK(CK), .D(D));
endmodule

module DFFQX4(CK, D, Q);
input  CK, D;
output Q;
wire  QBINT_19, CK, D, Q;
  _HDFF_verplex U$1(.Q(Q), .QN(QBINT_19), .S(1'b0), .R(1'b0), .CK(CK), .D(D));
endmodule

module DFFQX2(CK, D, Q);
input  CK, D;
output Q;
wire  QBINT_6, CK, D, Q;
  _HDFF_verplex U$1(.Q(Q), .QN(QBINT_6), .S(1'b0), .R(1'b0), .CK(CK), .D(D));
endmodule

module DFFQX1(CK, D, Q);
input  CK, D;
output Q;
wire  QBINT_3, CK, D, Q;
  _HDFF_verplex U$1(.Q(Q), .QN(QBINT_3), .S(1'b0), .R(1'b0), .CK(CK), .D(D));
endmodule

module DFFNSRXL(CKN, D, Q, QN, RN, SN);
input  CKN, D, RN, SN;
output Q, QN;
wire  CKN, D, Q, QN, RN, SN, n$1, n$2, n$3, n$4, n$5;
  _HDFF_verplex U$1(.Q(Q), .QN(QN), .S(n$1), .R(n$5), .CK(n$3), .D(D));
  not U$4(n$1, SN);
  not U$5(n$2, RN);
  not U$6(n$3, CKN);
  not U$7(n$4, n$1);
  and U$8(n$5, n$4, n$2);
endmodule

module DFFNSRX4(CKN, D, Q, QN, RN, SN);
input  CKN, D, RN, SN;
output Q, QN;
wire  CKN, D, Q, QN, RN, SN, n$1, n$2, n$3, n$4, n$5;
  _HDFF_verplex U$1(.Q(Q), .QN(QN), .S(n$1), .R(n$5), .CK(n$3), .D(D));
  not U$4(n$1, SN);
  not U$5(n$2, RN);
  not U$6(n$3, CKN);
  not U$7(n$4, n$1);
  and U$8(n$5, n$4, n$2);
endmodule

module DFFNSRX2(CKN, D, Q, QN, RN, SN);
input  CKN, D, RN, SN;
output Q, QN;
wire  CKN, D, Q, QN, RN, SN, n$1, n$2, n$3, n$4, n$5;
  _HDFF_verplex U$1(.Q(Q), .QN(QN), .S(n$1), .R(n$5), .CK(n$3), .D(D));
  not U$4(n$1, SN);
  not U$5(n$2, RN);
  not U$6(n$3, CKN);
  not U$7(n$4, n$1);
  and U$8(n$5, n$4, n$2);
endmodule

module DFFNSRX1(CKN, D, Q, QN, RN, SN);
input  CKN, D, RN, SN;
output Q, QN;
wire  CKN, D, Q, QN, RN, SN, n$1, n$2, n$3, n$4, n$5;
  _HDFF_verplex U$1(.Q(Q), .QN(QN), .S(n$1), .R(n$5), .CK(n$3), .D(D));
  not U$4(n$1, SN);
  not U$5(n$2, RN);
  not U$6(n$3, CKN);
  not U$7(n$4, n$1);
  and U$8(n$5, n$4, n$2);
endmodule

module DFFHQX8(CK, D, Q);
input  CK, D;
output Q;
wire  QBINT_30, CK, D, Q;
  _HDFF_verplex U$1(.Q(Q), .QN(QBINT_30), .S(1'b0), .R(1'b0), .CK(CK), .D(D));
endmodule

module DFFHQX4(CK, D, Q);
input  CK, D;
output Q;
wire  QBINT_8, CK, D, Q;
  _HDFF_verplex U$1(.Q(Q), .QN(QBINT_8), .S(1'b0), .R(1'b0), .CK(CK), .D(D));
endmodule

module DFFHQX2(CK, D, Q);
input  CK, D;
output Q;
wire  QBINT_5, CK, D, Q;
  _HDFF_verplex U$1(.Q(Q), .QN(QBINT_5), .S(1'b0), .R(1'b0), .CK(CK), .D(D));
endmodule

module DFFHQX1(CK, D, Q);
input  CK, D;
output Q;
wire  QBINT_2, CK, D, Q;
  _HDFF_verplex U$1(.Q(Q), .QN(QBINT_2), .S(1'b0), .R(1'b0), .CK(CK), .D(D));
endmodule

module CLKXOR2X8(A, B, Y);
input  A, B;
output Y;
wire  A, B, Y;
  xor U$1(Y, A, B);
endmodule

module CLKXOR2X4(A, B, Y);
input  A, B;
output Y;
wire  A, B, Y;
  xor U$1(Y, A, B);
endmodule

module CLKXOR2X2(A, B, Y);
input  A, B;
output Y;
wire  A, B, Y;
  xor U$1(Y, A, B);
endmodule

module CLKXOR2X1(A, B, Y);
input  A, B;
output Y;
wire  A, B, Y;
  xor U$1(Y, A, B);
endmodule

module CLKMX2X8(A, B, S0, Y);
input  A, B, S0;
output Y;
wire  A, B, S0, Y, n$1, n$2, n$3;
  or U$1(Y, n$1, n$2);
  and U$2(n$1, S0, B);
  and U$3(n$2, n$3, A);
  not U$4(n$3, S0);
endmodule

module CLKMX2X6(A, B, S0, Y);
input  A, B, S0;
output Y;
wire  A, B, S0, Y, n$1, n$2, n$3;
  or U$1(Y, n$1, n$2);
  and U$2(n$1, S0, B);
  and U$3(n$2, n$3, A);
  not U$4(n$3, S0);
endmodule

module CLKMX2X4(A, B, S0, Y);
input  A, B, S0;
output Y;
wire  A, B, S0, Y, n$1, n$2, n$3;
  or U$1(Y, n$1, n$2);
  and U$2(n$1, S0, B);
  and U$3(n$2, n$3, A);
  not U$4(n$3, S0);
endmodule

module CLKMX2X3(A, B, S0, Y);
input  A, B, S0;
output Y;
wire  A, B, S0, Y, n$1, n$2, n$3;
  or U$1(Y, n$1, n$2);
  and U$2(n$1, S0, B);
  and U$3(n$2, n$3, A);
  not U$4(n$3, S0);
endmodule

module CLKMX2X2(A, B, S0, Y);
input  A, B, S0;
output Y;
wire  A, B, S0, Y, n$1, n$2, n$3;
  or U$1(Y, n$1, n$2);
  and U$2(n$1, S0, B);
  and U$3(n$2, n$3, A);
  not U$4(n$3, S0);
endmodule

module CLKMX2X12(A, B, S0, Y);
input  A, B, S0;
output Y;
wire  A, B, S0, Y, n$1, n$2, n$3;
  or U$1(Y, n$1, n$2);
  and U$2(n$1, S0, B);
  and U$3(n$2, n$3, A);
  not U$4(n$3, S0);
endmodule

module CLKINVX8(A, Y);
input  A;
output Y;
wire  A, Y;
  not U$1(Y, A);
endmodule

module CLKINVX6(A, Y);
input  A;
output Y;
wire  A, Y;
  not U$1(Y, A);
endmodule

module CLKINVX4(A, Y);
input  A;
output Y;
wire  A, Y;
  not U$1(Y, A);
endmodule

module CLKINVX3(A, Y);
input  A;
output Y;
wire  A, Y;
  not U$1(Y, A);
endmodule

module CLKINVX20(A, Y);
input  A;
output Y;
wire  A, Y;
  not U$1(Y, A);
endmodule

module CLKINVX2(A, Y);
input  A;
output Y;
wire  A, Y;
  not U$1(Y, A);
endmodule

module CLKINVX16(A, Y);
input  A;
output Y;
wire  A, Y;
  not U$1(Y, A);
endmodule

module CLKINVX12(A, Y);
input  A;
output Y;
wire  A, Y;
  not U$1(Y, A);
endmodule

module CLKINVX1(A, Y);
input  A;
output Y;
wire  A, Y;
  not U$1(Y, A);
endmodule

module CLKBUFX8(A, Y);
input  A;
output Y;
wire  A, Y;
  buf U$1(Y, A);
endmodule

module CLKBUFX6(A, Y);
input  A;
output Y;
wire  A, Y;
  buf U$1(Y, A);
endmodule

module CLKBUFX4(A, Y);
input  A;
output Y;
wire  A, Y;
  buf U$1(Y, A);
endmodule

module CLKBUFX3(A, Y);
input  A;
output Y;
wire  A, Y;
  buf U$1(Y, A);
endmodule

module CLKBUFX20(A, Y);
input  A;
output Y;
wire  A, Y;
  buf U$1(Y, A);
endmodule

module CLKBUFX2(A, Y);
input  A;
output Y;
wire  A, Y;
  buf U$1(Y, A);
endmodule

module CLKBUFX16(A, Y);
input  A;
output Y;
wire  A, Y;
  buf U$1(Y, A);
endmodule

module CLKBUFX12(A, Y);
input  A;
output Y;
wire  A, Y;
  buf U$1(Y, A);
endmodule

module CLKAND2X8(A, B, Y);
input  A, B;
output Y;
wire  A, B, Y;
  and U$1(Y, A, B);
endmodule

module CLKAND2X6(A, B, Y);
input  A, B;
output Y;
wire  A, B, Y;
  and U$1(Y, A, B);
endmodule

module CLKAND2X4(A, B, Y);
input  A, B;
output Y;
wire  A, B, Y;
  and U$1(Y, A, B);
endmodule

module CLKAND2X3(A, B, Y);
input  A, B;
output Y;
wire  A, B, Y;
  and U$1(Y, A, B);
endmodule

module CLKAND2X2(A, B, Y);
input  A, B;
output Y;
wire  A, B, Y;
  and U$1(Y, A, B);
endmodule

module CLKAND2X12(A, B, Y);
input  A, B;
output Y;
wire  A, B, Y;
  and U$1(Y, A, B);
endmodule

module BUFX8(A, Y);
input  A;
output Y;
wire  A, Y;
  buf U$1(Y, A);
endmodule

module BUFX6(A, Y);
input  A;
output Y;
wire  A, Y;
  buf U$1(Y, A);
endmodule

module BUFX4(A, Y);
input  A;
output Y;
wire  A, Y;
  buf U$1(Y, A);
endmodule

module BUFX3(A, Y);
input  A;
output Y;
wire  A, Y;
  buf U$1(Y, A);
endmodule

module BUFX20(A, Y);
input  A;
output Y;
wire  A, Y;
  buf U$1(Y, A);
endmodule

module BUFX2(A, Y);
input  A;
output Y;
wire  A, Y;
  buf U$1(Y, A);
endmodule

module BUFX16(A, Y);
input  A;
output Y;
wire  A, Y;
  buf U$1(Y, A);
endmodule

module BUFX12(A, Y);
input  A;
output Y;
wire  A, Y;
  buf U$1(Y, A);
endmodule

module BMXIX4(A, M0, M1, PPN, S, X2);
input  A, M0, M1, S, X2;
output PPN;
wire  A, M0, M1, PPN, S, X2, n$1, n$2, n$3, n$4, n$5, n$6, n$7, n$8, n$9, n$10, 
    n$11;
  or U$1(PPN, n$1, n$6);
  and U$2(n$1, X2, n$2);
  or U$3(n$2, n$3, n$4);
  and U$4(n$3, M0, A);
  and U$5(n$4, n$5, S);
  not U$6(n$5, M0);
  and U$7(n$6, n$7, n$8);
  not U$8(n$7, X2);
  or U$9(n$8, n$9, n$10);
  and U$10(n$9, M1, A);
  and U$11(n$10, n$11, S);
  not U$12(n$11, M1);
endmodule

module BMXIX2(A, M0, M1, PPN, S, X2);
input  A, M0, M1, S, X2;
output PPN;
wire  A, M0, M1, PPN, S, X2, n$1, n$2, n$3, n$4, n$5, n$6, n$7, n$8, n$9, n$10, 
    n$11;
  or U$1(PPN, n$1, n$6);
  and U$2(n$1, X2, n$2);
  or U$3(n$2, n$3, n$4);
  and U$4(n$3, M0, A);
  and U$5(n$4, n$5, S);
  not U$6(n$5, M0);
  and U$7(n$6, n$7, n$8);
  not U$8(n$7, X2);
  or U$9(n$8, n$9, n$10);
  and U$10(n$9, M1, A);
  and U$11(n$10, n$11, S);
  not U$12(n$11, M1);
endmodule

module AOI33XL(A0, A1, A2, B0, B1, B2, Y);
input  A0, A1, A2, B0, B1, B2;
output Y;
wire  A0, A1, A2, B0, B1, B2, Y, n$1, n$2;
  nor U$1(Y, n$1, n$2);
  and U$2(n$1, A0, A1, A2);
  and U$3(n$2, B0, B1, B2);
endmodule

module AOI33X4(A0, A1, A2, B0, B1, B2, Y);
input  A0, A1, A2, B0, B1, B2;
output Y;
wire  A0, A1, A2, B0, B1, B2, Y, n$1, n$2;
  nor U$1(Y, n$1, n$2);
  and U$2(n$1, A0, A1, A2);
  and U$3(n$2, B0, B1, B2);
endmodule

module AOI33X2(A0, A1, A2, B0, B1, B2, Y);
input  A0, A1, A2, B0, B1, B2;
output Y;
wire  A0, A1, A2, B0, B1, B2, Y, n$1, n$2;
  nor U$1(Y, n$1, n$2);
  and U$2(n$1, A0, A1, A2);
  and U$3(n$2, B0, B1, B2);
endmodule

module AOI33X1(A0, A1, A2, B0, B1, B2, Y);
input  A0, A1, A2, B0, B1, B2;
output Y;
wire  A0, A1, A2, B0, B1, B2, Y, n$1, n$2;
  nor U$1(Y, n$1, n$2);
  and U$2(n$1, A0, A1, A2);
  and U$3(n$2, B0, B1, B2);
endmodule

module AOI32XL(A0, A1, A2, B0, B1, Y);
input  A0, A1, A2, B0, B1;
output Y;
wire  A0, A1, A2, B0, B1, Y, n$1, n$2;
  nor U$1(Y, n$1, n$2);
  and U$2(n$1, A0, A1, A2);
  and U$3(n$2, B0, B1);
endmodule

module AOI32X4(A0, A1, A2, B0, B1, Y);
input  A0, A1, A2, B0, B1;
output Y;
wire  A0, A1, A2, B0, B1, Y, n$1, n$2;
  nor U$1(Y, n$1, n$2);
  and U$2(n$1, A0, A1, A2);
  and U$3(n$2, B0, B1);
endmodule

module AOI32X2(A0, A1, A2, B0, B1, Y);
input  A0, A1, A2, B0, B1;
output Y;
wire  A0, A1, A2, B0, B1, Y, n$1, n$2;
  nor U$1(Y, n$1, n$2);
  and U$2(n$1, A0, A1, A2);
  and U$3(n$2, B0, B1);
endmodule

module AOI32X1(A0, A1, A2, B0, B1, Y);
input  A0, A1, A2, B0, B1;
output Y;
wire  A0, A1, A2, B0, B1, Y, n$1, n$2;
  nor U$1(Y, n$1, n$2);
  and U$2(n$1, A0, A1, A2);
  and U$3(n$2, B0, B1);
endmodule

module AOI31XL(A0, A1, A2, B0, Y);
input  A0, A1, A2, B0;
output Y;
wire  A0, A1, A2, B0, Y, n$1;
  nor U$1(Y, n$1, B0);
  and U$2(n$1, A0, A1, A2);
endmodule

module AOI31X4(A0, A1, A2, B0, Y);
input  A0, A1, A2, B0;
output Y;
wire  A0, A1, A2, B0, Y, n$1;
  nor U$1(Y, n$1, B0);
  and U$2(n$1, A0, A1, A2);
endmodule

module AOI31X2(A0, A1, A2, B0, Y);
input  A0, A1, A2, B0;
output Y;
wire  A0, A1, A2, B0, Y, n$1;
  nor U$1(Y, n$1, B0);
  and U$2(n$1, A0, A1, A2);
endmodule

module AOI31X1(A0, A1, A2, B0, Y);
input  A0, A1, A2, B0;
output Y;
wire  A0, A1, A2, B0, Y, n$1;
  nor U$1(Y, n$1, B0);
  and U$2(n$1, A0, A1, A2);
endmodule

module AOI2BB2XL(A0N, A1N, B0, B1, Y);
input  A0N, A1N, B0, B1;
output Y;
wire  A0N, A1N, B0, B1, Y, n$1, n$2, n$3, n$4;
  nor U$1(Y, n$1, n$4);
  and U$2(n$1, n$2, n$3);
  not U$3(n$2, A0N);
  not U$4(n$3, A1N);
  and U$5(n$4, B0, B1);
endmodule

module AOI2BB2X4(A0N, A1N, B0, B1, Y);
input  A0N, A1N, B0, B1;
output Y;
wire  A0N, A1N, B0, B1, Y, n$1, n$2, n$3, n$4;
  nor U$1(Y, n$1, n$4);
  and U$2(n$1, n$2, n$3);
  not U$3(n$2, A0N);
  not U$4(n$3, A1N);
  and U$5(n$4, B0, B1);
endmodule

module AOI2BB2X2(A0N, A1N, B0, B1, Y);
input  A0N, A1N, B0, B1;
output Y;
wire  A0N, A1N, B0, B1, Y, n$1, n$2, n$3, n$4;
  nor U$1(Y, n$1, n$4);
  and U$2(n$1, n$2, n$3);
  not U$3(n$2, A0N);
  not U$4(n$3, A1N);
  and U$5(n$4, B0, B1);
endmodule

module AOI2BB2X1(A0N, A1N, B0, B1, Y);
input  A0N, A1N, B0, B1;
output Y;
wire  A0N, A1N, B0, B1, Y, n$1, n$2, n$3, n$4;
  nor U$1(Y, n$1, n$4);
  and U$2(n$1, n$2, n$3);
  not U$3(n$2, A0N);
  not U$4(n$3, A1N);
  and U$5(n$4, B0, B1);
endmodule

module AOI2BB1XL(A0N, A1N, B0, Y);
input  A0N, A1N, B0;
output Y;
wire  A0N, A1N, B0, Y, n$1, n$2, n$3;
  nor U$1(Y, n$1, B0);
  and U$2(n$1, n$2, n$3);
  not U$3(n$2, A0N);
  not U$4(n$3, A1N);
endmodule

module AOI2BB1X4(A0N, A1N, B0, Y);
input  A0N, A1N, B0;
output Y;
wire  A0N, A1N, B0, Y, n$1, n$2, n$3;
  nor U$1(Y, n$1, B0);
  and U$2(n$1, n$2, n$3);
  not U$3(n$2, A0N);
  not U$4(n$3, A1N);
endmodule

module AOI2BB1X2(A0N, A1N, B0, Y);
input  A0N, A1N, B0;
output Y;
wire  A0N, A1N, B0, Y, n$1, n$2, n$3;
  nor U$1(Y, n$1, B0);
  and U$2(n$1, n$2, n$3);
  not U$3(n$2, A0N);
  not U$4(n$3, A1N);
endmodule

module AOI2BB1X1(A0N, A1N, B0, Y);
input  A0N, A1N, B0;
output Y;
wire  A0N, A1N, B0, Y, n$1, n$2, n$3;
  nor U$1(Y, n$1, B0);
  and U$2(n$1, n$2, n$3);
  not U$3(n$2, A0N);
  not U$4(n$3, A1N);
endmodule

module AOI22XL(A0, A1, B0, B1, Y);
input  A0, A1, B0, B1;
output Y;
wire  A0, A1, B0, B1, Y, n$1, n$2;
  nor U$1(Y, n$1, n$2);
  and U$2(n$1, A0, A1);
  and U$3(n$2, B0, B1);
endmodule

module AOI22X4(A0, A1, B0, B1, Y);
input  A0, A1, B0, B1;
output Y;
wire  A0, A1, B0, B1, Y, n$1, n$2;
  nor U$1(Y, n$1, n$2);
  and U$2(n$1, A0, A1);
  and U$3(n$2, B0, B1);
endmodule

module AOI22X2(A0, A1, B0, B1, Y);
input  A0, A1, B0, B1;
output Y;
wire  A0, A1, B0, B1, Y, n$1, n$2;
  nor U$1(Y, n$1, n$2);
  and U$2(n$1, A0, A1);
  and U$3(n$2, B0, B1);
endmodule

module AOI22X1(A0, A1, B0, B1, Y);
input  A0, A1, B0, B1;
output Y;
wire  A0, A1, B0, B1, Y, n$1, n$2;
  nor U$1(Y, n$1, n$2);
  and U$2(n$1, A0, A1);
  and U$3(n$2, B0, B1);
endmodule

module AOI222XL(A0, A1, B0, B1, C0, C1, Y);
input  A0, A1, C0, C1, B0, B1;
output Y;
wire  A0, A1, B0, B1, C0, C1, Y, n$1, n$2, n$3;
  nor U$1(Y, n$1, n$2, n$3);
  and U$2(n$1, A0, A1);
  and U$3(n$2, C0, C1);
  and U$4(n$3, B0, B1);
endmodule

module AOI222X4(A0, A1, B0, B1, C0, C1, Y);
input  C0, C1, A0, A1, B0, B1;
output Y;
wire  A0, A1, B0, B1, C0, C1, Y, n$1, n$2, n$3;
  nor U$1(Y, n$1, n$2, n$3);
  and U$2(n$1, C0, C1);
  and U$3(n$2, A0, A1);
  and U$4(n$3, B0, B1);
endmodule

module AOI222X2(A0, A1, B0, B1, C0, C1, Y);
input  A0, A1, C0, C1, B0, B1;
output Y;
wire  A0, A1, B0, B1, C0, C1, Y, n$1, n$2, n$3;
  nor U$1(Y, n$1, n$2, n$3);
  and U$2(n$1, A0, A1);
  and U$3(n$2, C0, C1);
  and U$4(n$3, B0, B1);
endmodule

module AOI222X1(A0, A1, B0, B1, C0, C1, Y);
input  A0, A1, C0, C1, B0, B1;
output Y;
wire  A0, A1, B0, B1, C0, C1, Y, n$1, n$2, n$3;
  nor U$1(Y, n$1, n$2, n$3);
  and U$2(n$1, A0, A1);
  and U$3(n$2, C0, C1);
  and U$4(n$3, B0, B1);
endmodule

module AOI221XL(A0, A1, B0, B1, C0, Y);
input  A0, A1, B0, B1, C0;
output Y;
wire  A0, A1, B0, B1, C0, Y, n$1, n$2;
  nor U$1(Y, n$1, n$2, C0);
  and U$2(n$1, A0, A1);
  and U$3(n$2, B0, B1);
endmodule

module AOI221X4(A0, A1, B0, B1, C0, Y);
input  A0, A1, B0, B1, C0;
output Y;
wire  A0, A1, B0, B1, C0, Y, n$1, n$2;
  nor U$1(Y, n$1, n$2, C0);
  and U$2(n$1, A0, A1);
  and U$3(n$2, B0, B1);
endmodule

module AOI221X2(A0, A1, B0, B1, C0, Y);
input  A0, A1, B0, B1, C0;
output Y;
wire  A0, A1, B0, B1, C0, Y, n$1, n$2;
  nor U$1(Y, n$1, n$2, C0);
  and U$2(n$1, A0, A1);
  and U$3(n$2, B0, B1);
endmodule

module AOI221X1(A0, A1, B0, B1, C0, Y);
input  A0, A1, B0, B1, C0;
output Y;
wire  A0, A1, B0, B1, C0, Y, n$1, n$2;
  nor U$1(Y, n$1, n$2, C0);
  and U$2(n$1, A0, A1);
  and U$3(n$2, B0, B1);
endmodule

module AOI21XL(A0, A1, B0, Y);
input  A0, A1, B0;
output Y;
wire  A0, A1, B0, Y, n$1;
  nor U$1(Y, n$1, B0);
  and U$2(n$1, A0, A1);
endmodule

module AOI21X4(A0, A1, B0, Y);
input  A0, A1, B0;
output Y;
wire  A0, A1, B0, Y, n$1;
  nor U$1(Y, n$1, B0);
  and U$2(n$1, A0, A1);
endmodule

module AOI21X2(A0, A1, B0, Y);
input  A0, A1, B0;
output Y;
wire  A0, A1, B0, Y, n$1;
  nor U$1(Y, n$1, B0);
  and U$2(n$1, A0, A1);
endmodule

module AOI21X1(A0, A1, B0, Y);
input  A0, A1, B0;
output Y;
wire  A0, A1, B0, Y, n$1;
  nor U$1(Y, n$1, B0);
  and U$2(n$1, A0, A1);
endmodule

module AOI211XL(A0, A1, B0, C0, Y);
input  A0, A1, B0, C0;
output Y;
wire  A0, A1, B0, C0, Y, n$1;
  nor U$1(Y, n$1, B0, C0);
  and U$2(n$1, A0, A1);
endmodule

module AOI211X4(A0, A1, B0, C0, Y);
input  A0, A1, B0, C0;
output Y;
wire  A0, A1, B0, C0, Y, n$1;
  nor U$1(Y, n$1, B0, C0);
  and U$2(n$1, A0, A1);
endmodule

module AOI211X2(A0, A1, B0, C0, Y);
input  A0, A1, B0, C0;
output Y;
wire  A0, A1, B0, C0, Y, n$1;
  nor U$1(Y, n$1, B0, C0);
  and U$2(n$1, A0, A1);
endmodule

module AOI211X1(A0, A1, B0, C0, Y);
input  A0, A1, B0, C0;
output Y;
wire  A0, A1, B0, C0, Y, n$1;
  nor U$1(Y, n$1, B0, C0);
  and U$2(n$1, A0, A1);
endmodule

module AO22XL(A0, A1, B0, B1, Y);
input  A0, A1, B0, B1;
output Y;
wire  A0, A1, B0, B1, Y, n$1, n$2;
  or U$1(Y, n$1, n$2);
  and U$2(n$1, A0, A1);
  and U$3(n$2, B0, B1);
endmodule

module AO22X4(A0, A1, B0, B1, Y);
input  A0, A1, B0, B1;
output Y;
wire  A0, A1, B0, B1, Y, n$1, n$2;
  or U$1(Y, n$1, n$2);
  and U$2(n$1, A0, A1);
  and U$3(n$2, B0, B1);
endmodule

module AO22X2(A0, A1, B0, B1, Y);
input  A0, A1, B0, B1;
output Y;
wire  A0, A1, B0, B1, Y, n$1, n$2;
  or U$1(Y, n$1, n$2);
  and U$2(n$1, A0, A1);
  and U$3(n$2, B0, B1);
endmodule

module AO22X1(A0, A1, B0, B1, Y);
input  A0, A1, B0, B1;
output Y;
wire  A0, A1, B0, B1, Y, n$1, n$2;
  or U$1(Y, n$1, n$2);
  and U$2(n$1, A0, A1);
  and U$3(n$2, B0, B1);
endmodule

module AO21XL(A0, A1, B0, Y);
input  A0, A1, B0;
output Y;
wire  A0, A1, B0, Y, n$1;
  or U$1(Y, n$1, B0);
  and U$2(n$1, A0, A1);
endmodule

module AO21X4(A0, A1, B0, Y);
input  A0, A1, B0;
output Y;
wire  A0, A1, B0, Y, n$1;
  or U$1(Y, n$1, B0);
  and U$2(n$1, A0, A1);
endmodule

module AO21X2(A0, A1, B0, Y);
input  A0, A1, B0;
output Y;
wire  A0, A1, B0, Y, n$1;
  or U$1(Y, n$1, B0);
  and U$2(n$1, A0, A1);
endmodule

module AO21X1(A0, A1, B0, Y);
input  A0, A1, B0;
output Y;
wire  A0, A1, B0, Y, n$1;
  or U$1(Y, n$1, B0);
  and U$2(n$1, A0, A1);
endmodule

module AND4XL(A, B, C, D, Y);
input  A, B, C, D;
output Y;
wire  A, B, C, D, Y;
  and U$1(Y, A, B, C, D);
endmodule

module AND4X8(A, B, C, D, Y);
input  A, B, C, D;
output Y;
wire  A, B, C, D, Y;
  and U$1(Y, A, B, C, D);
endmodule

module AND4X6(A, B, C, D, Y);
input  A, B, C, D;
output Y;
wire  A, B, C, D, Y;
  and U$1(Y, A, B, C, D);
endmodule

module AND4X4(A, B, C, D, Y);
input  A, B, C, D;
output Y;
wire  A, B, C, D, Y;
  and U$1(Y, A, B, C, D);
endmodule

module AND4X2(A, B, C, D, Y);
input  A, B, C, D;
output Y;
wire  A, B, C, D, Y;
  and U$1(Y, A, B, C, D);
endmodule

module AND4X1(A, B, C, D, Y);
input  A, B, C, D;
output Y;
wire  A, B, C, D, Y;
  and U$1(Y, A, B, C, D);
endmodule

module AND3XL(A, B, C, Y);
input  A, B, C;
output Y;
wire  A, B, C, Y;
  and U$1(Y, A, B, C);
endmodule

module AND3X8(A, B, C, Y);
input  A, B, C;
output Y;
wire  A, B, C, Y;
  and U$1(Y, A, B, C);
endmodule

module AND3X6(A, B, C, Y);
input  A, B, C;
output Y;
wire  A, B, C, Y;
  and U$1(Y, A, B, C);
endmodule

module AND3X4(A, B, C, Y);
input  A, B, C;
output Y;
wire  A, B, C, Y;
  and U$1(Y, A, B, C);
endmodule

module AND3X2(A, B, C, Y);
input  A, B, C;
output Y;
wire  A, B, C, Y;
  and U$1(Y, A, B, C);
endmodule

module AND3X1(A, B, C, Y);
input  A, B, C;
output Y;
wire  A, B, C, Y;
  and U$1(Y, A, B, C);
endmodule

module AND2XL(A, B, Y);
input  A, B;
output Y;
wire  A, B, Y;
  and U$1(Y, A, B);
endmodule

module AND2X8(A, B, Y);
input  A, B;
output Y;
wire  A, B, Y;
  and U$1(Y, A, B);
endmodule

module AND2X6(A, B, Y);
input  A, B;
output Y;
wire  A, B, Y;
  and U$1(Y, A, B);
endmodule

module AND2X4(A, B, Y);
input  A, B;
output Y;
wire  A, B, Y;
  and U$1(Y, A, B);
endmodule

module AND2X2(A, B, Y);
input  A, B;
output Y;
wire  A, B, Y;
  and U$1(Y, A, B);
endmodule

module AND2X1(A, B, Y);
input  A, B;
output Y;
wire  A, B, Y;
  and U$1(Y, A, B);
endmodule

module ADDHXL(A, B, CO, S);
input  A, B;
output CO, S;
wire  A, B, CO, S;
  and U$1(CO, A, B);
  xor U$2(S, A, B);
endmodule

module ADDHX4(A, B, CO, S);
input  A, B;
output CO, S;
wire  A, B, CO, S;
  and U$1(CO, A, B);
  xor U$2(S, A, B);
endmodule

module ADDHX2(A, B, CO, S);
input  A, B;
output CO, S;
wire  A, B, CO, S;
  and U$1(CO, A, B);
  xor U$2(S, A, B);
endmodule

module ADDHX1(A, B, CO, S);
input  A, B;
output CO, S;
wire  A, B, CO, S;
  and U$1(CO, A, B);
  xor U$2(S, A, B);
endmodule

module ADDFXL(A, B, CI, CO, S);
input  A, B, CI;
output CO, S;
wire  A, B, CI, CO, S, n$1, n$2, n$3;
  or U$1(CO, n$1, n$2, n$3);
  and U$2(n$1, A, B);
  and U$3(n$2, B, CI);
  and U$4(n$3, CI, A);
  xor U$5(S, A, B, CI);
endmodule

module ADDFX4(A, B, CI, CO, S);
input  A, B, CI;
output CO, S;
wire  A, B, CI, CO, S, n$1, n$2, n$3;
  or U$1(CO, n$1, n$2, n$3);
  and U$2(n$1, A, B);
  and U$3(n$2, B, CI);
  and U$4(n$3, CI, A);
  xor U$5(S, A, B, CI);
endmodule

module ADDFX2(A, B, CI, CO, S);
input  A, B, CI;
output CO, S;
wire  A, B, CI, CO, S, n$1, n$2, n$3;
  or U$1(CO, n$1, n$2, n$3);
  and U$2(n$1, A, B);
  and U$3(n$2, B, CI);
  and U$4(n$3, CI, A);
  xor U$5(S, A, B, CI);
endmodule

module ADDFX1(A, B, CI, CO, S);
input  A, B, CI;
output CO, S;
wire  A, B, CI, CO, S, n$1, n$2, n$3;
  or U$1(CO, n$1, n$2, n$3);
  and U$2(n$1, A, B);
  and U$3(n$2, B, CI);
  and U$4(n$3, CI, A);
  xor U$5(S, A, B, CI);
endmodule

module ADDFHXL(A, B, CI, CO, S);
input  A, B, CI;
output CO, S;
wire  A, B, CI, CO, S, n$1, n$2, n$3;
  or U$1(CO, n$1, n$2, n$3);
  and U$2(n$1, A, B);
  and U$3(n$2, B, CI);
  and U$4(n$3, CI, A);
  xor U$5(S, A, B, CI);
endmodule

module ADDFHX4(A, B, CI, CO, S);
input  A, B, CI;
output CO, S;
wire  A, B, CI, CO, S, n$1, n$2, n$3;
  or U$1(CO, n$1, n$2, n$3);
  and U$2(n$1, A, B);
  and U$3(n$2, B, CI);
  and U$4(n$3, CI, A);
  xor U$5(S, A, B, CI);
endmodule

module ADDFHX2(A, B, CI, CO, S);
input  A, B, CI;
output CO, S;
wire  A, B, CI, CO, S, n$1, n$2, n$3;
  or U$1(CO, n$1, n$2, n$3);
  and U$2(n$1, A, B);
  and U$3(n$2, B, CI);
  and U$4(n$3, CI, A);
  xor U$5(S, A, B, CI);
endmodule

module ADDFHX1(A, B, CI, CO, S);
input  A, B, CI;
output CO, S;
wire  A, B, CI, CO, S, n$1, n$2, n$3;
  or U$1(CO, n$1, n$2, n$3);
  and U$2(n$1, A, B);
  and U$3(n$2, B, CI);
  and U$4(n$3, CI, A);
  xor U$5(S, A, B, CI);
endmodule

module ACHCONX2(A, B, CI, CON);
input  A, B, CI;
output CON;
wire  A, B, CI, CON, n$1, n$2, n$3;
  nor U$1(CON, n$1, n$2, n$3);
  and U$2(n$1, A, B);
  and U$3(n$2, B, CI);
  and U$4(n$3, CI, A);
endmodule

module _HDFF_verplex(Q, QN, S, R, CK, D);
// verplex DFF
output  Q, QN;
input   S, R, CK, D;
wire   N1;
  DFF_UDP  i0(N1, S, R, CK, D);
  buf  (Q, N1);
  not  (QN, N1);
endmodule

primitive DFF_UDP(Q, S, R, CK, D);
output Q;
input  S, R, CK, D;
reg    Q;
  table
    1  0   ?    ?  :  ?  :  1; // Asserting preset
    *  0   ?    ?  :  1  :  1; // Changing preset
    ?  1   ?    ?  :  ?  :  0; // Asserting reset (dominates preset)
    0  *   ?    ?  :  0  :  0; // Changing reset
    0  ?   (01) 0  :  ?  :  0; // rising clock
    ?  0   (01) 1  :  ?  :  1; // rising clock 
    0  ?   p    0  :  0  :  0; // potential rising clock
    ?  0   p    1  :  1  :  1; // potential rising clock
    0  0   n    ?  :  ?  :  -; // Clock falling register output does not change
    0  0   ?    *  :  ?  :  -; // Changing Data
  endtable
endprimitive

module _HDLAT_verplex(Q, QN, S, R, CK, D);
// verplex DLAT
output  Q, QN;
input   S, R, CK, D;
wire   N1;
  DLAT_UDP i0(N1, S, R, CK, D);
  buf  (Q, N1);
  not  (QN, N1);
endmodule

primitive DLAT_UDP(Q, S, R, CK, D);
output Q;
input  S, R, CK, D;
reg    Q;
  table
    1  0   ?    ?  :  ?  :  1; // Asserting preset
    ?  1   ?    ?  :  ?  :  0; // Asserting reset (dominates preset)
    0  0   1    0  :  ?  :  0; // Data clocked
    0  ?   *    0  :  0  :  0; // Clock transitions
    0  *   0    ?  :  0  :  0; // Changing reset
    0  *   ?    0  :  0  :  0;
    0  0   1    1  :  ?  :  1; // Data clocked
    *  0   0    ?  :  1  :  1; // Changing preset
    *  0   ?    1  :  1  :  1;
    ?  0   *    1  :  1  :  1; // Clock transitions
    0  0   0    ?  :  ?  :  -; // Hold
  endtable
endprimitive

