<?xml version="1.0" encoding="UTF-8"?>
<!-- XML/GLSL shader autogenerated by cg2xml.py -->
<shader language="GLSL" style="GLES2">
    <vertex><![CDATA[
varying     vec4 t7;
varying     vec4 t6;
varying     vec4 t5;
varying     vec4 t4;
varying     vec4 t3;
varying     vec4 t2;
varying     vec4 t1;
varying     vec2 _texCoord1;
varying     vec4 _color1;
varying     vec4 _position1;
varying     vec2 _output_dummy_size;
struct input_dummy {
    vec2 _video_size;
    vec2 _texture_size;
    vec2 _output_dummy_size;
};
struct out_vertex {
    vec4 _position1;
    vec4 _color1;
    vec2 _texCoord1;
    vec4 t1;
    vec4 t2;
    vec4 t3;
    vec4 t4;
    vec4 t5;
    vec4 t6;
    vec4 t7;
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
    _ps = vec2(float((1.00000000E+00/rubyTextureSize.x)), float((1.00000000E+00/rubyTextureSize.y)));
    _OUT.t1 = rubyTexCoord.xxxy + vec4(float(-_ps.x), 0.00000000E+00, float(_ps.x), float((-2.00000000E+00*_ps.y)));
    _OUT.t2 = rubyTexCoord.xxxy + vec4(float(-_ps.x), 0.00000000E+00, float(_ps.x), float(-_ps.y));
    _OUT.t3 = rubyTexCoord.xxxy + vec4(float(-_ps.x), 0.00000000E+00, float(_ps.x), 0.00000000E+00);
    _OUT.t4 = rubyTexCoord.xxxy + vec4(float(-_ps.x), 0.00000000E+00, float(_ps.x), float(_ps.y));
    _OUT.t5 = rubyTexCoord.xxxy + vec4(float(-_ps.x), 0.00000000E+00, float(_ps.x), float((2.00000000E+00*_ps.y)));
    _OUT.t6 = rubyTexCoord.xyyy + vec4(float((-2.00000000E+00*_ps.x)), float(-_ps.y), 0.00000000E+00, float(_ps.y));
    _OUT.t7 = rubyTexCoord.xyyy + vec4(float((2.00000000E+00*_ps.x)), float(-_ps.y), 0.00000000E+00, float(_ps.y));
    _position1 = _r0006;
    _color1 = COLOR;
    _texCoord1 = rubyTexCoord.xy;
    t1 = _OUT.t1;
    t2 = _OUT.t2;
    t3 = _OUT.t3;
    t4 = _OUT.t4;
    t5 = _OUT.t5;
    t6 = _OUT.t6;
    t7 = _OUT.t7;
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
};
vec4 _ret_0;
float _TMP53;
float _TMP52;
float _TMP51;
vec3 _TMP60;
vec3 _TMP43;
vec3 _TMP45;
vec3 _TMP47;
vec3 _TMP49;
vec3 _TMP50;
vec3 _TMP48;
vec3 _TMP46;
vec3 _TMP44;
vec3 _TMP35;
vec3 _TMP37;
vec3 _TMP39;
vec3 _TMP41;
vec3 _TMP42;
vec3 _TMP40;
vec3 _TMP38;
vec3 _TMP36;
vec4 _TMP28;
vec4 _TMP27;
float _TMP59;
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
uniform input_dummy _IN1;
vec2 _x0074;
vec4 _r0118;
vec4 _r0128;
vec4 _r0138;
vec4 _r0148;
vec4 _r0158;
vec4 _r0168;
vec4 _TMP179;
vec4 _a0182;
vec4 _TMP183;
vec4 _a0186;
vec4 _TMP187;
vec4 _a0190;
vec4 _TMP191;
vec4 _a0194;
vec4 _TMP195;
vec4 _a0198;
vec4 _TMP201;
vec4 _a0204;
vec4 _TMP205;
vec4 _a0208;
vec4 _TMP209;
vec4 _a0212;
vec4 _TMP213;
vec4 _a0216;
vec4 _TMP217;
vec4 _a0220;
vec4 _TMP221;
vec4 _a0224;
vec4 _TMP225;
vec4 _a0228;
vec4 _TMP229;
vec4 _a0232;
vec4 _TMP233;
vec4 _a0236;
vec4 _TMP237;
vec4 _a0240;
vec4 _TMP241;
vec4 _a0244;
vec3 _df0246;
vec3 _a0248;
vec3 _df0250;
vec3 _a0252;
varying vec4 TEX0;
 
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
    vec3 _A1;
    vec3 _B1;
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
    vec3 _res;
    _x0074 = TEX0.xy*rubyTextureSize;
    _fp = fract(_x0074);
    _TMP0 = texture2D(rubyTexture, t1.xw);
    _A1 = vec3(float(_TMP0.x), float(_TMP0.y), float(_TMP0.z));
    _TMP1 = texture2D(rubyTexture, t1.yw);
    _B1 = vec3(float(_TMP1.x), float(_TMP1.y), float(_TMP1.z));
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
    _TMP59 = dot(vec3(float(_B2.x), float(_B2.y), float(_B2.z)), vec3( 1.43593750E+01, 2.81718750E+01, 5.47265625E+00));
    _r0118.x = float(_TMP59);
    _TMP59 = dot(vec3(float(_D.x), float(_D.y), float(_D.z)), vec3( 1.43593750E+01, 2.81718750E+01, 5.47265625E+00));
    _r0118.y = float(_TMP59);
    _TMP59 = dot(vec3(float(_H.x), float(_H.y), float(_H.z)), vec3( 1.43593750E+01, 2.81718750E+01, 5.47265625E+00));
    _r0118.z = float(_TMP59);
    _TMP59 = dot(vec3(float(_F.x), float(_F.y), float(_F.z)), vec3( 1.43593750E+01, 2.81718750E+01, 5.47265625E+00));
    _r0118.w = float(_TMP59);
    _b1 = vec4(float(_r0118.x), float(_r0118.y), float(_r0118.z), float(_r0118.w));
    _TMP59 = dot(vec3(float(_C.x), float(_C.y), float(_C.z)), vec3( 1.43593750E+01, 2.81718750E+01, 5.47265625E+00));
    _r0128.x = float(_TMP59);
    _TMP59 = dot(vec3(float(_A2.x), float(_A2.y), float(_A2.z)), vec3( 1.43593750E+01, 2.81718750E+01, 5.47265625E+00));
    _r0128.y = float(_TMP59);
    _TMP59 = dot(vec3(float(_G.x), float(_G.y), float(_G.z)), vec3( 1.43593750E+01, 2.81718750E+01, 5.47265625E+00));
    _r0128.z = float(_TMP59);
    _TMP59 = dot(vec3(float(_I.x), float(_I.y), float(_I.z)), vec3( 1.43593750E+01, 2.81718750E+01, 5.47265625E+00));
    _r0128.w = float(_TMP59);
    _c3 = vec4(float(_r0128.x), float(_r0128.y), float(_r0128.z), float(_r0128.w));
    _TMP59 = dot(vec3(float(_E.x), float(_E.y), float(_E.z)), vec3( 1.43593750E+01, 2.81718750E+01, 5.47265625E+00));
    _r0138.x = float(_TMP59);
    _TMP59 = dot(vec3(float(_E.x), float(_E.y), float(_E.z)), vec3( 1.43593750E+01, 2.81718750E+01, 5.47265625E+00));
    _r0138.y = float(_TMP59);
    _TMP59 = dot(vec3(float(_E.x), float(_E.y), float(_E.z)), vec3( 1.43593750E+01, 2.81718750E+01, 5.47265625E+00));
    _r0138.z = float(_TMP59);
    _TMP59 = dot(vec3(float(_E.x), float(_E.y), float(_E.z)), vec3( 1.43593750E+01, 2.81718750E+01, 5.47265625E+00));
    _r0138.w = float(_TMP59);
    _e1 = vec4(float(_r0138.x), float(_r0138.y), float(_r0138.z), float(_r0138.w));
    _TMP59 = dot(vec3(float(_I4.x), float(_I4.y), float(_I4.z)), vec3( 1.43593750E+01, 2.81718750E+01, 5.47265625E+00));
    _r0148.x = float(_TMP59);
    _TMP59 = dot(vec3(float(_C1.x), float(_C1.y), float(_C1.z)), vec3( 1.43593750E+01, 2.81718750E+01, 5.47265625E+00));
    _r0148.y = float(_TMP59);
    _TMP59 = dot(vec3(float(_A0.x), float(_A0.y), float(_A0.z)), vec3( 1.43593750E+01, 2.81718750E+01, 5.47265625E+00));
    _r0148.z = float(_TMP59);
    _TMP59 = dot(vec3(float(_G5.x), float(_G5.y), float(_G5.z)), vec3( 1.43593750E+01, 2.81718750E+01, 5.47265625E+00));
    _r0148.w = float(_TMP59);
    _i4 = vec4(float(_r0148.x), float(_r0148.y), float(_r0148.z), float(_r0148.w));
    _TMP59 = dot(vec3(float(_I5.x), float(_I5.y), float(_I5.z)), vec3( 1.43593750E+01, 2.81718750E+01, 5.47265625E+00));
    _r0158.x = float(_TMP59);
    _TMP59 = dot(vec3(float(_C4.x), float(_C4.y), float(_C4.z)), vec3( 1.43593750E+01, 2.81718750E+01, 5.47265625E+00));
    _r0158.y = float(_TMP59);
    _TMP59 = dot(vec3(float(_A1.x), float(_A1.y), float(_A1.z)), vec3( 1.43593750E+01, 2.81718750E+01, 5.47265625E+00));
    _r0158.z = float(_TMP59);
    _TMP59 = dot(vec3(float(_G0.x), float(_G0.y), float(_G0.z)), vec3( 1.43593750E+01, 2.81718750E+01, 5.47265625E+00));
    _r0158.w = float(_TMP59);
    _i5 = vec4(float(_r0158.x), float(_r0158.y), float(_r0158.z), float(_r0158.w));
    _TMP59 = dot(vec3(float(_H5.x), float(_H5.y), float(_H5.z)), vec3( 1.43593750E+01, 2.81718750E+01, 5.47265625E+00));
    _r0168.x = float(_TMP59);
    _TMP59 = dot(vec3(float(_F4.x), float(_F4.y), float(_F4.z)), vec3( 1.43593750E+01, 2.81718750E+01, 5.47265625E+00));
    _r0168.y = float(_TMP59);
    _TMP59 = dot(vec3(float(_B1.x), float(_B1.y), float(_B1.z)), vec3( 1.43593750E+01, 2.81718750E+01, 5.47265625E+00));
    _r0168.z = float(_TMP59);
    _TMP59 = dot(vec3(float(_D0.x), float(_D0.y), float(_D0.z)), vec3( 1.43593750E+01, 2.81718750E+01, 5.47265625E+00));
    _r0168.w = float(_TMP59);
    _h5 = vec4(float(_r0168.x), float(_r0168.y), float(_r0168.z), float(_r0168.w));
    _fx = bvec4((vec4( 1.00000000E+00, -1.00000000E+00, -1.00000000E+00, 1.00000000E+00)*_fp.y + vec4( 1.00000000E+00, 1.00000000E+00, -1.00000000E+00, -1.00000000E+00)*_fp.x).x > 1.50000000E+00, (vec4( 1.00000000E+00, -1.00000000E+00, -1.00000000E+00, 1.00000000E+00)*_fp.y + vec4( 1.00000000E+00, 1.00000000E+00, -1.00000000E+00, -1.00000000E+00)*_fp.x).y > 5.00000000E-01, (vec4( 1.00000000E+00, -1.00000000E+00, -1.00000000E+00, 1.00000000E+00)*_fp.y + vec4( 1.00000000E+00, 1.00000000E+00, -1.00000000E+00, -1.00000000E+00)*_fp.x).z > -5.00000000E-01, (vec4( 1.00000000E+00, -1.00000000E+00, -1.00000000E+00, 1.00000000E+00)*_fp.y + vec4( 1.00000000E+00, 1.00000000E+00, -1.00000000E+00, -1.00000000E+00)*_fp.x).w > 5.00000000E-01);
    _fx_left = bvec4((vec4( 1.00000000E+00, -1.00000000E+00, -1.00000000E+00, 1.00000000E+00)*_fp.y + vec4( 5.00000000E-01, 2.00000000E+00, -5.00000000E-01, -2.00000000E+00)*_fp.x).x > 1.00000000E+00, (vec4( 1.00000000E+00, -1.00000000E+00, -1.00000000E+00, 1.00000000E+00)*_fp.y + vec4( 5.00000000E-01, 2.00000000E+00, -5.00000000E-01, -2.00000000E+00)*_fp.x).y > 1.00000000E+00, (vec4( 1.00000000E+00, -1.00000000E+00, -1.00000000E+00, 1.00000000E+00)*_fp.y + vec4( 5.00000000E-01, 2.00000000E+00, -5.00000000E-01, -2.00000000E+00)*_fp.x).z > -5.00000000E-01, (vec4( 1.00000000E+00, -1.00000000E+00, -1.00000000E+00, 1.00000000E+00)*_fp.y + vec4( 5.00000000E-01, 2.00000000E+00, -5.00000000E-01, -2.00000000E+00)*_fp.x).w > 0.00000000E+00);
    _fx_up = bvec4((vec4( 1.00000000E+00, -1.00000000E+00, -1.00000000E+00, 1.00000000E+00)*_fp.y + vec4( 2.00000000E+00, 5.00000000E-01, -2.00000000E+00, -5.00000000E-01)*_fp.x).x > 2.00000000E+00, (vec4( 1.00000000E+00, -1.00000000E+00, -1.00000000E+00, 1.00000000E+00)*_fp.y + vec4( 2.00000000E+00, 5.00000000E-01, -2.00000000E+00, -5.00000000E-01)*_fp.x).y > 0.00000000E+00, (vec4( 1.00000000E+00, -1.00000000E+00, -1.00000000E+00, 1.00000000E+00)*_fp.y + vec4( 2.00000000E+00, 5.00000000E-01, -2.00000000E+00, -5.00000000E-01)*_fp.x).z > -1.00000000E+00, (vec4( 1.00000000E+00, -1.00000000E+00, -1.00000000E+00, 1.00000000E+00)*_fp.y + vec4( 2.00000000E+00, 5.00000000E-01, -2.00000000E+00, -5.00000000E-01)*_fp.x).w > 5.00000000E-01);
    _interp_restriction_lv1 = bvec4(_e1.x != _b1.w && _e1.x != _b1.z, _e1.y != _b1.x && _e1.y != _b1.w, _e1.z != _b1.y && _e1.z != _b1.x, _e1.w != _b1.z && _e1.w != _b1.y);
    _interp_restriction_lv2_left = bvec4(_e1.x != _c3.z && _b1.y != _c3.z, _e1.y != _c3.w && _b1.z != _c3.w, _e1.z != _c3.x && _b1.w != _c3.x, _e1.w != _c3.y && _b1.x != _c3.y);
    _interp_restriction_lv2_up = bvec4(_e1.x != _c3.x && _b1.x != _c3.x, _e1.y != _c3.y && _b1.y != _c3.y, _e1.z != _c3.z && _b1.z != _c3.z, _e1.w != _c3.w && _b1.w != _c3.w);
    _a0182 = _e1 - _c3;
    _TMP179 = abs(_a0182);
    _a0186 = _e1 - _c3.zwxy;
    _TMP183 = abs(_a0186);
    _a0190 = _c3.wxyz - _h5;
    _TMP187 = abs(_a0190);
    _a0194 = _c3.wxyz - _h5.yzwx;
    _TMP191 = abs(_a0194);
    _a0198 = _b1.zwxy - _b1.wxyz;
    _TMP195 = abs(_a0198);
    _TMP27 = _TMP179 + _TMP183 + _TMP187 + _TMP191 + 4.00000000E+00*_TMP195;
    _a0204 = _b1.zwxy - _b1.yzwx;
    _TMP201 = abs(_a0204);
    _a0208 = _b1.zwxy - _i5;
    _TMP205 = abs(_a0208);
    _a0212 = _b1.wxyz - _i4;
    _TMP209 = abs(_a0212);
    _a0216 = _b1.wxyz - _b1;
    _TMP213 = abs(_a0216);
    _a0220 = _e1 - _c3.wxyz;
    _TMP217 = abs(_a0220);
    _TMP28 = _TMP201 + _TMP205 + _TMP209 + _TMP213 + 4.00000000E+00*_TMP217;
    _edr = bvec4(_TMP27.x < _TMP28.x && _interp_restriction_lv1.x, _TMP27.y < _TMP28.y && _interp_restriction_lv1.y, _TMP27.z < _TMP28.z && _interp_restriction_lv1.z, _TMP27.w < _TMP28.w && _interp_restriction_lv1.w);
    _a0224 = _b1.wxyz - _c3.zwxy;
    _TMP221 = abs(_a0224);
    _a0228 = _b1.zwxy - _c3;
    _TMP225 = abs(_a0228);
    _edr_left = bvec4((2.00000000E+00*_TMP221).x <= _TMP225.x && _interp_restriction_lv2_left.x, (2.00000000E+00*_TMP221).y <= _TMP225.y && _interp_restriction_lv2_left.y, (2.00000000E+00*_TMP221).z <= _TMP225.z && _interp_restriction_lv2_left.z, (2.00000000E+00*_TMP221).w <= _TMP225.w && _interp_restriction_lv2_left.w);
    _a0232 = _b1.wxyz - _c3.zwxy;
    _TMP229 = abs(_a0232);
    _a0236 = _b1.zwxy - _c3;
    _TMP233 = abs(_a0236);
    _edr_up = bvec4(_TMP229.x >= (2.00000000E+00*_TMP233).x && _interp_restriction_lv2_up.x, _TMP229.y >= (2.00000000E+00*_TMP233).y && _interp_restriction_lv2_up.y, _TMP229.z >= (2.00000000E+00*_TMP233).z && _interp_restriction_lv2_up.z, _TMP229.w >= (2.00000000E+00*_TMP233).w && _interp_restriction_lv2_up.w);
    _nc = bvec4(_edr.x && (_fx.x || _edr_left.x && _fx_left.x || _edr_up.x && _fx_up.x), _edr.y && (_fx.y || _edr_left.y && _fx_left.y || _edr_up.y && _fx_up.y), _edr.z && (_fx.z || _edr_left.z && _fx_left.z || _edr_up.z && _fx_up.z), _edr.w && (_fx.w || _edr_left.w && _fx_left.w || _edr_up.w && _fx_up.w));
    _a0240 = _e1 - _b1.wxyz;
    _TMP237 = abs(_a0240);
    _a0244 = _e1 - _b1.zwxy;
    _TMP241 = abs(_a0244);
    _px = bvec4(_TMP237.x <= _TMP241.x, _TMP237.y <= _TMP241.y, _TMP237.z <= _TMP241.z, _TMP237.w <= _TMP241.w);
    if (_nc.x) { 
        if (_px.x) { 
            _TMP36 = _F;
        } else {
            _TMP36 = _H;
        } 
        _TMP35 = _TMP36;
    } else {
        if (_nc.y) { 
            if (_px.y) { 
                _TMP38 = _B2;
            } else {
                _TMP38 = _F;
            } 
            _TMP37 = _TMP38;
        } else {
            if (_nc.z) { 
                if (_px.z) { 
                    _TMP40 = _D;
                } else {
                    _TMP40 = _B2;
                } 
                _TMP39 = _TMP40;
            } else {
                if (_nc.w) { 
                    if (_px.w) { 
                        _TMP42 = _H;
                    } else {
                        _TMP42 = _D;
                    } 
                    _TMP41 = _TMP42;
                } else {
                    _TMP41 = _E;
                } 
                _TMP39 = _TMP41;
            } 
            _TMP37 = _TMP39;
        } 
        _TMP35 = _TMP37;
    } 
    if (_nc.w) { 
        if (_px.w) { 
            _TMP44 = _H;
        } else {
            _TMP44 = _D;
        } 
        _TMP43 = _TMP44;
    } else {
        if (_nc.z) { 
            if (_px.z) { 
                _TMP46 = _D;
            } else {
                _TMP46 = _B2;
            } 
            _TMP45 = _TMP46;
        } else {
            if (_nc.y) { 
                if (_px.y) { 
                    _TMP48 = _B2;
                } else {
                    _TMP48 = _F;
                } 
                _TMP47 = _TMP48;
            } else {
                if (_nc.x) { 
                    if (_px.x) { 
                        _TMP50 = _F;
                    } else {
                        _TMP50 = _H;
                    } 
                    _TMP49 = _TMP50;
                } else {
                    _TMP49 = _E;
                } 
                _TMP47 = _TMP49;
            } 
            _TMP45 = _TMP47;
        } 
        _TMP43 = _TMP45;
    } 
    _a0248 = _E - _TMP35;
    _TMP60 = abs(vec3(float(_a0248.x), float(_a0248.y), float(_a0248.z)));
    _df0246 = vec3(float(_TMP60.x), float(_TMP60.y), float(_TMP60.z));
    _TMP51 = _df0246.x + _df0246.y + _df0246.z;
    _a0252 = _E - _TMP43;
    _TMP60 = abs(vec3(float(_a0252.x), float(_a0252.y), float(_a0252.z)));
    _df0250 = vec3(float(_TMP60.x), float(_TMP60.y), float(_TMP60.z));
    _TMP52 = _df0250.x + _df0250.y + _df0250.z;
    _TMP53 = float((_TMP52 >= _TMP51));
    _res = _TMP35 + _TMP53*(_TMP43 - _TMP35);
    _ret_0 = vec4(_res.x, _res.y, _res.z, 1.00000000E+00);
    gl_FragColor = vec4(float(_ret_0.x), float(_ret_0.y), float(_ret_0.z), float(_ret_0.w));
    return;
} 
 ]]></fragment>
</shader>
