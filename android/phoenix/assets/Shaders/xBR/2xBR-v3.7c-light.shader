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
float _TMP57;
float _TMP55;
float _TMP56;
float _TMP65;
float _TMP64;
float _TMP54;
vec3 _TMP46;
vec3 _TMP48;
vec3 _TMP50;
vec3 _TMP52;
vec3 _TMP53;
vec3 _TMP51;
vec3 _TMP49;
vec3 _TMP47;
vec4 _TMP39;
vec4 _TMP38;
bvec4 _TMP37;
bvec4 _TMP36;
bvec4 _TMP35;
bvec4 _TMP34;
bvec4 _TMP33;
bvec4 _TMP32;
bvec4 _TMP31;
bvec4 _TMP30;
bvec4 _TMP29;
bvec4 _TMP28;
bvec4 _TMP27;
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
vec4 _r0123;
vec4 _r0133;
vec4 _r0143;
vec4 _r0153;
vec4 _r0163;
vec4 _r0173;
vec4 _TMP184;
vec4 _a0187;
vec4 _TMP190;
vec4 _a0193;
vec4 _TMP196;
vec4 _a0199;
vec4 _TMP202;
vec4 _a0205;
vec4 _TMP208;
vec4 _a0211;
vec4 _TMP214;
vec4 _a0217;
vec4 _TMP220;
vec4 _a0223;
vec4 _TMP226;
vec4 _a0229;
vec4 _TMP232;
vec4 _a0235;
vec4 _TMP238;
vec4 _a0241;
vec4 _TMP244;
vec4 _a0247;
vec4 _TMP250;
vec4 _a0253;
vec4 _TMP254;
vec4 _a0257;
vec4 _TMP258;
vec4 _a0261;
vec4 _TMP262;
vec4 _a0265;
vec4 _TMP266;
vec4 _a0269;
vec4 _TMP272;
vec4 _a0275;
vec4 _TMP276;
vec4 _a0279;
vec4 _TMP280;
vec4 _a0283;
vec4 _TMP284;
vec4 _a0287;
vec4 _TMP288;
vec4 _a0291;
vec4 _TMP292;
vec4 _a0295;
vec4 _TMP296;
vec4 _a0299;
vec4 _TMP300;
vec4 _a0303;
vec4 _TMP304;
vec4 _a0307;
vec4 _TMP308;
vec4 _a0311;
vec4 _TMP312;
vec4 _a0315;
 
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
    bvec4 _fx;
    bvec4 _fx_left;
    bvec4 _fx_up;
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
    vec4 _c1;
    vec4 _e1;
    vec4 _i4;
    vec4 _i5;
    vec4 _h5;
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
    _TMP64 = dot(vec3(float(_B2.x), float(_B2.y), float(_B2.z)), vec3( 1.43593750E+01, 2.81718750E+01, 5.47265625E+00));
    _r0123.x = float(_TMP64);
    _TMP64 = dot(vec3(float(_D.x), float(_D.y), float(_D.z)), vec3( 1.43593750E+01, 2.81718750E+01, 5.47265625E+00));
    _r0123.y = float(_TMP64);
    _TMP64 = dot(vec3(float(_H.x), float(_H.y), float(_H.z)), vec3( 1.43593750E+01, 2.81718750E+01, 5.47265625E+00));
    _r0123.z = float(_TMP64);
    _TMP64 = dot(vec3(float(_F.x), float(_F.y), float(_F.z)), vec3( 1.43593750E+01, 2.81718750E+01, 5.47265625E+00));
    _r0123.w = float(_TMP64);
    _b1 = vec4(float(_r0123.x), float(_r0123.y), float(_r0123.z), float(_r0123.w));
    _TMP64 = dot(vec3(float(_C.x), float(_C.y), float(_C.z)), vec3( 1.43593750E+01, 2.81718750E+01, 5.47265625E+00));
    _r0133.x = float(_TMP64);
    _TMP64 = dot(vec3(float(_A2.x), float(_A2.y), float(_A2.z)), vec3( 1.43593750E+01, 2.81718750E+01, 5.47265625E+00));
    _r0133.y = float(_TMP64);
    _TMP64 = dot(vec3(float(_G.x), float(_G.y), float(_G.z)), vec3( 1.43593750E+01, 2.81718750E+01, 5.47265625E+00));
    _r0133.z = float(_TMP64);
    _TMP64 = dot(vec3(float(_I.x), float(_I.y), float(_I.z)), vec3( 1.43593750E+01, 2.81718750E+01, 5.47265625E+00));
    _r0133.w = float(_TMP64);
    _c1 = vec4(float(_r0133.x), float(_r0133.y), float(_r0133.z), float(_r0133.w));
    _TMP64 = dot(vec3(float(_E.x), float(_E.y), float(_E.z)), vec3( 1.43593750E+01, 2.81718750E+01, 5.47265625E+00));
    _r0143.x = float(_TMP64);
    _TMP64 = dot(vec3(float(_E.x), float(_E.y), float(_E.z)), vec3( 1.43593750E+01, 2.81718750E+01, 5.47265625E+00));
    _r0143.y = float(_TMP64);
    _TMP64 = dot(vec3(float(_E.x), float(_E.y), float(_E.z)), vec3( 1.43593750E+01, 2.81718750E+01, 5.47265625E+00));
    _r0143.z = float(_TMP64);
    _TMP64 = dot(vec3(float(_E.x), float(_E.y), float(_E.z)), vec3( 1.43593750E+01, 2.81718750E+01, 5.47265625E+00));
    _r0143.w = float(_TMP64);
    _e1 = vec4(float(_r0143.x), float(_r0143.y), float(_r0143.z), float(_r0143.w));
    _TMP64 = dot(vec3(float(_I4.x), float(_I4.y), float(_I4.z)), vec3( 1.43593750E+01, 2.81718750E+01, 5.47265625E+00));
    _r0153.x = float(_TMP64);
    _TMP64 = dot(vec3(float(_C1.x), float(_C1.y), float(_C1.z)), vec3( 1.43593750E+01, 2.81718750E+01, 5.47265625E+00));
    _r0153.y = float(_TMP64);
    _TMP64 = dot(vec3(float(_A0.x), float(_A0.y), float(_A0.z)), vec3( 1.43593750E+01, 2.81718750E+01, 5.47265625E+00));
    _r0153.z = float(_TMP64);
    _TMP64 = dot(vec3(float(_G5.x), float(_G5.y), float(_G5.z)), vec3( 1.43593750E+01, 2.81718750E+01, 5.47265625E+00));
    _r0153.w = float(_TMP64);
    _i4 = vec4(float(_r0153.x), float(_r0153.y), float(_r0153.z), float(_r0153.w));
    _TMP64 = dot(vec3(float(_I5.x), float(_I5.y), float(_I5.z)), vec3( 1.43593750E+01, 2.81718750E+01, 5.47265625E+00));
    _r0163.x = float(_TMP64);
    _TMP64 = dot(vec3(float(_C4.x), float(_C4.y), float(_C4.z)), vec3( 1.43593750E+01, 2.81718750E+01, 5.47265625E+00));
    _r0163.y = float(_TMP64);
    _TMP64 = dot(vec3(float(_A11.x), float(_A11.y), float(_A11.z)), vec3( 1.43593750E+01, 2.81718750E+01, 5.47265625E+00));
    _r0163.z = float(_TMP64);
    _TMP64 = dot(vec3(float(_G0.x), float(_G0.y), float(_G0.z)), vec3( 1.43593750E+01, 2.81718750E+01, 5.47265625E+00));
    _r0163.w = float(_TMP64);
    _i5 = vec4(float(_r0163.x), float(_r0163.y), float(_r0163.z), float(_r0163.w));
    _TMP64 = dot(vec3(float(_H5.x), float(_H5.y), float(_H5.z)), vec3( 1.43593750E+01, 2.81718750E+01, 5.47265625E+00));
    _r0173.x = float(_TMP64);
    _TMP64 = dot(vec3(float(_F4.x), float(_F4.y), float(_F4.z)), vec3( 1.43593750E+01, 2.81718750E+01, 5.47265625E+00));
    _r0173.y = float(_TMP64);
    _TMP64 = dot(vec3(float(_B11.x), float(_B11.y), float(_B11.z)), vec3( 1.43593750E+01, 2.81718750E+01, 5.47265625E+00));
    _r0173.z = float(_TMP64);
    _TMP64 = dot(vec3(float(_D0.x), float(_D0.y), float(_D0.z)), vec3( 1.43593750E+01, 2.81718750E+01, 5.47265625E+00));
    _r0173.w = float(_TMP64);
    _h5 = vec4(float(_r0173.x), float(_r0173.y), float(_r0173.z), float(_r0173.w));
    _fx = bvec4((vec4( 1.00000000E+00, -1.00000000E+00, -1.00000000E+00, 1.00000000E+00)*_fp.y + vec4( 1.00000000E+00, 1.00000000E+00, -1.00000000E+00, -1.00000000E+00)*_fp.x).x > 1.25000000E+00, (vec4( 1.00000000E+00, -1.00000000E+00, -1.00000000E+00, 1.00000000E+00)*_fp.y + vec4( 1.00000000E+00, 1.00000000E+00, -1.00000000E+00, -1.00000000E+00)*_fp.x).y > 2.50000000E-01, (vec4( 1.00000000E+00, -1.00000000E+00, -1.00000000E+00, 1.00000000E+00)*_fp.y + vec4( 1.00000000E+00, 1.00000000E+00, -1.00000000E+00, -1.00000000E+00)*_fp.x).z > -7.50000000E-01, (vec4( 1.00000000E+00, -1.00000000E+00, -1.00000000E+00, 1.00000000E+00)*_fp.y + vec4( 1.00000000E+00, 1.00000000E+00, -1.00000000E+00, -1.00000000E+00)*_fp.x).w > 2.50000000E-01);
    _fx_left = bvec4((vec4( 1.00000000E+00, -1.00000000E+00, -1.00000000E+00, 1.00000000E+00)*_fp.y + vec4( 5.00000000E-01, 2.00000000E+00, -5.00000000E-01, -2.00000000E+00)*_fp.x).x > 7.50000000E-01, (vec4( 1.00000000E+00, -1.00000000E+00, -1.00000000E+00, 1.00000000E+00)*_fp.y + vec4( 5.00000000E-01, 2.00000000E+00, -5.00000000E-01, -2.00000000E+00)*_fp.x).y > 5.00000000E-01, (vec4( 1.00000000E+00, -1.00000000E+00, -1.00000000E+00, 1.00000000E+00)*_fp.y + vec4( 5.00000000E-01, 2.00000000E+00, -5.00000000E-01, -2.00000000E+00)*_fp.x).z > -7.50000000E-01, (vec4( 1.00000000E+00, -1.00000000E+00, -1.00000000E+00, 1.00000000E+00)*_fp.y + vec4( 5.00000000E-01, 2.00000000E+00, -5.00000000E-01, -2.00000000E+00)*_fp.x).w > -5.00000000E-01);
    _fx_up = bvec4((vec4( 1.00000000E+00, -1.00000000E+00, -1.00000000E+00, 1.00000000E+00)*_fp.y + vec4( 2.00000000E+00, 5.00000000E-01, -2.00000000E+00, -5.00000000E-01)*_fp.x).x > 1.50000000E+00, (vec4( 1.00000000E+00, -1.00000000E+00, -1.00000000E+00, 1.00000000E+00)*_fp.y + vec4( 2.00000000E+00, 5.00000000E-01, -2.00000000E+00, -5.00000000E-01)*_fp.x).y > -2.50000000E-01, (vec4( 1.00000000E+00, -1.00000000E+00, -1.00000000E+00, 1.00000000E+00)*_fp.y + vec4( 2.00000000E+00, 5.00000000E-01, -2.00000000E+00, -5.00000000E-01)*_fp.x).z > -1.50000000E+00, (vec4( 1.00000000E+00, -1.00000000E+00, -1.00000000E+00, 1.00000000E+00)*_fp.y + vec4( 2.00000000E+00, 5.00000000E-01, -2.00000000E+00, -5.00000000E-01)*_fp.x).w > 2.50000000E-01);
    _a0187 = _b1.wxyz - _b1;
    _TMP184 = abs(_a0187);
    _TMP27 = bvec4(_TMP184.x < 1.50000000E+01, _TMP184.y < 1.50000000E+01, _TMP184.z < 1.50000000E+01, _TMP184.w < 1.50000000E+01);
    _a0193 = _b1.wxyz - _c1;
    _TMP190 = abs(_a0193);
    _TMP28 = bvec4(_TMP190.x < 1.50000000E+01, _TMP190.y < 1.50000000E+01, _TMP190.z < 1.50000000E+01, _TMP190.w < 1.50000000E+01);
    _a0199 = _b1.zwxy - _b1.yzwx;
    _TMP196 = abs(_a0199);
    _TMP29 = bvec4(_TMP196.x < 1.50000000E+01, _TMP196.y < 1.50000000E+01, _TMP196.z < 1.50000000E+01, _TMP196.w < 1.50000000E+01);
    _a0205 = _b1.zwxy - _c1.zwxy;
    _TMP202 = abs(_a0205);
    _TMP30 = bvec4(_TMP202.x < 1.50000000E+01, _TMP202.y < 1.50000000E+01, _TMP202.z < 1.50000000E+01, _TMP202.w < 1.50000000E+01);
    _a0211 = _e1 - _c1.wxyz;
    _TMP208 = abs(_a0211);
    _TMP31 = bvec4(_TMP208.x < 1.50000000E+01, _TMP208.y < 1.50000000E+01, _TMP208.z < 1.50000000E+01, _TMP208.w < 1.50000000E+01);
    _a0217 = _b1.wxyz - _h5.yzwx;
    _TMP214 = abs(_a0217);
    _TMP32 = bvec4(_TMP214.x < 1.50000000E+01, _TMP214.y < 1.50000000E+01, _TMP214.z < 1.50000000E+01, _TMP214.w < 1.50000000E+01);
    _a0223 = _b1.wxyz - _i4;
    _TMP220 = abs(_a0223);
    _TMP33 = bvec4(_TMP220.x < 1.50000000E+01, _TMP220.y < 1.50000000E+01, _TMP220.z < 1.50000000E+01, _TMP220.w < 1.50000000E+01);
    _a0229 = _b1.zwxy - _h5;
    _TMP226 = abs(_a0229);
    _TMP34 = bvec4(_TMP226.x < 1.50000000E+01, _TMP226.y < 1.50000000E+01, _TMP226.z < 1.50000000E+01, _TMP226.w < 1.50000000E+01);
    _a0235 = _b1.zwxy - _i5;
    _TMP232 = abs(_a0235);
    _TMP35 = bvec4(_TMP232.x < 1.50000000E+01, _TMP232.y < 1.50000000E+01, _TMP232.z < 1.50000000E+01, _TMP232.w < 1.50000000E+01);
    _a0241 = _e1 - _c1.zwxy;
    _TMP238 = abs(_a0241);
    _TMP36 = bvec4(_TMP238.x < 1.50000000E+01, _TMP238.y < 1.50000000E+01, _TMP238.z < 1.50000000E+01, _TMP238.w < 1.50000000E+01);
    _a0247 = _e1 - _c1;
    _TMP244 = abs(_a0247);
    _TMP37 = bvec4(_TMP244.x < 1.50000000E+01, _TMP244.y < 1.50000000E+01, _TMP244.z < 1.50000000E+01, _TMP244.w < 1.50000000E+01);
    _interp_restriction_lv1 = bvec4(_e1.x != _b1.w && _e1.x != _b1.z && (!_TMP27.x && !_TMP28.x || !_TMP29.x && !_TMP30.x || _TMP31.x && (!_TMP32.x && !_TMP33.x || !_TMP34.x && !_TMP35.x) || _TMP36.x || _TMP37.x), _e1.y != _b1.x && _e1.y != _b1.w && (!_TMP27.y && !_TMP28.y || !_TMP29.y && !_TMP30.y || _TMP31.y && (!_TMP32.y && !_TMP33.y || !_TMP34.y && !_TMP35.y) || _TMP36.y || _TMP37.y), _e1.z != _b1.y && _e1.z != _b1.x && (!_TMP27.z && !_TMP28.z || !_TMP29.z && !_TMP30.z || _TMP31.z && (!_TMP32.z && !_TMP33.z || !_TMP34.z && !_TMP35.z) || _TMP36.z || _TMP37.z), _e1.w != _b1.z && _e1.w != _b1.y && (!_TMP27.w && !_TMP28.w || !_TMP29.w && !_TMP30.w || _TMP31.w && (!_TMP32.w && !_TMP33.w || !_TMP34.w && !_TMP35.w) || _TMP36.w || _TMP37.w));
    _interp_restriction_lv2_left = bvec4(_e1.x != _c1.z && _b1.y != _c1.z, _e1.y != _c1.w && _b1.z != _c1.w, _e1.z != _c1.x && _b1.w != _c1.x, _e1.w != _c1.y && _b1.x != _c1.y);
    _interp_restriction_lv2_up = bvec4(_e1.x != _c1.x && _b1.x != _c1.x, _e1.y != _c1.y && _b1.y != _c1.y, _e1.z != _c1.z && _b1.z != _c1.z, _e1.w != _c1.w && _b1.w != _c1.w);
    _a0253 = _e1 - _c1;
    _TMP250 = abs(_a0253);
    _a0257 = _e1 - _c1.zwxy;
    _TMP254 = abs(_a0257);
    _a0261 = _c1.wxyz - _h5;
    _TMP258 = abs(_a0261);
    _a0265 = _c1.wxyz - _h5.yzwx;
    _TMP262 = abs(_a0265);
    _a0269 = _b1.zwxy - _b1.wxyz;
    _TMP266 = abs(_a0269);
    _TMP38 = _TMP250 + _TMP254 + _TMP258 + _TMP262 + 4.00000000E+00*_TMP266;
    _a0275 = _b1.zwxy - _b1.yzwx;
    _TMP272 = abs(_a0275);
    _a0279 = _b1.zwxy - _i5;
    _TMP276 = abs(_a0279);
    _a0283 = _b1.wxyz - _i4;
    _TMP280 = abs(_a0283);
    _a0287 = _b1.wxyz - _b1;
    _TMP284 = abs(_a0287);
    _a0291 = _e1 - _c1.wxyz;
    _TMP288 = abs(_a0291);
    _TMP39 = _TMP272 + _TMP276 + _TMP280 + _TMP284 + 4.00000000E+00*_TMP288;
    _edr = bvec4(_TMP38.x < _TMP39.x && _interp_restriction_lv1.x, _TMP38.y < _TMP39.y && _interp_restriction_lv1.y, _TMP38.z < _TMP39.z && _interp_restriction_lv1.z, _TMP38.w < _TMP39.w && _interp_restriction_lv1.w);
    _a0295 = _b1.wxyz - _c1.zwxy;
    _TMP292 = abs(_a0295);
    _a0299 = _b1.zwxy - _c1;
    _TMP296 = abs(_a0299);
    _edr_left = bvec4((2.00000000E+00*_TMP292).x < _TMP296.x && _interp_restriction_lv2_left.x, (2.00000000E+00*_TMP292).y < _TMP296.y && _interp_restriction_lv2_left.y, (2.00000000E+00*_TMP292).z < _TMP296.z && _interp_restriction_lv2_left.z, (2.00000000E+00*_TMP292).w < _TMP296.w && _interp_restriction_lv2_left.w);
    _a0303 = _b1.wxyz - _c1.zwxy;
    _TMP300 = abs(_a0303);
    _a0307 = _b1.zwxy - _c1;
    _TMP304 = abs(_a0307);
    _edr_up = bvec4(_TMP300.x > (2.00000000E+00*_TMP304).x && _interp_restriction_lv2_up.x, _TMP300.y > (2.00000000E+00*_TMP304).y && _interp_restriction_lv2_up.y, _TMP300.z > (2.00000000E+00*_TMP304).z && _interp_restriction_lv2_up.z, _TMP300.w > (2.00000000E+00*_TMP304).w && _interp_restriction_lv2_up.w);
    _nc = bvec4(_edr.x && (_fx.x || _edr_left.x && _fx_left.x || _edr_up.x && _fx_up.x), _edr.y && (_fx.y || _edr_left.y && _fx_left.y || _edr_up.y && _fx_up.y), _edr.z && (_fx.z || _edr_left.z && _fx_left.z || _edr_up.z && _fx_up.z), _edr.w && (_fx.w || _edr_left.w && _fx_left.w || _edr_up.w && _fx_up.w));
    _a0311 = _e1 - _b1.wxyz;
    _TMP308 = abs(_a0311);
    _a0315 = _e1 - _b1.zwxy;
    _TMP312 = abs(_a0315);
    _px = bvec4(_TMP308.x <= _TMP312.x, _TMP308.y <= _TMP312.y, _TMP308.z <= _TMP312.z, _TMP308.w <= _TMP312.w);
    if (_nc.x) { 
        if (_px.x) { 
            _TMP47 = _F;
        } else {
            _TMP47 = _H;
        } 
        _TMP46 = _TMP47;
    } else {
        if (_nc.y) { 
            if (_px.y) { 
                _TMP49 = _B2;
            } else {
                _TMP49 = _F;
            } 
            _TMP48 = _TMP49;
        } else {
            if (_nc.z) { 
                if (_px.z) { 
                    _TMP51 = _D;
                } else {
                    _TMP51 = _B2;
                } 
                _TMP50 = _TMP51;
            } else {
                if (_nc.w) { 
                    if (_px.w) { 
                        _TMP53 = _H;
                    } else {
                        _TMP53 = _D;
                    } 
                    _TMP52 = _TMP53;
                } else {
                    _TMP52 = _E;
                } 
                _TMP50 = _TMP52;
            } 
            _TMP48 = _TMP50;
        } 
        _TMP46 = _TMP48;
    } 
    _res = _TMP46;
    _TMP64 = dot(vec3( 2.99072266E-01, 5.86914062E-01, 1.14013672E-01), vec3(float(_E.x), float(_E.y), float(_E.z)));
    _TMP54 = float(_TMP64);
    _TMP65 = abs(float(_TMP54));
    _TMP55 = float(_TMP65);
    _TMP64 = dot(vec3( 2.99072266E-01, 5.86914062E-01, 1.14013672E-01), vec3(float(_TMP46.x), float(_TMP46.y), float(_TMP46.z)));
    _TMP56 = float(_TMP64);
    _TMP65 = abs(float(_TMP56));
    _TMP57 = float(_TMP65);
    if (_TMP55 > _TMP57) { 
        _res = _E;
    } 
    _ret_0 = vec4(_res.x, _res.y, _res.z, 1.00000000E+00);
    gl_FragColor = vec4(float(_ret_0.x), float(_ret_0.y), float(_ret_0.z), float(_ret_0.w));
    return;
} 
 ]]></fragment>
</shader>
