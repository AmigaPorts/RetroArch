<?xml version="1.0" encoding="UTF-8"?>
<!-- XML/GLSL shader autogenerated by cg2xml.py -->
<shader language="GLSL" style="GLES2">
    <vertex><![CDATA[
varying     vec4 _col;
varying     float _frame_rotation;
varying     float _frame_direction;
varying     float _frame_count;
varying     vec2 _output_dummy_size;
struct input_dummy {
    vec2 _video_size;
    vec2 _texture_size;
    vec2 _output_dummy_size;
    float _frame_count;
    float _frame_direction;
    float _frame_rotation;
};
struct output_dummy {
    vec4 _col;
};
vec4 _oPosition1;
uniform mat4 rubyMVPMatrix;
vec4 _r0003;
attribute vec4 rubyVertexCoord;
attribute vec4 rubyTexCoord;
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
    vec2 _otexCoord;
    _r0003.x = dot(rubyMVPMatrix_[0], rubyVertexCoord);
    _r0003.y = dot(rubyMVPMatrix_[1], rubyVertexCoord);
    _r0003.z = dot(rubyMVPMatrix_[2], rubyVertexCoord);
    _r0003.w = dot(rubyMVPMatrix_[3], rubyVertexCoord);
    _oPosition1 = _r0003;
    _otexCoord = rubyTexCoord.xy;
    gl_Position = _r0003;
    TEX0.xy = rubyTexCoord.xy;
} 
 ]]></vertex>
    <fragment><![CDATA[
#ifdef GL_ES
precision mediump float;
#endif
varying     vec4 _col;
varying     float _frame_rotation;
varying     float _frame_direction;
varying     float _frame_count;
varying     vec2 _output_dummy_size;
struct input_dummy {
    vec2 _video_size;
    vec2 _texture_size;
    vec2 _output_dummy_size;
    float _frame_count;
    float _frame_direction;
    float _frame_rotation;
};
struct output_dummy {
    vec4 _col;
};
vec4 _TMP1;
uniform sampler2D rubyTexture;
vec2 _c0008;
varying vec4 TEX0;
 
uniform mediump vec2 rubyOutputSize;
uniform mediump vec2 rubyTextureSize;
uniform mediump vec2 rubyInputSize;
void main()
{
    vec4 _color;
    output_dummy _OUT;
    _color = texture2D(rubyTexture, TEX0.xy);
    _c0008 = TEX0.xy + vec2( -4.89317987E-04, -6.08707487E-04);
    _TMP1 = texture2D(rubyTexture, _c0008);
    _color = _color + _TMP1;
    _c0008 = TEX0.xy + vec2( -1.26021600E-03, -1.10369998E-04);
    _TMP1 = texture2D(rubyTexture, _c0008);
    _color = _color + _TMP1;
    _c0008 = TEX0.xy + vec2( -1.04387093E-03, 6.85705512E-04);
    _TMP1 = texture2D(rubyTexture, _c0008);
    _color = _color + _TMP1;
    _c0008 = TEX0.xy + vec2( -3.05017515E-04, 9.31073970E-04);
    _TMP1 = texture2D(rubyTexture, _c0008);
    _color = _color + _TMP1;
    _c0008 = TEX0.xy + vec2( 1.44351006E-03, -2.92474520E-04);
    _TMP1 = texture2D(rubyTexture, _c0008);
    _color = _color + _TMP1;
    _c0008 = TEX0.xy + vec2( 7.10150984E-04, -7.20039010E-04);
    _TMP1 = texture2D(rubyTexture, _c0008);
    _color = _color + _TMP1;
    _c0008 = TEX0.xy + vec2( 7.79184047E-04, 1.15053297E-03);
    _TMP1 = texture2D(rubyTexture, _c0008);
    _color = _color + _TMP1;
    _c0008 = TEX0.xy + vec2( 2.78191495E-04, -1.33968599E-03);
    _TMP1 = texture2D(rubyTexture, _c0008);
    _color = _color + _TMP1;
    _c0008 = TEX0.xy + vec2( 7.61146483E-04, 9.66375010E-05);
    _TMP1 = texture2D(rubyTexture, _c0008);
    _color = _color + _TMP1;
    _c0008 = TEX0.xy + vec2( 1.34463003E-03, 6.18687016E-04);
    _TMP1 = texture2D(rubyTexture, _c0008);
    _color = _color + _TMP1;
    _c0008 = TEX0.xy + vec2( -4.82910022E-04, -1.39892253E-03);
    _TMP1 = texture2D(rubyTexture, _c0008);
    _color = _color + _TMP1;
    _c0008 = TEX0.xy + vec2( -1.18733849E-03, -8.96557525E-04);
    _TMP1 = texture2D(rubyTexture, _c0008);
    _color = _color + _TMP1;
    _OUT._col = _color/1.30000000E+01;
    gl_FragColor = _OUT._col;
    return;
} 
 ]]></fragment>
</shader>
