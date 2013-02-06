<?xml version="1.0" encoding="UTF-8"?>
<!-- XML/GLSL shader autogenerated by cg2xml.py -->
<shader language="GLSL" style="GLES2">
    <vertex><![CDATA[
varying     float _frame_rotation;
varying     float _frame_direction;
varying     float _frame_count;
varying     vec2 _output_dummy_size;
varying     vec4 _color1;
struct output_dummy {
    vec4 _color1;
};
struct input_dummy {
    vec2 _video_size;
    vec2 _texture_size;
    vec2 _output_dummy_size;
    float _frame_count;
    float _frame_direction;
    float _frame_rotation;
};
vec4 _oPosition1;
uniform mat4 rubyMVPMatrix;
vec4 _r0003;
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
    vec4 _oColor;
    vec2 _otexCoord;
    _r0003.x = dot(rubyMVPMatrix_[0], rubyVertexCoord);
    _r0003.y = dot(rubyMVPMatrix_[1], rubyVertexCoord);
    _r0003.z = dot(rubyMVPMatrix_[2], rubyVertexCoord);
    _r0003.w = dot(rubyMVPMatrix_[3], rubyVertexCoord);
    _oPosition1 = _r0003;
    _oColor = COLOR;
    _otexCoord = rubyTexCoord.xy;
    gl_Position = _r0003;
    COL0 = COLOR;
    TEX0.xy = rubyTexCoord.xy;
} 
 ]]></vertex>
    <fragment><![CDATA[
#ifdef GL_ES
precision mediump float;
#endif
varying     float _frame_rotation;
varying     float _frame_direction;
varying     float _frame_count;
varying     vec2 _output_dummy_size;
varying     vec4 _color1;
struct output_dummy {
    vec4 _color1;
};
struct input_dummy {
    vec2 _video_size;
    vec2 _texture_size;
    vec2 _output_dummy_size;
    float _frame_count;
    float _frame_direction;
    float _frame_rotation;
};
vec3 _TMP27;
vec3 _TMP28;
vec3 _TMP25;
vec3 _TMP26;
vec3 _TMP23;
vec3 _TMP24;
float _TMP29;
float _TMP30;
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
uniform sampler2D rubyTexture;
uniform input_dummy _IN1;
vec2 _c0038;
vec2 _c0040;
vec2 _c0042;
vec2 _c0044;
vec2 _c0048;
vec2 _c0050;
vec2 _c0052;
vec2 _c0054;
vec2 _c0056;
vec2 _c0058;
vec2 _c0060;
vec2 _c0062;
vec2 _c0064;
vec2 _c0066;
vec2 _c0068;
vec2 _c0070;
varying vec4 TEX0;
 
uniform mediump vec2 rubyOutputSize;
uniform mediump vec2 rubyTextureSize;
uniform mediump vec2 rubyInputSize;
void main()
{
    vec2 _ps;
    vec2 _dx;
    vec2 _dy;
    vec2 _pixcoord;
    vec2 _fp;
    vec2 _d11;
    vec3 _E[9];
    vec3 _A;
    vec3 _B;
    vec3 _C;
    vec3 _D;
    vec3 _E0;
    vec3 _F;
    vec3 _G;
    vec3 _H;
    vec3 _I;
    vec3 _A1;
    vec3 _C1;
    vec3 _A0;
    vec3 _G0;
    vec3 _C4;
    vec3 _I4;
    vec3 _G5;
    vec3 _I5;
    float _a;
    float _b;
    float _c;
    float _d;
    float _e;
    float _f;
    float _g;
    float _h;
    float _i;
    float _a1;
    float _c1;
    float _a0;
    float _g0;
    float _c4;
    float _i4;
    float _g5;
    float _i5;
    vec3 _res;
    output_dummy _OUT;
    _ps = vec2(9.99899983E-01/rubyTextureSize.x, 9.99899983E-01/rubyTextureSize.y);
    _dx = vec2(float(_ps.x), 0.00000000E+00);
    _dy = vec2(0.00000000E+00, float(_ps.y));
    _pixcoord = TEX0.xy/_ps;
    _fp = fract(_pixcoord);
    _d11 = TEX0.xy - _fp*_ps;
    _c0038 = (_d11 - vec2(float(_dx.x), float(_dx.y))) - vec2(float(_dy.x), float(_dy.y));
    _TMP0 = texture2D(rubyTexture, _c0038);
    _A = vec3(float(_TMP0.x), float(_TMP0.y), float(_TMP0.z));
    _c0040 = _d11 - vec2(float(_dy.x), float(_dy.y));
    _TMP1 = texture2D(rubyTexture, _c0040);
    _B = vec3(float(_TMP1.x), float(_TMP1.y), float(_TMP1.z));
    _c0042 = (_d11 + vec2(float(_dx.x), float(_dx.y))) - vec2(float(_dy.x), float(_dy.y));
    _TMP2 = texture2D(rubyTexture, _c0042);
    _C = vec3(float(_TMP2.x), float(_TMP2.y), float(_TMP2.z));
    _c0044 = _d11 - vec2(float(_dx.x), float(_dx.y));
    _TMP3 = texture2D(rubyTexture, _c0044);
    _D = vec3(float(_TMP3.x), float(_TMP3.y), float(_TMP3.z));
    _TMP4 = texture2D(rubyTexture, _d11);
    _E0 = vec3(float(_TMP4.x), float(_TMP4.y), float(_TMP4.z));
    _c0048 = _d11 + vec2(float(_dx.x), float(_dx.y));
    _TMP5 = texture2D(rubyTexture, _c0048);
    _F = vec3(float(_TMP5.x), float(_TMP5.y), float(_TMP5.z));
    _c0050 = (_d11 - vec2(float(_dx.x), float(_dx.y))) + vec2(float(_dy.x), float(_dy.y));
    _TMP6 = texture2D(rubyTexture, _c0050);
    _G = vec3(float(_TMP6.x), float(_TMP6.y), float(_TMP6.z));
    _c0052 = _d11 + vec2(float(_dy.x), float(_dy.y));
    _TMP7 = texture2D(rubyTexture, _c0052);
    _H = vec3(float(_TMP7.x), float(_TMP7.y), float(_TMP7.z));
    _c0054 = _d11 + vec2(float(_dx.x), float(_dx.y)) + vec2(float(_dy.x), float(_dy.y));
    _TMP8 = texture2D(rubyTexture, _c0054);
    _I = vec3(float(_TMP8.x), float(_TMP8.y), float(_TMP8.z));
    _c0056 = ((_d11 - vec2(float(_dx.x), float(_dx.y))) - vec2(float(_dy.x), float(_dy.y))) - vec2(float(_dy.x), float(_dy.y));
    _TMP9 = texture2D(rubyTexture, _c0056);
    _A1 = vec3(float(_TMP9.x), float(_TMP9.y), float(_TMP9.z));
    _c0058 = ((_d11 + vec2(float(_dx.x), float(_dx.y))) - vec2(float(_dy.x), float(_dy.y))) - vec2(float(_dy.x), float(_dy.y));
    _TMP10 = texture2D(rubyTexture, _c0058);
    _C1 = vec3(float(_TMP10.x), float(_TMP10.y), float(_TMP10.z));
    _c0060 = ((_d11 - vec2(float(_dx.x), float(_dx.y))) - vec2(float(_dx.x), float(_dx.y))) - vec2(float(_dy.x), float(_dy.y));
    _TMP11 = texture2D(rubyTexture, _c0060);
    _A0 = vec3(float(_TMP11.x), float(_TMP11.y), float(_TMP11.z));
    _c0062 = ((_d11 - vec2(float(_dx.x), float(_dx.y))) - vec2(float(_dx.x), float(_dx.y))) + vec2(float(_dy.x), float(_dy.y));
    _TMP12 = texture2D(rubyTexture, _c0062);
    _G0 = vec3(float(_TMP12.x), float(_TMP12.y), float(_TMP12.z));
    _c0064 = (_d11 + vec2(float(_dx.x), float(_dx.y)) + vec2(float(_dx.x), float(_dx.y))) - vec2(float(_dy.x), float(_dy.y));
    _TMP13 = texture2D(rubyTexture, _c0064);
    _C4 = vec3(float(_TMP13.x), float(_TMP13.y), float(_TMP13.z));
    _c0066 = _d11 + vec2(float(_dx.x), float(_dx.y)) + vec2(float(_dx.x), float(_dx.y)) + vec2(float(_dy.x), float(_dy.y));
    _TMP14 = texture2D(rubyTexture, _c0066);
    _I4 = vec3(float(_TMP14.x), float(_TMP14.y), float(_TMP14.z));
    _c0068 = (_d11 - vec2(float(_dx.x), float(_dx.y))) + vec2(float(_dy.x), float(_dy.y)) + vec2(float(_dy.x), float(_dy.y));
    _TMP15 = texture2D(rubyTexture, _c0068);
    _G5 = vec3(float(_TMP15.x), float(_TMP15.y), float(_TMP15.z));
    _c0070 = _d11 + vec2(float(_dx.x), float(_dx.y)) + vec2(float(_dy.x), float(_dy.y)) + vec2(float(_dy.x), float(_dy.y));
    _TMP16 = texture2D(rubyTexture, _c0070);
    _I5 = vec3(float(_TMP16.x), float(_TMP16.y), float(_TMP16.z));
    _E[2] = _E0;
    _E[1] = _E0;
    _E[0] = _E0;
    _E[5] = _E0;
    _E[3] = _E0;
    _E[8] = _E0;
    _E[7] = _E0;
    _E[6] = _E0;
    _TMP30 = dot(vec3(float(_A.x), float(_A.y), float(_A.z)), vec3( 6.55360000E+04, 2.55000000E+02, 1.00000000E+00));
    _TMP29 = float(_TMP30);
    _a = float(_TMP29);
    _TMP30 = dot(vec3(float(_B.x), float(_B.y), float(_B.z)), vec3( 6.55360000E+04, 2.55000000E+02, 1.00000000E+00));
    _TMP29 = float(_TMP30);
    _b = float(_TMP29);
    _TMP30 = dot(vec3(float(_C.x), float(_C.y), float(_C.z)), vec3( 6.55360000E+04, 2.55000000E+02, 1.00000000E+00));
    _TMP29 = float(_TMP30);
    _c = float(_TMP29);
    _TMP30 = dot(vec3(float(_D.x), float(_D.y), float(_D.z)), vec3( 6.55360000E+04, 2.55000000E+02, 1.00000000E+00));
    _TMP29 = float(_TMP30);
    _d = float(_TMP29);
    _TMP30 = dot(vec3(float(_E0.x), float(_E0.y), float(_E0.z)), vec3( 6.55360000E+04, 2.55000000E+02, 1.00000000E+00));
    _TMP29 = float(_TMP30);
    _e = float(_TMP29);
    _TMP30 = dot(vec3(float(_F.x), float(_F.y), float(_F.z)), vec3( 6.55360000E+04, 2.55000000E+02, 1.00000000E+00));
    _TMP29 = float(_TMP30);
    _f = float(_TMP29);
    _TMP30 = dot(vec3(float(_G.x), float(_G.y), float(_G.z)), vec3( 6.55360000E+04, 2.55000000E+02, 1.00000000E+00));
    _TMP29 = float(_TMP30);
    _g = float(_TMP29);
    _TMP30 = dot(vec3(float(_H.x), float(_H.y), float(_H.z)), vec3( 6.55360000E+04, 2.55000000E+02, 1.00000000E+00));
    _TMP29 = float(_TMP30);
    _h = float(_TMP29);
    _TMP30 = dot(vec3(float(_I.x), float(_I.y), float(_I.z)), vec3( 6.55360000E+04, 2.55000000E+02, 1.00000000E+00));
    _TMP29 = float(_TMP30);
    _i = float(_TMP29);
    _TMP30 = dot(vec3(float(_A1.x), float(_A1.y), float(_A1.z)), vec3( 6.55360000E+04, 2.55000000E+02, 1.00000000E+00));
    _TMP29 = float(_TMP30);
    _a1 = float(_TMP29);
    _TMP30 = dot(vec3(float(_C1.x), float(_C1.y), float(_C1.z)), vec3( 6.55360000E+04, 2.55000000E+02, 1.00000000E+00));
    _TMP29 = float(_TMP30);
    _c1 = float(_TMP29);
    _TMP30 = dot(vec3(float(_A0.x), float(_A0.y), float(_A0.z)), vec3( 6.55360000E+04, 2.55000000E+02, 1.00000000E+00));
    _TMP29 = float(_TMP30);
    _a0 = float(_TMP29);
    _TMP30 = dot(vec3(float(_G0.x), float(_G0.y), float(_G0.z)), vec3( 6.55360000E+04, 2.55000000E+02, 1.00000000E+00));
    _TMP29 = float(_TMP30);
    _g0 = float(_TMP29);
    _TMP30 = dot(vec3(float(_C4.x), float(_C4.y), float(_C4.z)), vec3( 6.55360000E+04, 2.55000000E+02, 1.00000000E+00));
    _TMP29 = float(_TMP30);
    _c4 = float(_TMP29);
    _TMP30 = dot(vec3(float(_I4.x), float(_I4.y), float(_I4.z)), vec3( 6.55360000E+04, 2.55000000E+02, 1.00000000E+00));
    _TMP29 = float(_TMP30);
    _i4 = float(_TMP29);
    _TMP30 = dot(vec3(float(_G5.x), float(_G5.y), float(_G5.z)), vec3( 6.55360000E+04, 2.55000000E+02, 1.00000000E+00));
    _TMP29 = float(_TMP30);
    _g5 = float(_TMP29);
    _TMP30 = dot(vec3(float(_I5.x), float(_I5.y), float(_I5.z)), vec3( 6.55360000E+04, 2.55000000E+02, 1.00000000E+00));
    _TMP29 = float(_TMP30);
    _i5 = float(_TMP29);
    if (_e != _h && _h == _f && (_e != _i && (_e != _b || _e != _d || _b == _c1 && _d == _g0 || _f != _b && _f != _c || _h != _d && _h != _g) || _e == _g && (_i == _h || _e == _d || _h != _d) || _e == _c && (_i == _h || _e == _b || _f != _b))) { 
        if (_e == _c && _e == _d && _h == _g) { 
            _E[5] = (3.00000000E+00*_E0 + _F)*2.50000000E-01;
            _E[6] = _E[5];
            _E[7] = (_E0 + _F) - _E[5];
            _E[8] = _H;
        } else {
            if (_e == _g && _e == _b && _f == _c) { 
                _E[7] = (3.00000000E+00*_E0 + _H)*2.50000000E-01;
                _E[2] = _E[7];
                _E[5] = (_E0 + _H) - _E[7];
                _E[8] = _F;
            } else {
                _E[8] = _E0 + 8.75000000E-01*(_F - _E0);
                _E[5] = (_E0 + _F) - _E[8];
                _E[7] = _E[5];
            } 
        } 
    } else {
        if (_e != _h && _g == _e && _e == _c && _e != _i && _e != _f) { 
            _E[8] = _E0 + 8.75000000E-01*(_F - _E0);
            _E[5] = _E0 + 1.25000000E-01*(_F - _E0);
            _E[7] = _E0 + 1.25000000E-01*(_H - _E0);
        } 
    } 
    if (_e != _f && _f == _b && (_e != _c && (_e != _d || _e != _h || _d == _a0 && _h == _i5 || _b != _d && _b != _a || _f != _h && _f != _i) || _e == _i && (_c == _f || _e == _h || _f != _h) || _e == _a && (_c == _f || _e == _d || _b != _d))) { 
        if (_e == _a && _e == _h && _f == _i) { 
            _E[1] = (3.00000000E+00*_E0 + _B)*2.50000000E-01;
            _E[8] = _E[1];
            _E[5] = (_E[5] + _B) - _E[1];
            _E[2] = _F;
        } else {
            if (_e == _i && _e == _d && _b == _a) { 
                _E[5] = (3.00000000E+00*_E[5] + _F)*2.50000000E-01;
                _E[0] = _E[5];
                _E[1] = (_E0 + _F) - _E[5];
                _E[2] = _B;
            } else {
                _E[2] = _E[2] + 8.75000000E-01*(_B - _E[2]);
                _E[1] = (_E0 + _B) - _E[2];
                _E[5] = _E[1];
            } 
        } 
    } else {
        if (_e != _f && _i == _e && _e == _a && _e != _c && _e != _b) { 
            _E[2] = _E[2] + 8.75000000E-01*(_B - _E[2]);
            _E[1] = _E0 + 1.25000000E-01*(_B - _E0);
            _E[5] = _E[5] + 1.25000000E-01*(_F - _E[5]);
        } 
    } 
    if (_e != _b && _b == _d && (_e != _a && (_e != _h || _e != _f || _h == _g5 && _f == _c4 || _d != _h && _d != _g || _b != _f && _b != _c) || _e == _c && (_a == _b || _e == _f || _b != _f) || _e == _g && (_a == _b || _e == _h || _d != _h))) { 
        if (_e == _g && _e == _f && _b == _c) { 
            _E[3] = (3.00000000E+00*_E0 + _D)*2.50000000E-01;
            _E[2] = _E[3];
            _E[1] = (_E[1] + _D) - _E[3];
            _E[0] = _B;
        } else {
            if (_e == _c && _e == _h && _d == _g) { 
                _E[1] = (3.00000000E+00*_E[1] + _B)*2.50000000E-01;
                _E[6] = _E[1];
                _E[3] = (_E0 + _B) - _E[1];
                _E[0] = _D;
            } else {
                _E[0] = _E[0] + 8.75000000E-01*(_D - _E[0]);
                _E[3] = (_E0 + _D) - _E[0];
                _E[1] = _E[3];
            } 
        } 
    } else {
        if (_e != _b && _c == _e && _e == _g && _e != _a && _e != _d) { 
            _E[0] = _E[0] + 8.75000000E-01*(_D - _E[0]);
            _E[3] = _E0 + 1.25000000E-01*(_D - _E0);
            _E[1] = _E[1] + 1.25000000E-01*(_B - _E[1]);
        } 
    } 
    if (_e != _d && _d == _h && (_e != _g && (_e != _f || _e != _b || _f == _i4 && _b == _a1 || _h != _f && _h != _i || _d != _b && _d != _a) || _e == _a && (_g == _d || _e == _b || _d != _b) || _e == _i && (_g == _d || _e == _f || _h != _f))) { 
        if (_e == _i && _e == _b && _d == _a) { 
            _E[7] = (3.00000000E+00*_E[7] + _H)*2.50000000E-01;
            _E[0] = _E[7];
            _E[3] = (_E[3] + _H) - _E[7];
            _E[6] = _D;
        } else {
            if (_e == _a && _e == _f && _h == _i) { 
                _E[3] = (3.00000000E+00*_E[3] + _D)*2.50000000E-01;
                _E[8] = _E[3];
                _E[7] = (_E[7] + _D) - _E[3];
                _E[6] = _H;
            } else {
                _E[6] = _E[6] + 8.75000000E-01*(_H - _E[6]);
                _E[7] = (_E[7] + _H) - _E[6];
                _E[3] = _E[7];
            } 
        } 
    } else {
        if (_e != _d && _a == _e && _e == _i && _e != _g && _e != _h) { 
            _E[6] = _E[6] + 8.75000000E-01*(_H - _E[6]);
            _E[7] = _E[7] + 1.25000000E-01*(_H - _E[7]);
            _E[3] = _E[3] + 1.25000000E-01*(_D - _E[3]);
        } 
    } 
    if (_fp.x < 3.33333343E-01) { 
        if (_fp.y < 3.33333343E-01) { 
            _TMP23 = _E[0];
        } else {
            if (_fp.y < 6.66666687E-01) { 
                _TMP24 = _E[3];
            } else {
                _TMP24 = _E[6];
            } 
            _TMP23 = _TMP24;
        } 
        _res = vec3(float(_TMP23.x), float(_TMP23.y), float(_TMP23.z));
    } else {
        if (_fp.x < 6.66666687E-01) { 
            if (_fp.y < 3.33333343E-01) { 
                _TMP25 = _E[1];
            } else {
                if (_fp.y < 6.66666687E-01) { 
                    _TMP26 = _E0;
                } else {
                    _TMP26 = _E[7];
                } 
                _TMP25 = _TMP26;
            } 
            _res = vec3(float(_TMP25.x), float(_TMP25.y), float(_TMP25.z));
        } else {
            if (_fp.y < 3.33333343E-01) { 
                _TMP27 = _E[2];
            } else {
                if (_fp.y < 6.66666687E-01) { 
                    _TMP28 = _E[5];
                } else {
                    _TMP28 = _E[8];
                } 
                _TMP27 = _TMP28;
            } 
            _res = vec3(float(_TMP27.x), float(_TMP27.y), float(_TMP27.z));
        } 
    } 
    _OUT._color1 = vec4(_res.x, _res.y, _res.z, 1.00000000E+00);
    gl_FragColor = _OUT._color1;
    return;
} 
 ]]></fragment>
</shader>
