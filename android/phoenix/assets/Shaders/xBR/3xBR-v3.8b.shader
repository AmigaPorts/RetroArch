<?xml version="1.0" encoding="UTF-8"?>
<!-- XML/GLSL shader autogenerated by cg2xml.py -->
<shader language="GLSL" style="GLES2">
    <vertex><![CDATA[
varying     vec2 pos;
varying     vec4 t7;
varying     vec4 t6;
varying     vec4 t5;
varying     vec4 t4;
varying     vec4 t3;
varying     vec4 t2;
varying     vec4 t1;
varying     vec2 _texCoord1;
varying     vec4 _color1;
varying     vec4 position1;
varying     vec2 _output_dummy_size;
struct input_dummy {
    vec2 _video_size;
    vec2 _texture_size;
    vec2 _output_dummy_size;
};
struct out_vertex {
    vec4 position1;
    vec4 _color1;
    vec2 _texCoord1;
    vec4 t1;
    vec4 t2;
    vec4 t3;
    vec4 t4;
    vec4 t5;
    vec4 t6;
    vec4 t7;
    vec2 pos;
};
out_vertex _ret_0;
float _TMP0;
uniform mat4 rubyMVPMatrix;
uniform input_dummy _IN1;
vec4 _r0006;
attribute vec4 rubyVertexCoord;
attribute vec4 COLOR;
attribute vec4 rubyTexCoord;
varying vec4 COL0;
varying vec4 TEX0;
 

         mat4 transpose_(mat4 matrix)
         {
            mat4 ret;
            for (int i = 0; i < 4; i++)
               for (int j = 0; j < 4; j++)
                  ret[i][j] = matrix[j][i];

            return ret;
         }
         
uniform mediump vec2 rubyOutputSize;
uniform mediump vec2 rubyTextureSize;
uniform mediump vec2 rubyInputSize;
void main()
{
    mat4 rubyMVPMatrix_ = transpose_(rubyMVPMatrix);
    out_vertex _OUT;
    vec2 _ps;
    _TMP0 = dot(vec4(float(rubyMVPMatrix_[0].x), float(rubyMVPMatrix_[0].y), float(rubyMVPMatrix_[0].z), float(rubyMVPMatrix_[0].w)), vec4(float(rubyVertexCoord.x), float(rubyVertexCoord.y), float(rubyVertexCoord.z), float(rubyVertexCoord.w)));
    _r0006.x = float(_TMP0);
    _TMP0 = dot(vec4(float(rubyMVPMatrix_[1].x), float(rubyMVPMatrix_[1].y), float(rubyMVPMatrix_[1].z), float(rubyMVPMatrix_[1].w)), vec4(float(rubyVertexCoord.x), float(rubyVertexCoord.y), float(rubyVertexCoord.z), float(rubyVertexCoord.w)));
    _r0006.y = float(_TMP0);
    _TMP0 = dot(vec4(float(rubyMVPMatrix_[2].x), float(rubyMVPMatrix_[2].y), float(rubyMVPMatrix_[2].z), float(rubyMVPMatrix_[2].w)), vec4(float(rubyVertexCoord.x), float(rubyVertexCoord.y), float(rubyVertexCoord.z), float(rubyVertexCoord.w)));
    _r0006.z = float(_TMP0);
    _TMP0 = dot(vec4(float(rubyMVPMatrix_[3].x), float(rubyMVPMatrix_[3].y), float(rubyMVPMatrix_[3].z), float(rubyMVPMatrix_[3].w)), vec4(float(rubyVertexCoord.x), float(rubyVertexCoord.y), float(rubyVertexCoord.z), float(rubyVertexCoord.w)));
    _r0006.w = float(_TMP0);
    _ps = vec2(1.00000000E+00/rubyTextureSize.x, 1.00000000E+00/rubyTextureSize.y);
    _OUT.t1 = rubyTexCoord.xxxy + vec4(float(float(-_ps.x)), 0.00000000E+00, float(float(_ps.x)), float(float((-2.00000000E+00*_ps.y))));
    _OUT.t2 = rubyTexCoord.xxxy + vec4(float(float(-_ps.x)), 0.00000000E+00, float(float(_ps.x)), float(float(-_ps.y)));
    _OUT.t3 = rubyTexCoord.xxxy + vec4(float(float(-_ps.x)), 0.00000000E+00, float(float(_ps.x)), 0.00000000E+00);
    _OUT.t4 = rubyTexCoord.xxxy + vec4(float(float(-_ps.x)), 0.00000000E+00, float(float(_ps.x)), float(float(_ps.y)));
    _OUT.t5 = rubyTexCoord.xxxy + vec4(float(float(-_ps.x)), 0.00000000E+00, float(float(_ps.x)), float(float((2.00000000E+00*_ps.y))));
    _OUT.t6 = rubyTexCoord.xyyy + vec4(float(float((-2.00000000E+00*_ps.x))), float(float(-_ps.y)), 0.00000000E+00, float(float(_ps.y)));
    _OUT.t7 = rubyTexCoord.xyyy + vec4(float(float((2.00000000E+00*_ps.x))), float(float(-_ps.y)), 0.00000000E+00, float(float(_ps.y)));
    _OUT.pos = rubyTexCoord.xy*rubyTextureSize;
    position1 = _r0006;
    _color1 = COLOR;
    _texCoord1 = rubyTexCoord.xy;
    t1 = _OUT.t1;
    t2 = _OUT.t2;
    t3 = _OUT.t3;
    t4 = _OUT.t4;
    t5 = _OUT.t5;
    t6 = _OUT.t6;
    t7 = _OUT.t7;
    pos = _OUT.pos;
    gl_Position = vec4(float(_r0006.x), float(_r0006.y), float(_r0006.z), float(_r0006.w));
    COL0 = COLOR;
    TEX0.xy = rubyTexCoord.xy;
    return;
    COL0 = _color1;
    TEX0.xy = _texCoord1;
} 
 ]]></vertex>
    <fragment><![CDATA[
#ifdef GL_ES
precision mediump float;
#endif
varying     vec2 pos;
varying     vec4 t7;
varying     vec4 t6;
varying     vec4 t5;
varying     vec4 t4;
varying     vec4 t3;
varying     vec4 t2;
varying     vec4 t1;
varying     vec2 _texCoord;
varying     vec4 _color;
varying     vec2 _output_dummy_size;
struct input_dummy {
    vec2 _video_size;
    vec2 _texture_size;
    vec2 _output_dummy_size;
};
struct out_vertex {
    vec4 _color;
    vec2 _texCoord;
    vec4 t1;
    vec4 t2;
    vec4 t3;
    vec4 t4;
    vec4 t5;
    vec4 t6;
    vec4 t7;
    vec2 pos;
};
vec4 _ret_0;
float _TMP53;
float _TMP52;
float _TMP51;
vec3 _TMP61;
vec3 _TMP50;
vec3 _TMP49;
vec3 _TMP48;
vec3 _TMP47;
vec3 _TMP46;
vec3 _TMP45;
vec3 _TMP44;
vec3 _TMP43;
vec4 _TMP42;
vec4 _TMP35;
vec4 _TMP34;
vec4 _TMP62;
bvec4 _TMP33;
bvec4 _TMP32;
bvec4 _TMP31;
bvec4 _TMP30;
bvec4 _TMP29;
bvec4 _TMP28;
bvec4 _TMP27;
float _TMP60;
vec4 _TMP20;
vec4 _TMP19;
vec4 _TMP18;
vec4 _TMP17;
vec4 _TMP16;
vec4 _TMP15;
vec4 _TMP14;
vec4 _TMP13;
vec4 _TMP12;
vec4 _TMP11;
vec4 _TMP10;
vec4 _TMP9;
vec4 _TMP8;
vec4 _TMP7;
vec4 _TMP6;
vec4 _TMP5;
vec4 _TMP4;
vec4 _TMP3;
vec4 _TMP2;
vec4 _TMP1;
vec4 _TMP0;
out_vertex _VAR1;
uniform sampler2D rubyTexture;
vec4 _r0120;
vec4 _r0130;
vec4 _r0140;
vec4 _r0150;
vec4 _r0160;
vec4 _r0170;
vec4 _TMP181;
vec4 _a0184;
vec4 _TMP187;
vec4 _a0190;
vec4 _TMP193;
vec4 _a0196;
vec4 _TMP199;
vec4 _a0202;
vec4 _TMP205;
vec4 _a0208;
vec4 _TMP211;
vec4 _a0214;
vec4 _TMP217;
vec4 _a0220;
vec4 _x0224;
vec4 _TMP225;
vec4 _x0234;
vec4 _TMP235;
vec4 _x0244;
vec4 _TMP245;
vec4 _TMP253;
vec4 _a0256;
vec4 _TMP257;
vec4 _a0260;
vec4 _TMP261;
vec4 _a0264;
vec4 _TMP265;
vec4 _a0268;
vec4 _TMP269;
vec4 _a0272;
vec4 _TMP275;
vec4 _a0278;
vec4 _TMP279;
vec4 _a0282;
vec4 _TMP283;
vec4 _a0286;
vec4 _TMP287;
vec4 _a0290;
vec4 _TMP291;
vec4 _a0294;
vec4 _TMP295;
vec4 _a0298;
vec4 _TMP299;
vec4 _a0302;
vec4 _TMP303;
vec4 _a0306;
vec4 _TMP307;
vec4 _a0310;
vec4 _TMP311;
vec4 _a0314;
vec4 _TMP315;
vec4 _a0318;
float _t0324;
float _t0326;
vec3 _df0328;
vec3 _a0330;
vec3 _df0332;
vec3 _a0334;
 
uniform mediump vec2 rubyOutputSize;
uniform mediump vec2 rubyTextureSize;
uniform mediump vec2 rubyInputSize;
void main()
{
    bvec4 _edr;
    bvec4 _edr_left;
    bvec4 _edr_up;
    bvec4 _px;
    bvec4 _interp_restriction_lv1;
    bvec4 _interp_restriction_lv2_left;
    bvec4 _interp_restriction_lv2_up;
    bvec4 _nc;
    bvec4 _nc30;
    bvec4 _nc60;
    bvec4 _nc45;
    vec4 _fx;
    vec4 _fx_left;
    vec4 _fx_up;
    vec3 _res1;
    vec3 _res2;
    vec3 _pix1;
    vec3 _pix2;
    float _blend1;
    float _blend2;
    vec2 _fp;
    vec3 _A11;
    vec3 _B11;
    vec3 _C1;
    vec3 _A2;
    vec3 _B2;
    vec3 _C;
    vec3 _D;
    vec3 _E;
    vec3 _F;
    vec3 _G;
    vec3 _H;
    vec3 _I;
    vec3 _G5;
    vec3 _H5;
    vec3 _I5;
    vec3 _A0;
    vec3 _D0;
    vec3 _G0;
    vec3 _C4;
    vec3 _F4;
    vec3 _I4;
    vec4 _b1;
    vec4 _c3;
    vec4 _e1;
    vec4 _i4;
    vec4 _i5;
    vec4 _h5;
    vec4 _fx45;
    vec4 _fx30;
    vec4 _fx60;
    vec4 _final45;
    vec4 _final30;
    vec4 _final60;
    vec4 _maximo;
    vec3 _res;
    _fp = fract(pos);
    _TMP0 = texture2D(rubyTexture, t1.xw);
    _A11 = vec3(float(_TMP0.x), float(_TMP0.y), float(_TMP0.z));
    _TMP1 = texture2D(rubyTexture, t1.yw);
    _B11 = vec3(float(_TMP1.x), float(_TMP1.y), float(_TMP1.z));
    _TMP2 = texture2D(rubyTexture, t1.zw);
    _C1 = vec3(float(_TMP2.x), float(_TMP2.y), float(_TMP2.z));
    _TMP3 = texture2D(rubyTexture, t2.xw);
    _A2 = vec3(float(_TMP3.x), float(_TMP3.y), float(_TMP3.z));
    _TMP4 = texture2D(rubyTexture, t2.yw);
    _B2 = vec3(float(_TMP4.x), float(_TMP4.y), float(_TMP4.z));
    _TMP5 = texture2D(rubyTexture, t2.zw);
    _C = vec3(float(_TMP5.x), float(_TMP5.y), float(_TMP5.z));
    _TMP6 = texture2D(rubyTexture, t3.xw);
    _D = vec3(float(_TMP6.x), float(_TMP6.y), float(_TMP6.z));
    _TMP7 = texture2D(rubyTexture, t3.yw);
    _E = vec3(float(_TMP7.x), float(_TMP7.y), float(_TMP7.z));
    _TMP8 = texture2D(rubyTexture, t3.zw);
    _F = vec3(float(_TMP8.x), float(_TMP8.y), float(_TMP8.z));
    _TMP9 = texture2D(rubyTexture, t4.xw);
    _G = vec3(float(_TMP9.x), float(_TMP9.y), float(_TMP9.z));
    _TMP10 = texture2D(rubyTexture, t4.yw);
    _H = vec3(float(_TMP10.x), float(_TMP10.y), float(_TMP10.z));
    _TMP11 = texture2D(rubyTexture, t4.zw);
    _I = vec3(float(_TMP11.x), float(_TMP11.y), float(_TMP11.z));
    _TMP12 = texture2D(rubyTexture, t5.xw);
    _G5 = vec3(float(_TMP12.x), float(_TMP12.y), float(_TMP12.z));
    _TMP13 = texture2D(rubyTexture, t5.yw);
    _H5 = vec3(float(_TMP13.x), float(_TMP13.y), float(_TMP13.z));
    _TMP14 = texture2D(rubyTexture, t5.zw);
    _I5 = vec3(float(_TMP14.x), float(_TMP14.y), float(_TMP14.z));
    _TMP15 = texture2D(rubyTexture, t6.xy);
    _A0 = vec3(float(_TMP15.x), float(_TMP15.y), float(_TMP15.z));
    _TMP16 = texture2D(rubyTexture, t6.xz);
    _D0 = vec3(float(_TMP16.x), float(_TMP16.y), float(_TMP16.z));
    _TMP17 = texture2D(rubyTexture, t6.xw);
    _G0 = vec3(float(_TMP17.x), float(_TMP17.y), float(_TMP17.z));
    _TMP18 = texture2D(rubyTexture, t7.xy);
    _C4 = vec3(float(_TMP18.x), float(_TMP18.y), float(_TMP18.z));
    _TMP19 = texture2D(rubyTexture, t7.xz);
    _F4 = vec3(float(_TMP19.x), float(_TMP19.y), float(_TMP19.z));
    _TMP20 = texture2D(rubyTexture, t7.xw);
    _I4 = vec3(float(_TMP20.x), float(_TMP20.y), float(_TMP20.z));
    _TMP60 = dot(vec3(float(_B2.x), float(_B2.y), float(_B2.z)), vec3( 1.43593750E+01, 2.81718750E+01, 5.47265625E+00));
    _r0120.x = float(_TMP60);
    _TMP60 = dot(vec3(float(_D.x), float(_D.y), float(_D.z)), vec3( 1.43593750E+01, 2.81718750E+01, 5.47265625E+00));
    _r0120.y = float(_TMP60);
    _TMP60 = dot(vec3(float(_H.x), float(_H.y), float(_H.z)), vec3( 1.43593750E+01, 2.81718750E+01, 5.47265625E+00));
    _r0120.z = float(_TMP60);
    _TMP60 = dot(vec3(float(_F.x), float(_F.y), float(_F.z)), vec3( 1.43593750E+01, 2.81718750E+01, 5.47265625E+00));
    _r0120.w = float(_TMP60);
    _b1 = vec4(float(_r0120.x), float(_r0120.y), float(_r0120.z), float(_r0120.w));
    _TMP60 = dot(vec3(float(_C.x), float(_C.y), float(_C.z)), vec3( 1.43593750E+01, 2.81718750E+01, 5.47265625E+00));
    _r0130.x = float(_TMP60);
    _TMP60 = dot(vec3(float(_A2.x), float(_A2.y), float(_A2.z)), vec3( 1.43593750E+01, 2.81718750E+01, 5.47265625E+00));
    _r0130.y = float(_TMP60);
    _TMP60 = dot(vec3(float(_G.x), float(_G.y), float(_G.z)), vec3( 1.43593750E+01, 2.81718750E+01, 5.47265625E+00));
    _r0130.z = float(_TMP60);
    _TMP60 = dot(vec3(float(_I.x), float(_I.y), float(_I.z)), vec3( 1.43593750E+01, 2.81718750E+01, 5.47265625E+00));
    _r0130.w = float(_TMP60);
    _c3 = vec4(float(_r0130.x), float(_r0130.y), float(_r0130.z), float(_r0130.w));
    _TMP60 = dot(vec3(float(_E.x), float(_E.y), float(_E.z)), vec3( 1.43593750E+01, 2.81718750E+01, 5.47265625E+00));
    _r0140.x = float(_TMP60);
    _TMP60 = dot(vec3(float(_E.x), float(_E.y), float(_E.z)), vec3( 1.43593750E+01, 2.81718750E+01, 5.47265625E+00));
    _r0140.y = float(_TMP60);
    _TMP60 = dot(vec3(float(_E.x), float(_E.y), float(_E.z)), vec3( 1.43593750E+01, 2.81718750E+01, 5.47265625E+00));
    _r0140.z = float(_TMP60);
    _TMP60 = dot(vec3(float(_E.x), float(_E.y), float(_E.z)), vec3( 1.43593750E+01, 2.81718750E+01, 5.47265625E+00));
    _r0140.w = float(_TMP60);
    _e1 = vec4(float(_r0140.x), float(_r0140.y), float(_r0140.z), float(_r0140.w));
    _TMP60 = dot(vec3(float(_I4.x), float(_I4.y), float(_I4.z)), vec3( 1.43593750E+01, 2.81718750E+01, 5.47265625E+00));
    _r0150.x = float(_TMP60);
    _TMP60 = dot(vec3(float(_C1.x), float(_C1.y), float(_C1.z)), vec3( 1.43593750E+01, 2.81718750E+01, 5.47265625E+00));
    _r0150.y = float(_TMP60);
    _TMP60 = dot(vec3(float(_A0.x), float(_A0.y), float(_A0.z)), vec3( 1.43593750E+01, 2.81718750E+01, 5.47265625E+00));
    _r0150.z = float(_TMP60);
    _TMP60 = dot(vec3(float(_G5.x), float(_G5.y), float(_G5.z)), vec3( 1.43593750E+01, 2.81718750E+01, 5.47265625E+00));
    _r0150.w = float(_TMP60);
    _i4 = vec4(float(_r0150.x), float(_r0150.y), float(_r0150.z), float(_r0150.w));
    _TMP60 = dot(vec3(float(_I5.x), float(_I5.y), float(_I5.z)), vec3( 1.43593750E+01, 2.81718750E+01, 5.47265625E+00));
    _r0160.x = float(_TMP60);
    _TMP60 = dot(vec3(float(_C4.x), float(_C4.y), float(_C4.z)), vec3( 1.43593750E+01, 2.81718750E+01, 5.47265625E+00));
    _r0160.y = float(_TMP60);
    _TMP60 = dot(vec3(float(_A11.x), float(_A11.y), float(_A11.z)), vec3( 1.43593750E+01, 2.81718750E+01, 5.47265625E+00));
    _r0160.z = float(_TMP60);
    _TMP60 = dot(vec3(float(_G0.x), float(_G0.y), float(_G0.z)), vec3( 1.43593750E+01, 2.81718750E+01, 5.47265625E+00));
    _r0160.w = float(_TMP60);
    _i5 = vec4(float(_r0160.x), float(_r0160.y), float(_r0160.z), float(_r0160.w));
    _TMP60 = dot(vec3(float(_H5.x), float(_H5.y), float(_H5.z)), vec3( 1.43593750E+01, 2.81718750E+01, 5.47265625E+00));
    _r0170.x = float(_TMP60);
    _TMP60 = dot(vec3(float(_F4.x), float(_F4.y), float(_F4.z)), vec3( 1.43593750E+01, 2.81718750E+01, 5.47265625E+00));
    _r0170.y = float(_TMP60);
    _TMP60 = dot(vec3(float(_B11.x), float(_B11.y), float(_B11.z)), vec3( 1.43593750E+01, 2.81718750E+01, 5.47265625E+00));
    _r0170.z = float(_TMP60);
    _TMP60 = dot(vec3(float(_D0.x), float(_D0.y), float(_D0.z)), vec3( 1.43593750E+01, 2.81718750E+01, 5.47265625E+00));
    _r0170.w = float(_TMP60);
    _h5 = vec4(float(_r0170.x), float(_r0170.y), float(_r0170.z), float(_r0170.w));
    _fx = vec4( 1.00000000E+00, -1.00000000E+00, -1.00000000E+00, 1.00000000E+00)*_fp.y + vec4( 1.00000000E+00, 1.00000000E+00, -1.00000000E+00, -1.00000000E+00)*_fp.x;
    _fx_left = vec4( 1.00000000E+00, -1.00000000E+00, -1.00000000E+00, 1.00000000E+00)*_fp.y + vec4( 5.00000000E-01, 2.00000000E+00, -5.00000000E-01, -2.00000000E+00)*_fp.x;
    _fx_up = vec4( 1.00000000E+00, -1.00000000E+00, -1.00000000E+00, 1.00000000E+00)*_fp.y + vec4( 2.00000000E+00, 5.00000000E-01, -2.00000000E+00, -5.00000000E-01)*_fp.x;
    _a0184 = _b1.wxyz - _b1;
    _TMP181 = abs(_a0184);
    _TMP27 = bvec4(_TMP181.x < 1.50000000E+01, _TMP181.y < 1.50000000E+01, _TMP181.z < 1.50000000E+01, _TMP181.w < 1.50000000E+01);
    _a0190 = _b1.zwxy - _b1.yzwx;
    _TMP187 = abs(_a0190);
    _TMP28 = bvec4(_TMP187.x < 1.50000000E+01, _TMP187.y < 1.50000000E+01, _TMP187.z < 1.50000000E+01, _TMP187.w < 1.50000000E+01);
    _a0196 = _e1 - _c3.wxyz;
    _TMP193 = abs(_a0196);
    _TMP29 = bvec4(_TMP193.x < 1.50000000E+01, _TMP193.y < 1.50000000E+01, _TMP193.z < 1.50000000E+01, _TMP193.w < 1.50000000E+01);
    _a0202 = _b1.wxyz - _i4;
    _TMP199 = abs(_a0202);
    _TMP30 = bvec4(_TMP199.x < 1.50000000E+01, _TMP199.y < 1.50000000E+01, _TMP199.z < 1.50000000E+01, _TMP199.w < 1.50000000E+01);
    _a0208 = _b1.zwxy - _i5;
    _TMP205 = abs(_a0208);
    _TMP31 = bvec4(_TMP205.x < 1.50000000E+01, _TMP205.y < 1.50000000E+01, _TMP205.z < 1.50000000E+01, _TMP205.w < 1.50000000E+01);
    _a0214 = _e1 - _c3.zwxy;
    _TMP211 = abs(_a0214);
    _TMP32 = bvec4(_TMP211.x < 1.50000000E+01, _TMP211.y < 1.50000000E+01, _TMP211.z < 1.50000000E+01, _TMP211.w < 1.50000000E+01);
    _a0220 = _e1 - _c3;
    _TMP217 = abs(_a0220);
    _TMP33 = bvec4(_TMP217.x < 1.50000000E+01, _TMP217.y < 1.50000000E+01, _TMP217.z < 1.50000000E+01, _TMP217.w < 1.50000000E+01);
    _interp_restriction_lv1 = bvec4(_e1.x != _b1.w && _e1.x != _b1.z && (!_TMP27.x && !_TMP28.x || _TMP29.x && !_TMP30.x && !_TMP31.x || _TMP32.x || _TMP33.x), _e1.y != _b1.x && _e1.y != _b1.w && (!_TMP27.y && !_TMP28.y || _TMP29.y && !_TMP30.y && !_TMP31.y || _TMP32.y || _TMP33.y), _e1.z != _b1.y && _e1.z != _b1.x && (!_TMP27.z && !_TMP28.z || _TMP29.z && !_TMP30.z && !_TMP31.z || _TMP32.z || _TMP33.z), _e1.w != _b1.z && _e1.w != _b1.y && (!_TMP27.w && !_TMP28.w || _TMP29.w && !_TMP30.w && !_TMP31.w || _TMP32.w || _TMP33.w));
    _interp_restriction_lv2_left = bvec4(_e1.x != _c3.z && _b1.y != _c3.z, _e1.y != _c3.w && _b1.z != _c3.w, _e1.z != _c3.x && _b1.w != _c3.x, _e1.w != _c3.y && _b1.x != _c3.y);
    _interp_restriction_lv2_up = bvec4(_e1.x != _c3.x && _b1.x != _c3.x, _e1.y != _c3.y && _b1.y != _c3.y, _e1.z != _c3.z && _b1.z != _c3.z, _e1.w != _c3.w && _b1.w != _c3.w);
    _x0224 = (_fx - vec4( 1.10000002E+00, 9.99999940E-02, -8.99999976E-01, 9.99999940E-02))/vec4( 7.99999952E-01, 7.99999952E-01, 7.99999952E-01, 7.99999952E-01);
    _TMP62 = min(vec4( 1.00000000E+00, 1.00000000E+00, 1.00000000E+00, 1.00000000E+00), _x0224);
    _TMP225 = max(vec4( 0.00000000E+00, 0.00000000E+00, 0.00000000E+00, 0.00000000E+00), _TMP62);
    _fx45 = _TMP225*_TMP225*(3.00000000E+00 - 2.00000000E+00*_TMP225);
    _x0234 = (_fx_left - vec4( 6.00000024E-01, 6.00000024E-01, -8.99999976E-01, -4.00000006E-01))/vec4( 7.99999952E-01, 7.99999952E-01, 7.99999952E-01, 8.00000012E-01);
    _TMP62 = min(vec4( 1.00000000E+00, 1.00000000E+00, 1.00000000E+00, 1.00000000E+00), _x0234);
    _TMP235 = max(vec4( 0.00000000E+00, 0.00000000E+00, 0.00000000E+00, 0.00000000E+00), _TMP62);
    _fx30 = _TMP235*_TMP235*(3.00000000E+00 - 2.00000000E+00*_TMP235);
    _x0244 = (_fx_up - vec4( 1.60000002E+00, -4.00000006E-01, -1.39999998E+00, 9.99999940E-02))/vec4( 8.00000072E-01, 8.00000012E-01, 7.99999952E-01, 7.99999952E-01);
    _TMP62 = min(vec4( 1.00000000E+00, 1.00000000E+00, 1.00000000E+00, 1.00000000E+00), _x0244);
    _TMP245 = max(vec4( 0.00000000E+00, 0.00000000E+00, 0.00000000E+00, 0.00000000E+00), _TMP62);
    _fx60 = _TMP245*_TMP245*(3.00000000E+00 - 2.00000000E+00*_TMP245);
    _a0256 = _e1 - _c3;
    _TMP253 = abs(_a0256);
    _a0260 = _e1 - _c3.zwxy;
    _TMP257 = abs(_a0260);
    _a0264 = _c3.wxyz - _h5;
    _TMP261 = abs(_a0264);
    _a0268 = _c3.wxyz - _h5.yzwx;
    _TMP265 = abs(_a0268);
    _a0272 = _b1.zwxy - _b1.wxyz;
    _TMP269 = abs(_a0272);
    _TMP34 = _TMP253 + _TMP257 + _TMP261 + _TMP265 + 4.00000000E+00*_TMP269;
    _a0278 = _b1.zwxy - _b1.yzwx;
    _TMP275 = abs(_a0278);
    _a0282 = _b1.zwxy - _i5;
    _TMP279 = abs(_a0282);
    _a0286 = _b1.wxyz - _i4;
    _TMP283 = abs(_a0286);
    _a0290 = _b1.wxyz - _b1;
    _TMP287 = abs(_a0290);
    _a0294 = _e1 - _c3.wxyz;
    _TMP291 = abs(_a0294);
    _TMP35 = _TMP275 + _TMP279 + _TMP283 + _TMP287 + 4.00000000E+00*_TMP291;
    _edr = bvec4(_TMP34.x < _TMP35.x && _interp_restriction_lv1.x, _TMP34.y < _TMP35.y && _interp_restriction_lv1.y, _TMP34.z < _TMP35.z && _interp_restriction_lv1.z, _TMP34.w < _TMP35.w && _interp_restriction_lv1.w);
    _a0298 = _b1.wxyz - _c3.zwxy;
    _TMP295 = abs(_a0298);
    _a0302 = _b1.zwxy - _c3;
    _TMP299 = abs(_a0302);
    _edr_left = bvec4((2.00000000E+00*_TMP295).x <= _TMP299.x && _interp_restriction_lv2_left.x, (2.00000000E+00*_TMP295).y <= _TMP299.y && _interp_restriction_lv2_left.y, (2.00000000E+00*_TMP295).z <= _TMP299.z && _interp_restriction_lv2_left.z, (2.00000000E+00*_TMP295).w <= _TMP299.w && _interp_restriction_lv2_left.w);
    _a0306 = _b1.wxyz - _c3.zwxy;
    _TMP303 = abs(_a0306);
    _a0310 = _b1.zwxy - _c3;
    _TMP307 = abs(_a0310);
    _edr_up = bvec4(_TMP303.x >= (2.00000000E+00*_TMP307).x && _interp_restriction_lv2_up.x, _TMP303.y >= (2.00000000E+00*_TMP307).y && _interp_restriction_lv2_up.y, _TMP303.z >= (2.00000000E+00*_TMP307).z && _interp_restriction_lv2_up.z, _TMP303.w >= (2.00000000E+00*_TMP307).w && _interp_restriction_lv2_up.w);
    _nc45 = bvec4(_edr.x && bool(_fx45.x), _edr.y && bool(_fx45.y), _edr.z && bool(_fx45.z), _edr.w && bool(_fx45.w));
    _nc30 = bvec4(_edr.x && _edr_left.x && bool(_fx30.x), _edr.y && _edr_left.y && bool(_fx30.y), _edr.z && _edr_left.z && bool(_fx30.z), _edr.w && _edr_left.w && bool(_fx30.w));
    _nc60 = bvec4(_edr.x && _edr_up.x && bool(_fx60.x), _edr.y && _edr_up.y && bool(_fx60.y), _edr.z && _edr_up.z && bool(_fx60.z), _edr.w && _edr_up.w && bool(_fx60.w));
    _a0314 = _e1 - _b1.wxyz;
    _TMP311 = abs(_a0314);
    _a0318 = _e1 - _b1.zwxy;
    _TMP315 = abs(_a0318);
    _px = bvec4(_TMP311.x <= _TMP315.x, _TMP311.y <= _TMP315.y, _TMP311.z <= _TMP315.z, _TMP311.w <= _TMP315.w);
    _nc = bvec4(_nc30.x || _nc60.x || _nc45.x, _nc30.y || _nc60.y || _nc45.y, _nc30.z || _nc60.z || _nc45.z, _nc30.w || _nc60.w || _nc45.w);
    _final45 = vec4(float(_nc45.x), float(_nc45.y), float(_nc45.z), float(_nc45.w))*_fx45;
    _final30 = vec4(float(_nc30.x), float(_nc30.y), float(_nc30.z), float(_nc30.w))*_fx30;
    _final60 = vec4(float(_nc60.x), float(_nc60.y), float(_nc60.z), float(_nc60.w))*_fx60;
    _TMP42 = max(_final30, _final60);
    _maximo = max(_TMP42, _final45);
    if (_nc.x) { 
        if (_px.x) { 
            _TMP43 = _F;
        } else {
            _TMP43 = _H;
        } 
        _pix1 = _TMP43;
        _blend1 = _maximo.x;
    } else {
        if (_nc.y) { 
            if (_px.y) { 
                _TMP44 = _B2;
            } else {
                _TMP44 = _F;
            } 
            _pix1 = _TMP44;
            _blend1 = _maximo.y;
        } else {
            if (_nc.z) { 
                if (_px.z) { 
                    _TMP45 = _D;
                } else {
                    _TMP45 = _B2;
                } 
                _pix1 = _TMP45;
                _blend1 = _maximo.z;
            } else {
                if (_nc.w) { 
                    if (_px.w) { 
                        _TMP46 = _H;
                    } else {
                        _TMP46 = _D;
                    } 
                    _pix1 = _TMP46;
                    _blend1 = _maximo.w;
                } 
            } 
        } 
    } 
    if (_nc.w) { 
        if (_px.w) { 
            _TMP47 = _H;
        } else {
            _TMP47 = _D;
        } 
        _pix2 = _TMP47;
        _blend2 = _maximo.w;
    } else {
        if (_nc.z) { 
            if (_px.z) { 
                _TMP48 = _D;
            } else {
                _TMP48 = _B2;
            } 
            _pix2 = _TMP48;
            _blend2 = _maximo.z;
        } else {
            if (_nc.y) { 
                if (_px.y) { 
                    _TMP49 = _B2;
                } else {
                    _TMP49 = _F;
                } 
                _pix2 = _TMP49;
                _blend2 = _maximo.y;
            } else {
                if (_nc.x) { 
                    if (_px.x) { 
                        _TMP50 = _F;
                    } else {
                        _TMP50 = _H;
                    } 
                    _pix2 = _TMP50;
                    _blend2 = _maximo.x;
                } 
            } 
        } 
    } 
    _t0324 = float(_blend1);
    _res1 = _E + _t0324*(_pix1 - _E);
    _t0326 = float(_blend2);
    _res2 = _E + _t0326*(_pix2 - _E);
    _a0330 = _E - _res1;
    _TMP61 = abs(vec3(float(_a0330.x), float(_a0330.y), float(_a0330.z)));
    _df0328 = vec3(float(_TMP61.x), float(_TMP61.y), float(_TMP61.z));
    _TMP51 = _df0328.x + _df0328.y + _df0328.z;
    _a0334 = _E - _res2;
    _TMP61 = abs(vec3(float(_a0334.x), float(_a0334.y), float(_a0334.z)));
    _df0332 = vec3(float(_TMP61.x), float(_TMP61.y), float(_TMP61.z));
    _TMP52 = _df0332.x + _df0332.y + _df0332.z;
    _TMP53 = float((_TMP52 >= _TMP51));
    _res = _res1 + _TMP53*(_res2 - _res1);
    _ret_0 = vec4(_res.x, _res.y, _res.z, 1.00000000E+00);
    gl_FragColor = vec4(float(_ret_0.x), float(_ret_0.y), float(_ret_0.z), float(_ret_0.w));
    return;
} 
 ]]></fragment>
</shader>
