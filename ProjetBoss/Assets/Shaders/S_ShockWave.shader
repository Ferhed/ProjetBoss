// Upgrade NOTE: replaced '_Object2World' with 'unity_ObjectToWorld'

// Upgrade NOTE: commented out 'float4 unity_DynamicLightmapST', a built-in variable
// Upgrade NOTE: commented out 'float4 unity_LightmapST', a built-in variable

// Shader created with Shader Forge v1.03 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.03;sub:START;pass:START;ps:flbk:,lico:1,lgpr:1,nrmq:1,limd:1,uamb:True,mssp:True,lmpd:False,lprd:False,rprd:False,enco:False,frtr:True,vitr:True,dbil:False,rmgx:True,rpth:0,hqsc:True,hqlp:False,tesm:0,blpr:1,bsrc:3,bdst:7,culm:0,dpts:2,wrdp:False,dith:2,ufog:True,aust:True,igpj:True,qofs:0,qpre:3,rntp:2,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,ofsf:0,ofsu:0,f2p0:False;n:type:ShaderForge.SFN_Final,id:7937,x:32719,y:32712,varname:node_7937,prsc:2|diff-3166-OUT,alpha-187-OUT,disp-4259-OUT,tess-5271-OUT;n:type:ShaderForge.SFN_TexCoord,id:4393,x:28864,y:32342,varname:node_4393,prsc:2,uv:0;n:type:ShaderForge.SFN_RemapRange,id:4401,x:29040,y:32342,varname:node_4401,prsc:2,frmn:0,frmx:1,tomn:-1,tomx:1|IN-4393-UVOUT;n:type:ShaderForge.SFN_Length,id:9906,x:29209,y:32342,varname:node_9906,prsc:2|IN-4401-OUT;n:type:ShaderForge.SFN_RemapRangeAdvanced,id:2223,x:29650,y:33126,varname:node_2223,prsc:2|IN-9906-OUT,IMIN-3556-OUT,IMAX-7405-OUT,OMIN-4736-OUT,OMAX-9096-OUT;n:type:ShaderForge.SFN_RemapRangeAdvanced,id:7990,x:29640,y:32699,varname:node_7990,prsc:2|IN-9906-OUT,IMIN-3556-OUT,IMAX-7405-OUT,OMIN-2875-OUT,OMAX-81-OUT;n:type:ShaderForge.SFN_Vector1,id:3556,x:28861,y:32543,varname:node_3556,prsc:2,v1:0;n:type:ShaderForge.SFN_Vector1,id:7405,x:28861,y:32604,varname:node_7405,prsc:2,v1:1;n:type:ShaderForge.SFN_OneMinus,id:81,x:28861,y:32882,varname:node_81,prsc:2|IN-3960-OUT;n:type:ShaderForge.SFN_OneMinus,id:7078,x:28861,y:32744,varname:node_7078,prsc:2|IN-2875-OUT;n:type:ShaderForge.SFN_Vector1,id:2875,x:28861,y:32668,varname:node_2875,prsc:2,v1:5;n:type:ShaderForge.SFN_Slider,id:6120,x:27661,y:32886,ptovrint:False,ptlb:Ring Radius,ptin:_RingRadius,varname:node_6120,prsc:2,min:0,cur:10,max:100;n:type:ShaderForge.SFN_Slider,id:5727,x:27661,y:33049,ptovrint:False,ptlb:Ring Strengh,ptin:_RingStrengh,varname:node_5727,prsc:2,min:0.1,cur:10,max:10;n:type:ShaderForge.SFN_Multiply,id:9584,x:30079,y:32702,varname:node_9584,prsc:2|A-2858-OUT,B-3982-OUT;n:type:ShaderForge.SFN_Vector1,id:4452,x:28861,y:33278,varname:node_4452,prsc:2,v1:2;n:type:ShaderForge.SFN_Multiply,id:9096,x:29113,y:33184,varname:node_9096,prsc:2|A-4751-OUT,B-4452-OUT;n:type:ShaderForge.SFN_Add,id:4751,x:28861,y:33122,varname:node_4751,prsc:2|A-3960-OUT,B-8672-OUT;n:type:ShaderForge.SFN_Slider,id:5271,x:31361,y:33757,ptovrint:False,ptlb:Tesselation,ptin:_Tesselation,varname:node_5271,prsc:2,min:0,cur:35.31651,max:100;n:type:ShaderForge.SFN_NormalVector,id:3767,x:31767,y:33013,prsc:2,pt:False;n:type:ShaderForge.SFN_Multiply,id:4259,x:32159,y:32857,varname:node_4259,prsc:2|A-6143-OUT,B-3767-OUT,C-5167-OUT;n:type:ShaderForge.SFN_Slider,id:8995,x:31350,y:32906,ptovrint:False,ptlb:Intensity,ptin:_Intensity,varname:node_8995,prsc:2,min:0,cur:3,max:5;n:type:ShaderForge.SFN_Multiply,id:6143,x:31767,y:32854,varname:node_6143,prsc:2|A-5911-OUT,B-8995-OUT;n:type:ShaderForge.SFN_Clamp01,id:3982,x:29844,y:33126,varname:node_3982,prsc:2|IN-2223-OUT;n:type:ShaderForge.SFN_Clamp01,id:2858,x:29860,y:32702,varname:node_2858,prsc:2|IN-7990-OUT;n:type:ShaderForge.SFN_Divide,id:4736,x:29113,y:33035,varname:node_4736,prsc:2|A-7078-OUT,B-8672-OUT;n:type:ShaderForge.SFN_Multiply,id:1961,x:31767,y:32727,varname:node_1961,prsc:2|A-5911-OUT,B-7912-OUT;n:type:ShaderForge.SFN_Slider,id:7912,x:31344,y:32599,ptovrint:False,ptlb:Hardness,ptin:_Hardness,varname:node_7912,prsc:2,min:1,cur:1,max:10;n:type:ShaderForge.SFN_Vector3,id:3166,x:32434,y:32221,varname:node_3166,prsc:2,v1:1,v2:1,v3:1;n:type:ShaderForge.SFN_Multiply,id:8024,x:32159,y:32711,varname:node_8024,prsc:2|A-3732-OUT,B-1961-OUT,C-5167-OUT;n:type:ShaderForge.SFN_Slider,id:3732,x:31344,y:32487,ptovrint:False,ptlb:Opacity,ptin:_Opacity,varname:node_3732,prsc:2,min:0,cur:1,max:1;n:type:ShaderForge.SFN_Tex2d,id:3831,x:31128,y:33135,varname:node_3831,prsc:2,tex:28c7aad1372ff114b90d330f8a2dd938,ntxv:0,isnm:False|UVIN-2142-UVOUT,TEX-1976-TEX;n:type:ShaderForge.SFN_TexCoord,id:5454,x:30101,y:33130,varname:node_5454,prsc:2,uv:0;n:type:ShaderForge.SFN_Slider,id:2085,x:30101,y:33504,ptovrint:False,ptlb:Noise Speed,ptin:_NoiseSpeed,varname:node_2085,prsc:2,min:0,cur:1,max:10;n:type:ShaderForge.SFN_Tex2dAsset,id:1976,x:30868,y:33317,ptovrint:False,ptlb:Noise Texture,ptin:_NoiseTexture,varname:node_1976,tex:28c7aad1372ff114b90d330f8a2dd938,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Tex2d,id:4781,x:31128,y:33380,varname:node_4781,prsc:2,tex:28c7aad1372ff114b90d330f8a2dd938,ntxv:0,isnm:False|UVIN-5495-UVOUT,TEX-1976-TEX;n:type:ShaderForge.SFN_Multiply,id:1305,x:31353,y:33232,varname:node_1305,prsc:2|A-3831-RGB,B-4781-RGB;n:type:ShaderForge.SFN_Panner,id:5495,x:30870,y:33514,varname:node_5495,prsc:2,spu:1,spv:1|UVIN-8093-OUT,DIST-7576-OUT;n:type:ShaderForge.SFN_Panner,id:2142,x:30868,y:33137,varname:node_2142,prsc:2,spu:1,spv:1|UVIN-8093-OUT,DIST-7576-OUT;n:type:ShaderForge.SFN_Time,id:3975,x:30576,y:33677,varname:node_3975,prsc:2;n:type:ShaderForge.SFN_Multiply,id:7576,x:30576,y:33504,varname:node_7576,prsc:2|A-2085-OUT,B-3975-TSL;n:type:ShaderForge.SFN_Add,id:7819,x:31553,y:33232,varname:node_7819,prsc:2|A-1305-OUT,B-8355-OUT;n:type:ShaderForge.SFN_Slider,id:7135,x:31360,y:33447,ptovrint:False,ptlb:Noise Intensity,ptin:_NoiseIntensity,varname:node_7135,prsc:2,min:0,cur:0,max:1;n:type:ShaderForge.SFN_OneMinus,id:8355,x:31767,y:33445,varname:node_8355,prsc:2|IN-7135-OUT;n:type:ShaderForge.SFN_Clamp01,id:5167,x:31767,y:33224,varname:node_5167,prsc:2|IN-7819-OUT;n:type:ShaderForge.SFN_ComponentMask,id:187,x:32326,y:32711,varname:node_187,prsc:2,cc1:0,cc2:-1,cc3:-1,cc4:-1|IN-8024-OUT;n:type:ShaderForge.SFN_SwitchProperty,id:5911,x:30551,y:32695,ptovrint:False,ptlb:Masking,ptin:_Masking,varname:node_5911,prsc:2,on:True|A-6321-OUT,B-9584-OUT;n:type:ShaderForge.SFN_Vector1,id:6321,x:30079,y:32621,varname:node_6321,prsc:2,v1:1;n:type:ShaderForge.SFN_Add,id:3960,x:28081,y:32887,varname:node_3960,prsc:2|A-6120-OUT,B-200-OUT;n:type:ShaderForge.SFN_Vector1,id:200,x:27818,y:32965,varname:node_200,prsc:2,v1:1;n:type:ShaderForge.SFN_Add,id:8672,x:28081,y:33047,varname:node_8672,prsc:2|A-5727-OUT,B-1891-OUT;n:type:ShaderForge.SFN_Vector1,id:1891,x:27818,y:33135,varname:node_1891,prsc:2,v1:0.1;n:type:ShaderForge.SFN_Multiply,id:8093,x:30576,y:33129,varname:node_8093,prsc:2|A-5454-UVOUT,B-3080-OUT;n:type:ShaderForge.SFN_Slider,id:3080,x:30101,y:33346,ptovrint:False,ptlb:Noise UV,ptin:_NoiseUV,varname:node_3080,prsc:2,min:1,cur:1,max:10;proporder:6120-5727-5271-8995-7912-3732-2085-1976-7135-5911-3080;pass:END;sub:END;*/

Shader "Custom/S_ShockWave" {
    Properties {
        _RingRadius ("Ring Radius", Range(0, 100)) = 10
        _RingStrengh ("Ring Strengh", Range(0.1, 10)) = 10
        _Tesselation ("Tesselation", Range(0, 100)) = 35.31651
        _Intensity ("Intensity", Range(0, 5)) = 3
        _Hardness ("Hardness", Range(1, 10)) = 1
        _Opacity ("Opacity", Range(0, 1)) = 1
        _NoiseSpeed ("Noise Speed", Range(0, 10)) = 1
        _NoiseTexture ("Noise Texture", 2D) = "Blue" {}
        _NoiseIntensity ("Noise Intensity", Range(0, 1)) = 0
        [MaterialToggle] _Masking ("Masking", Float ) = 0
        _NoiseUV ("Noise UV", Range(1, 10)) = 1
        [HideInInspector]_Cutoff ("Alpha cutoff", Range(0,1)) = 0.5
    }
    SubShader {
        Tags {
            "IgnoreProjector"="True"
            "Queue"="Transparent"
            "RenderType"="Transparent"
        }
        LOD 200
        Pass {
            Name "ForwardBase"
            Tags {
                "LightMode"="ForwardBase"
            }
            Blend SrcAlpha OneMinusSrcAlpha
            ZWrite Off
            
            CGPROGRAM
            #pragma hull hull
            #pragma domain domain
            #pragma vertex tessvert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDBASE
            #include "UnityCG.cginc"
            #include "Tessellation.cginc"
            #pragma multi_compile_fwdbase
            #pragma multi_compile_fog
            #pragma exclude_renderers xbox360 ps3 flash d3d11_9x 
            #pragma target 5.0
            // Dithering function, to use with scene UVs (screen pixel coords)
            // 3x3 Bayer matrix, based on https://en.wikipedia.org/wiki/Ordered_dithering
            float BinaryDither3x3( float value, float2 sceneUVs ) {
                float3x3 mtx = float3x3(
                    float3( 3,  7,  4 )/10.0,
                    float3( 6,  1,  9 )/10.0,
                    float3( 2,  8,  5 )/10.0
                );
                float2 px = floor(_ScreenParams.xy * sceneUVs);
                int xSmp = fmod(px.x,3);
                int ySmp = fmod(px.y,3);
                float3 xVec = 1-saturate(abs(float3(0,1,2) - xSmp));
                float3 yVec = 1-saturate(abs(float3(0,1,2) - ySmp));
                float3 pxMult = float3( dot(mtx[0],yVec), dot(mtx[1],yVec), dot(mtx[2],yVec) );
                return round(value + dot(pxMult, xVec));
            }
            uniform float4 _LightColor0;
            uniform float4 _TimeEditor;
            // float4 unity_LightmapST;
            #ifdef DYNAMICLIGHTMAP_ON
                // float4 unity_DynamicLightmapST;
            #endif
            uniform float _RingRadius;
            uniform float _RingStrengh;
            uniform float _Tesselation;
            uniform float _Intensity;
            uniform float _Hardness;
            uniform float _Opacity;
            uniform float _NoiseSpeed;
            uniform sampler2D _NoiseTexture; uniform float4 _NoiseTexture_ST;
            uniform float _NoiseIntensity;
            uniform fixed _Masking;
            uniform float _NoiseUV;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float4 tangent : TANGENT;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float4 posWorld : TEXCOORD1;
                float3 normalDir : TEXCOORD2;
                float4 screenPos : TEXCOORD3;
                UNITY_FOG_COORDS(4)
                #ifndef LIGHTMAP_OFF
                    float4 uvLM : TEXCOORD5;
                #else
                    float3 shLight : TEXCOORD5;
                #endif
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.normalDir = mul(unity_ObjectToWorld, float4(v.normal,0)).xyz;
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                float3 lightColor = _LightColor0.rgb;
                o.pos = mul(UNITY_MATRIX_MVP, v.vertex);
                UNITY_TRANSFER_FOG(o,o.pos);
                o.screenPos = o.pos;
                return o;
            }
            #ifdef UNITY_CAN_COMPILE_TESSELLATION
                struct TessVertex {
                    float4 vertex : INTERNALTESSPOS;
                    float3 normal : NORMAL;
                    float4 tangent : TANGENT;
                    float2 texcoord0 : TEXCOORD0;
                };
                struct OutputPatchConstant {
                    float edge[3]         : SV_TessFactor;
                    float inside          : SV_InsideTessFactor;
                    float3 vTangent[4]    : TANGENT;
                    float2 vUV[4]         : TEXCOORD;
                    float3 vTanUCorner[4] : TANUCORNER;
                    float3 vTanVCorner[4] : TANVCORNER;
                    float4 vCWts          : TANWEIGHTS;
                };
                TessVertex tessvert (VertexInput v) {
                    TessVertex o;
                    o.vertex = v.vertex;
                    o.normal = v.normal;
                    o.tangent = v.tangent;
                    o.texcoord0 = v.texcoord0;
                    return o;
                }
                void displacement (inout VertexInput v){
                    float node_9906 = length((v.texcoord0*2.0+-1.0));
                    float node_3556 = 0.0;
                    float node_7405 = 1.0;
                    float node_2875 = 5.0;
                    float node_3960 = (_RingRadius+1.0);
                    float node_8672 = (_RingStrengh+0.1);
                    float node_4736 = ((1.0 - node_2875)/node_8672);
                    float node_9584 = (saturate((node_2875 + ( (node_9906 - node_3556) * ((1.0 - node_3960) - node_2875) ) / (node_7405 - node_3556)))*saturate((node_4736 + ( (node_9906 - node_3556) * (((node_3960+node_8672)*2.0) - node_4736) ) / (node_7405 - node_3556))));
                    float _Masking_var = lerp( 1.0, node_9584, _Masking );
                    float4 node_3975 = _Time + _TimeEditor;
                    float node_7576 = (_NoiseSpeed*node_3975.r);
                    float2 node_8093 = (v.texcoord0*_NoiseUV);
                    float2 node_2142 = (node_8093+node_7576*float2(1,1));
                    float4 node_3831 = tex2Dlod(_NoiseTexture,float4(TRANSFORM_TEX(node_2142, _NoiseTexture),0.0,0));
                    float2 node_5495 = (node_8093+node_7576*float2(1,1));
                    float4 node_4781 = tex2Dlod(_NoiseTexture,float4(TRANSFORM_TEX(node_5495, _NoiseTexture),0.0,0));
                    float3 node_5167 = saturate(((node_3831.rgb*node_4781.rgb)+(1.0 - _NoiseIntensity)));
                    v.vertex.xyz += ((_Masking_var*_Intensity)*v.normal*node_5167);
                }
                float Tessellation(TessVertex v){
                    return _Tesselation;
                }
                float4 Tessellation(TessVertex v, TessVertex v1, TessVertex v2){
                    float tv = Tessellation(v);
                    float tv1 = Tessellation(v1);
                    float tv2 = Tessellation(v2);
                    return float4( tv1+tv2, tv2+tv, tv+tv1, tv+tv1+tv2 ) / float4(2,2,2,3);
                }
                OutputPatchConstant hullconst (InputPatch<TessVertex,3> v) {
                    OutputPatchConstant o;
                    float4 ts = Tessellation( v[0], v[1], v[2] );
                    o.edge[0] = ts.x;
                    o.edge[1] = ts.y;
                    o.edge[2] = ts.z;
                    o.inside = ts.w;
                    return o;
                }
                [domain("tri")]
                [partitioning("fractional_odd")]
                [outputtopology("triangle_cw")]
                [patchconstantfunc("hullconst")]
                [outputcontrolpoints(3)]
                TessVertex hull (InputPatch<TessVertex,3> v, uint id : SV_OutputControlPointID) {
                    return v[id];
                }
                [domain("tri")]
                VertexOutput domain (OutputPatchConstant tessFactors, const OutputPatch<TessVertex,3> vi, float3 bary : SV_DomainLocation) {
                    VertexInput v;
                    v.vertex = vi[0].vertex*bary.x + vi[1].vertex*bary.y + vi[2].vertex*bary.z;
                    v.normal = vi[0].normal*bary.x + vi[1].normal*bary.y + vi[2].normal*bary.z;
                    v.tangent = vi[0].tangent*bary.x + vi[1].tangent*bary.y + vi[2].tangent*bary.z;
                    v.texcoord0 = vi[0].texcoord0*bary.x + vi[1].texcoord0*bary.y + vi[2].texcoord0*bary.z;
                    displacement(v);
                    VertexOutput o = vert(v);
                    return o;
                }
            #endif
            fixed4 frag(VertexOutput i) : COLOR {
                #if UNITY_UV_STARTS_AT_TOP
                    float grabSign = -_ProjectionParams.x;
                #else
                    float grabSign = _ProjectionParams.x;
                #endif
                i.normalDir = normalize(i.normalDir);
                i.screenPos = float4( i.screenPos.xy / i.screenPos.w, 0, 0 );
                i.screenPos.y *= _ProjectionParams.x;
                float2 sceneUVs = float2(1,grabSign)*i.screenPos.xy*0.5+0.5;
/////// Vectors:
                float3 normalDirection = i.normalDir;
                float3 lightDirection = normalize(_WorldSpaceLightPos0.xyz);
                float3 lightColor = _LightColor0.rgb;
////// Lighting:
                float attenuation = 1;
                float3 attenColor = attenuation * _LightColor0.xyz;
/////// Diffuse:
                float NdotL = max(0.0,dot( normalDirection, lightDirection ));
                float3 indirectDiffuse = float3(0,0,0);
                float3 directDiffuse = max( 0.0, NdotL) * attenColor;
                indirectDiffuse += UNITY_LIGHTMODEL_AMBIENT.rgb; // Ambient Light
                float3 diffuse = (directDiffuse + indirectDiffuse) * float3(1,1,1);
/// Final Color:
                float3 finalColor = diffuse;
                float node_9906 = length((i.uv0*2.0+-1.0));
                float node_3556 = 0.0;
                float node_7405 = 1.0;
                float node_2875 = 5.0;
                float node_3960 = (_RingRadius+1.0);
                float node_8672 = (_RingStrengh+0.1);
                float node_4736 = ((1.0 - node_2875)/node_8672);
                float node_9584 = (saturate((node_2875 + ( (node_9906 - node_3556) * ((1.0 - node_3960) - node_2875) ) / (node_7405 - node_3556)))*saturate((node_4736 + ( (node_9906 - node_3556) * (((node_3960+node_8672)*2.0) - node_4736) ) / (node_7405 - node_3556))));
                float _Masking_var = lerp( 1.0, node_9584, _Masking );
                float4 node_3975 = _Time + _TimeEditor;
                float node_7576 = (_NoiseSpeed*node_3975.r);
                float2 node_8093 = (i.uv0*_NoiseUV);
                float2 node_2142 = (node_8093+node_7576*float2(1,1));
                float4 node_3831 = tex2D(_NoiseTexture,TRANSFORM_TEX(node_2142, _NoiseTexture));
                float2 node_5495 = (node_8093+node_7576*float2(1,1));
                float4 node_4781 = tex2D(_NoiseTexture,TRANSFORM_TEX(node_5495, _NoiseTexture));
                float3 node_5167 = saturate(((node_3831.rgb*node_4781.rgb)+(1.0 - _NoiseIntensity)));
                fixed4 finalRGBA = fixed4(finalColor,(_Opacity*(_Masking_var*_Hardness)*node_5167).r);
                UNITY_APPLY_FOG(i.fogCoord, finalRGBA);
                return finalRGBA;
            }
            ENDCG
        }
        Pass {
            Name "ForwardAdd"
            Tags {
                "LightMode"="ForwardAdd"
            }
            Blend One One
            ZWrite Off
            
            CGPROGRAM
            #pragma hull hull
            #pragma domain domain
            #pragma vertex tessvert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDADD
            #include "UnityCG.cginc"
            #include "AutoLight.cginc"
            #include "Tessellation.cginc"
            #pragma multi_compile_fwdadd
            #pragma multi_compile_fog
            #pragma exclude_renderers xbox360 ps3 flash d3d11_9x 
            #pragma target 5.0
            // Dithering function, to use with scene UVs (screen pixel coords)
            // 3x3 Bayer matrix, based on https://en.wikipedia.org/wiki/Ordered_dithering
            float BinaryDither3x3( float value, float2 sceneUVs ) {
                float3x3 mtx = float3x3(
                    float3( 3,  7,  4 )/10.0,
                    float3( 6,  1,  9 )/10.0,
                    float3( 2,  8,  5 )/10.0
                );
                float2 px = floor(_ScreenParams.xy * sceneUVs);
                int xSmp = fmod(px.x,3);
                int ySmp = fmod(px.y,3);
                float3 xVec = 1-saturate(abs(float3(0,1,2) - xSmp));
                float3 yVec = 1-saturate(abs(float3(0,1,2) - ySmp));
                float3 pxMult = float3( dot(mtx[0],yVec), dot(mtx[1],yVec), dot(mtx[2],yVec) );
                return round(value + dot(pxMult, xVec));
            }
            uniform float4 _LightColor0;
            uniform float4 _TimeEditor;
            // float4 unity_LightmapST;
            #ifdef DYNAMICLIGHTMAP_ON
                // float4 unity_DynamicLightmapST;
            #endif
            uniform float _RingRadius;
            uniform float _RingStrengh;
            uniform float _Tesselation;
            uniform float _Intensity;
            uniform float _Hardness;
            uniform float _Opacity;
            uniform float _NoiseSpeed;
            uniform sampler2D _NoiseTexture; uniform float4 _NoiseTexture_ST;
            uniform float _NoiseIntensity;
            uniform fixed _Masking;
            uniform float _NoiseUV;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float4 tangent : TANGENT;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float4 posWorld : TEXCOORD1;
                float3 normalDir : TEXCOORD2;
                float4 screenPos : TEXCOORD3;
                LIGHTING_COORDS(4,5)
                #ifndef LIGHTMAP_OFF
                    float4 uvLM : TEXCOORD6;
                #else
                    float3 shLight : TEXCOORD6;
                #endif
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.normalDir = mul(unity_ObjectToWorld, float4(v.normal,0)).xyz;
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                float3 lightColor = _LightColor0.rgb;
                o.pos = mul(UNITY_MATRIX_MVP, v.vertex);
                o.screenPos = o.pos;
                TRANSFER_VERTEX_TO_FRAGMENT(o)
                return o;
            }
            #ifdef UNITY_CAN_COMPILE_TESSELLATION
                struct TessVertex {
                    float4 vertex : INTERNALTESSPOS;
                    float3 normal : NORMAL;
                    float4 tangent : TANGENT;
                    float2 texcoord0 : TEXCOORD0;
                };
                struct OutputPatchConstant {
                    float edge[3]         : SV_TessFactor;
                    float inside          : SV_InsideTessFactor;
                    float3 vTangent[4]    : TANGENT;
                    float2 vUV[4]         : TEXCOORD;
                    float3 vTanUCorner[4] : TANUCORNER;
                    float3 vTanVCorner[4] : TANVCORNER;
                    float4 vCWts          : TANWEIGHTS;
                };
                TessVertex tessvert (VertexInput v) {
                    TessVertex o;
                    o.vertex = v.vertex;
                    o.normal = v.normal;
                    o.tangent = v.tangent;
                    o.texcoord0 = v.texcoord0;
                    return o;
                }
                void displacement (inout VertexInput v){
                    float node_9906 = length((v.texcoord0*2.0+-1.0));
                    float node_3556 = 0.0;
                    float node_7405 = 1.0;
                    float node_2875 = 5.0;
                    float node_3960 = (_RingRadius+1.0);
                    float node_8672 = (_RingStrengh+0.1);
                    float node_4736 = ((1.0 - node_2875)/node_8672);
                    float node_9584 = (saturate((node_2875 + ( (node_9906 - node_3556) * ((1.0 - node_3960) - node_2875) ) / (node_7405 - node_3556)))*saturate((node_4736 + ( (node_9906 - node_3556) * (((node_3960+node_8672)*2.0) - node_4736) ) / (node_7405 - node_3556))));
                    float _Masking_var = lerp( 1.0, node_9584, _Masking );
                    float4 node_3975 = _Time + _TimeEditor;
                    float node_7576 = (_NoiseSpeed*node_3975.r);
                    float2 node_8093 = (v.texcoord0*_NoiseUV);
                    float2 node_2142 = (node_8093+node_7576*float2(1,1));
                    float4 node_3831 = tex2Dlod(_NoiseTexture,float4(TRANSFORM_TEX(node_2142, _NoiseTexture),0.0,0));
                    float2 node_5495 = (node_8093+node_7576*float2(1,1));
                    float4 node_4781 = tex2Dlod(_NoiseTexture,float4(TRANSFORM_TEX(node_5495, _NoiseTexture),0.0,0));
                    float3 node_5167 = saturate(((node_3831.rgb*node_4781.rgb)+(1.0 - _NoiseIntensity)));
                    v.vertex.xyz += ((_Masking_var*_Intensity)*v.normal*node_5167);
                }
                float Tessellation(TessVertex v){
                    return _Tesselation;
                }
                float4 Tessellation(TessVertex v, TessVertex v1, TessVertex v2){
                    float tv = Tessellation(v);
                    float tv1 = Tessellation(v1);
                    float tv2 = Tessellation(v2);
                    return float4( tv1+tv2, tv2+tv, tv+tv1, tv+tv1+tv2 ) / float4(2,2,2,3);
                }
                OutputPatchConstant hullconst (InputPatch<TessVertex,3> v) {
                    OutputPatchConstant o;
                    float4 ts = Tessellation( v[0], v[1], v[2] );
                    o.edge[0] = ts.x;
                    o.edge[1] = ts.y;
                    o.edge[2] = ts.z;
                    o.inside = ts.w;
                    return o;
                }
                [domain("tri")]
                [partitioning("fractional_odd")]
                [outputtopology("triangle_cw")]
                [patchconstantfunc("hullconst")]
                [outputcontrolpoints(3)]
                TessVertex hull (InputPatch<TessVertex,3> v, uint id : SV_OutputControlPointID) {
                    return v[id];
                }
                [domain("tri")]
                VertexOutput domain (OutputPatchConstant tessFactors, const OutputPatch<TessVertex,3> vi, float3 bary : SV_DomainLocation) {
                    VertexInput v;
                    v.vertex = vi[0].vertex*bary.x + vi[1].vertex*bary.y + vi[2].vertex*bary.z;
                    v.normal = vi[0].normal*bary.x + vi[1].normal*bary.y + vi[2].normal*bary.z;
                    v.tangent = vi[0].tangent*bary.x + vi[1].tangent*bary.y + vi[2].tangent*bary.z;
                    v.texcoord0 = vi[0].texcoord0*bary.x + vi[1].texcoord0*bary.y + vi[2].texcoord0*bary.z;
                    displacement(v);
                    VertexOutput o = vert(v);
                    return o;
                }
            #endif
            fixed4 frag(VertexOutput i) : COLOR {
                #if UNITY_UV_STARTS_AT_TOP
                    float grabSign = -_ProjectionParams.x;
                #else
                    float grabSign = _ProjectionParams.x;
                #endif
                i.normalDir = normalize(i.normalDir);
                i.screenPos = float4( i.screenPos.xy / i.screenPos.w, 0, 0 );
                i.screenPos.y *= _ProjectionParams.x;
                float2 sceneUVs = float2(1,grabSign)*i.screenPos.xy*0.5+0.5;
/////// Vectors:
                float3 normalDirection = i.normalDir;
                float3 lightDirection = normalize(lerp(_WorldSpaceLightPos0.xyz, _WorldSpaceLightPos0.xyz - i.posWorld.xyz,_WorldSpaceLightPos0.w));
                float3 lightColor = _LightColor0.rgb;
////// Lighting:
                float attenuation = LIGHT_ATTENUATION(i);
                float3 attenColor = attenuation * _LightColor0.xyz;
/////// Diffuse:
                float NdotL = max(0.0,dot( normalDirection, lightDirection ));
                float3 directDiffuse = max( 0.0, NdotL) * attenColor;
                float3 diffuse = directDiffuse * float3(1,1,1);
/// Final Color:
                float3 finalColor = diffuse;
                float node_9906 = length((i.uv0*2.0+-1.0));
                float node_3556 = 0.0;
                float node_7405 = 1.0;
                float node_2875 = 5.0;
                float node_3960 = (_RingRadius+1.0);
                float node_8672 = (_RingStrengh+0.1);
                float node_4736 = ((1.0 - node_2875)/node_8672);
                float node_9584 = (saturate((node_2875 + ( (node_9906 - node_3556) * ((1.0 - node_3960) - node_2875) ) / (node_7405 - node_3556)))*saturate((node_4736 + ( (node_9906 - node_3556) * (((node_3960+node_8672)*2.0) - node_4736) ) / (node_7405 - node_3556))));
                float _Masking_var = lerp( 1.0, node_9584, _Masking );
                float4 node_3975 = _Time + _TimeEditor;
                float node_7576 = (_NoiseSpeed*node_3975.r);
                float2 node_8093 = (i.uv0*_NoiseUV);
                float2 node_2142 = (node_8093+node_7576*float2(1,1));
                float4 node_3831 = tex2D(_NoiseTexture,TRANSFORM_TEX(node_2142, _NoiseTexture));
                float2 node_5495 = (node_8093+node_7576*float2(1,1));
                float4 node_4781 = tex2D(_NoiseTexture,TRANSFORM_TEX(node_5495, _NoiseTexture));
                float3 node_5167 = saturate(((node_3831.rgb*node_4781.rgb)+(1.0 - _NoiseIntensity)));
                return fixed4(finalColor * (_Opacity*(_Masking_var*_Hardness)*node_5167).r,0);
            }
            ENDCG
        }
        Pass {
            Name "ShadowCollector"
            Tags {
                "LightMode"="ShadowCollector"
            }
            
            CGPROGRAM
            #pragma hull hull
            #pragma domain domain
            #pragma vertex tessvert
            #pragma fragment frag
            #define UNITY_PASS_SHADOWCOLLECTOR
            #define SHADOW_COLLECTOR_PASS
            #include "UnityCG.cginc"
            #include "Lighting.cginc"
            #include "Tessellation.cginc"
            #pragma fragmentoption ARB_precision_hint_fastest
            #pragma multi_compile_shadowcollector
            #pragma multi_compile_fog
            #pragma exclude_renderers xbox360 ps3 flash d3d11_9x 
            #pragma target 5.0
            // Dithering function, to use with scene UVs (screen pixel coords)
            // 3x3 Bayer matrix, based on https://en.wikipedia.org/wiki/Ordered_dithering
            float BinaryDither3x3( float value, float2 sceneUVs ) {
                float3x3 mtx = float3x3(
                    float3( 3,  7,  4 )/10.0,
                    float3( 6,  1,  9 )/10.0,
                    float3( 2,  8,  5 )/10.0
                );
                float2 px = floor(_ScreenParams.xy * sceneUVs);
                int xSmp = fmod(px.x,3);
                int ySmp = fmod(px.y,3);
                float3 xVec = 1-saturate(abs(float3(0,1,2) - xSmp));
                float3 yVec = 1-saturate(abs(float3(0,1,2) - ySmp));
                float3 pxMult = float3( dot(mtx[0],yVec), dot(mtx[1],yVec), dot(mtx[2],yVec) );
                return round(value + dot(pxMult, xVec));
            }
            uniform float4 _TimeEditor;
            // float4 unity_LightmapST;
            #ifdef DYNAMICLIGHTMAP_ON
                // float4 unity_DynamicLightmapST;
            #endif
            uniform float _RingRadius;
            uniform float _RingStrengh;
            uniform float _Tesselation;
            uniform float _Intensity;
            uniform float _NoiseSpeed;
            uniform sampler2D _NoiseTexture; uniform float4 _NoiseTexture_ST;
            uniform float _NoiseIntensity;
            uniform fixed _Masking;
            uniform float _NoiseUV;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float4 tangent : TANGENT;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                V2F_SHADOW_COLLECTOR;
                float2 uv0 : TEXCOORD5;
                float3 normalDir : TEXCOORD6;
                float4 screenPos : TEXCOORD7;
                #ifndef LIGHTMAP_OFF
                    float4 uvLM : TEXCOORD8;
                #else
                    float3 shLight : TEXCOORD8;
                #endif
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.normalDir = mul(unity_ObjectToWorld, float4(v.normal,0)).xyz;
                o.pos = mul(UNITY_MATRIX_MVP, v.vertex);
                o.screenPos = o.pos;
                TRANSFER_SHADOW_COLLECTOR(o)
                return o;
            }
            #ifdef UNITY_CAN_COMPILE_TESSELLATION
                struct TessVertex {
                    float4 vertex : INTERNALTESSPOS;
                    float3 normal : NORMAL;
                    float4 tangent : TANGENT;
                    float2 texcoord0 : TEXCOORD0;
                };
                struct OutputPatchConstant {
                    float edge[3]         : SV_TessFactor;
                    float inside          : SV_InsideTessFactor;
                    float3 vTangent[4]    : TANGENT;
                    float2 vUV[4]         : TEXCOORD;
                    float3 vTanUCorner[4] : TANUCORNER;
                    float3 vTanVCorner[4] : TANVCORNER;
                    float4 vCWts          : TANWEIGHTS;
                };
                TessVertex tessvert (VertexInput v) {
                    TessVertex o;
                    o.vertex = v.vertex;
                    o.normal = v.normal;
                    o.tangent = v.tangent;
                    o.texcoord0 = v.texcoord0;
                    return o;
                }
                void displacement (inout VertexInput v){
                    float node_9906 = length((v.texcoord0*2.0+-1.0));
                    float node_3556 = 0.0;
                    float node_7405 = 1.0;
                    float node_2875 = 5.0;
                    float node_3960 = (_RingRadius+1.0);
                    float node_8672 = (_RingStrengh+0.1);
                    float node_4736 = ((1.0 - node_2875)/node_8672);
                    float node_9584 = (saturate((node_2875 + ( (node_9906 - node_3556) * ((1.0 - node_3960) - node_2875) ) / (node_7405 - node_3556)))*saturate((node_4736 + ( (node_9906 - node_3556) * (((node_3960+node_8672)*2.0) - node_4736) ) / (node_7405 - node_3556))));
                    float _Masking_var = lerp( 1.0, node_9584, _Masking );
                    float4 node_3975 = _Time + _TimeEditor;
                    float node_7576 = (_NoiseSpeed*node_3975.r);
                    float2 node_8093 = (v.texcoord0*_NoiseUV);
                    float2 node_2142 = (node_8093+node_7576*float2(1,1));
                    float4 node_3831 = tex2Dlod(_NoiseTexture,float4(TRANSFORM_TEX(node_2142, _NoiseTexture),0.0,0));
                    float2 node_5495 = (node_8093+node_7576*float2(1,1));
                    float4 node_4781 = tex2Dlod(_NoiseTexture,float4(TRANSFORM_TEX(node_5495, _NoiseTexture),0.0,0));
                    float3 node_5167 = saturate(((node_3831.rgb*node_4781.rgb)+(1.0 - _NoiseIntensity)));
                    v.vertex.xyz += ((_Masking_var*_Intensity)*v.normal*node_5167);
                }
                float Tessellation(TessVertex v){
                    return _Tesselation;
                }
                float4 Tessellation(TessVertex v, TessVertex v1, TessVertex v2){
                    float tv = Tessellation(v);
                    float tv1 = Tessellation(v1);
                    float tv2 = Tessellation(v2);
                    return float4( tv1+tv2, tv2+tv, tv+tv1, tv+tv1+tv2 ) / float4(2,2,2,3);
                }
                OutputPatchConstant hullconst (InputPatch<TessVertex,3> v) {
                    OutputPatchConstant o;
                    float4 ts = Tessellation( v[0], v[1], v[2] );
                    o.edge[0] = ts.x;
                    o.edge[1] = ts.y;
                    o.edge[2] = ts.z;
                    o.inside = ts.w;
                    return o;
                }
                [domain("tri")]
                [partitioning("fractional_odd")]
                [outputtopology("triangle_cw")]
                [patchconstantfunc("hullconst")]
                [outputcontrolpoints(3)]
                TessVertex hull (InputPatch<TessVertex,3> v, uint id : SV_OutputControlPointID) {
                    return v[id];
                }
                [domain("tri")]
                VertexOutput domain (OutputPatchConstant tessFactors, const OutputPatch<TessVertex,3> vi, float3 bary : SV_DomainLocation) {
                    VertexInput v;
                    v.vertex = vi[0].vertex*bary.x + vi[1].vertex*bary.y + vi[2].vertex*bary.z;
                    v.normal = vi[0].normal*bary.x + vi[1].normal*bary.y + vi[2].normal*bary.z;
                    v.tangent = vi[0].tangent*bary.x + vi[1].tangent*bary.y + vi[2].tangent*bary.z;
                    v.texcoord0 = vi[0].texcoord0*bary.x + vi[1].texcoord0*bary.y + vi[2].texcoord0*bary.z;
                    displacement(v);
                    VertexOutput o = vert(v);
                    return o;
                }
            #endif
            fixed4 frag(VertexOutput i) : COLOR {
                #if UNITY_UV_STARTS_AT_TOP
                    float grabSign = -_ProjectionParams.x;
                #else
                    float grabSign = _ProjectionParams.x;
                #endif
                i.normalDir = normalize(i.normalDir);
                i.screenPos = float4( i.screenPos.xy / i.screenPos.w, 0, 0 );
                i.screenPos.y *= _ProjectionParams.x;
                float2 sceneUVs = float2(1,grabSign)*i.screenPos.xy*0.5+0.5;
/////// Vectors:
                SHADOW_COLLECTOR_FRAGMENT(i)
            }
            ENDCG
        }
        Pass {
            Name "ShadowCaster"
            Tags {
                "LightMode"="ShadowCaster"
            }
            Cull Off
            Offset 1, 1
            
            CGPROGRAM
            #pragma hull hull
            #pragma domain domain
            #pragma vertex tessvert
            #pragma fragment frag
            #define UNITY_PASS_SHADOWCASTER
            #include "UnityCG.cginc"
            #include "Lighting.cginc"
            #include "Tessellation.cginc"
            #pragma fragmentoption ARB_precision_hint_fastest
            #pragma multi_compile_shadowcaster
            #pragma multi_compile_fog
            #pragma exclude_renderers xbox360 ps3 flash d3d11_9x 
            #pragma target 5.0
            // Dithering function, to use with scene UVs (screen pixel coords)
            // 3x3 Bayer matrix, based on https://en.wikipedia.org/wiki/Ordered_dithering
            float BinaryDither3x3( float value, float2 sceneUVs ) {
                float3x3 mtx = float3x3(
                    float3( 3,  7,  4 )/10.0,
                    float3( 6,  1,  9 )/10.0,
                    float3( 2,  8,  5 )/10.0
                );
                float2 px = floor(_ScreenParams.xy * sceneUVs);
                int xSmp = fmod(px.x,3);
                int ySmp = fmod(px.y,3);
                float3 xVec = 1-saturate(abs(float3(0,1,2) - xSmp));
                float3 yVec = 1-saturate(abs(float3(0,1,2) - ySmp));
                float3 pxMult = float3( dot(mtx[0],yVec), dot(mtx[1],yVec), dot(mtx[2],yVec) );
                return round(value + dot(pxMult, xVec));
            }
            uniform float4 _TimeEditor;
            // float4 unity_LightmapST;
            #ifdef DYNAMICLIGHTMAP_ON
                // float4 unity_DynamicLightmapST;
            #endif
            uniform float _RingRadius;
            uniform float _RingStrengh;
            uniform float _Tesselation;
            uniform float _Intensity;
            uniform float _NoiseSpeed;
            uniform sampler2D _NoiseTexture; uniform float4 _NoiseTexture_ST;
            uniform float _NoiseIntensity;
            uniform fixed _Masking;
            uniform float _NoiseUV;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float4 tangent : TANGENT;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                V2F_SHADOW_CASTER;
                float2 uv0 : TEXCOORD1;
                float3 normalDir : TEXCOORD2;
                float4 screenPos : TEXCOORD3;
                #ifndef LIGHTMAP_OFF
                    float4 uvLM : TEXCOORD4;
                #else
                    float3 shLight : TEXCOORD4;
                #endif
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.normalDir = mul(unity_ObjectToWorld, float4(v.normal,0)).xyz;
                o.pos = mul(UNITY_MATRIX_MVP, v.vertex);
                o.screenPos = o.pos;
                TRANSFER_SHADOW_CASTER(o)
                return o;
            }
            #ifdef UNITY_CAN_COMPILE_TESSELLATION
                struct TessVertex {
                    float4 vertex : INTERNALTESSPOS;
                    float3 normal : NORMAL;
                    float4 tangent : TANGENT;
                    float2 texcoord0 : TEXCOORD0;
                };
                struct OutputPatchConstant {
                    float edge[3]         : SV_TessFactor;
                    float inside          : SV_InsideTessFactor;
                    float3 vTangent[4]    : TANGENT;
                    float2 vUV[4]         : TEXCOORD;
                    float3 vTanUCorner[4] : TANUCORNER;
                    float3 vTanVCorner[4] : TANVCORNER;
                    float4 vCWts          : TANWEIGHTS;
                };
                TessVertex tessvert (VertexInput v) {
                    TessVertex o;
                    o.vertex = v.vertex;
                    o.normal = v.normal;
                    o.tangent = v.tangent;
                    o.texcoord0 = v.texcoord0;
                    return o;
                }
                void displacement (inout VertexInput v){
                    float node_9906 = length((v.texcoord0*2.0+-1.0));
                    float node_3556 = 0.0;
                    float node_7405 = 1.0;
                    float node_2875 = 5.0;
                    float node_3960 = (_RingRadius+1.0);
                    float node_8672 = (_RingStrengh+0.1);
                    float node_4736 = ((1.0 - node_2875)/node_8672);
                    float node_9584 = (saturate((node_2875 + ( (node_9906 - node_3556) * ((1.0 - node_3960) - node_2875) ) / (node_7405 - node_3556)))*saturate((node_4736 + ( (node_9906 - node_3556) * (((node_3960+node_8672)*2.0) - node_4736) ) / (node_7405 - node_3556))));
                    float _Masking_var = lerp( 1.0, node_9584, _Masking );
                    float4 node_3975 = _Time + _TimeEditor;
                    float node_7576 = (_NoiseSpeed*node_3975.r);
                    float2 node_8093 = (v.texcoord0*_NoiseUV);
                    float2 node_2142 = (node_8093+node_7576*float2(1,1));
                    float4 node_3831 = tex2Dlod(_NoiseTexture,float4(TRANSFORM_TEX(node_2142, _NoiseTexture),0.0,0));
                    float2 node_5495 = (node_8093+node_7576*float2(1,1));
                    float4 node_4781 = tex2Dlod(_NoiseTexture,float4(TRANSFORM_TEX(node_5495, _NoiseTexture),0.0,0));
                    float3 node_5167 = saturate(((node_3831.rgb*node_4781.rgb)+(1.0 - _NoiseIntensity)));
                    v.vertex.xyz += ((_Masking_var*_Intensity)*v.normal*node_5167);
                }
                float Tessellation(TessVertex v){
                    return _Tesselation;
                }
                float4 Tessellation(TessVertex v, TessVertex v1, TessVertex v2){
                    float tv = Tessellation(v);
                    float tv1 = Tessellation(v1);
                    float tv2 = Tessellation(v2);
                    return float4( tv1+tv2, tv2+tv, tv+tv1, tv+tv1+tv2 ) / float4(2,2,2,3);
                }
                OutputPatchConstant hullconst (InputPatch<TessVertex,3> v) {
                    OutputPatchConstant o;
                    float4 ts = Tessellation( v[0], v[1], v[2] );
                    o.edge[0] = ts.x;
                    o.edge[1] = ts.y;
                    o.edge[2] = ts.z;
                    o.inside = ts.w;
                    return o;
                }
                [domain("tri")]
                [partitioning("fractional_odd")]
                [outputtopology("triangle_cw")]
                [patchconstantfunc("hullconst")]
                [outputcontrolpoints(3)]
                TessVertex hull (InputPatch<TessVertex,3> v, uint id : SV_OutputControlPointID) {
                    return v[id];
                }
                [domain("tri")]
                VertexOutput domain (OutputPatchConstant tessFactors, const OutputPatch<TessVertex,3> vi, float3 bary : SV_DomainLocation) {
                    VertexInput v;
                    v.vertex = vi[0].vertex*bary.x + vi[1].vertex*bary.y + vi[2].vertex*bary.z;
                    v.normal = vi[0].normal*bary.x + vi[1].normal*bary.y + vi[2].normal*bary.z;
                    v.tangent = vi[0].tangent*bary.x + vi[1].tangent*bary.y + vi[2].tangent*bary.z;
                    v.texcoord0 = vi[0].texcoord0*bary.x + vi[1].texcoord0*bary.y + vi[2].texcoord0*bary.z;
                    displacement(v);
                    VertexOutput o = vert(v);
                    return o;
                }
            #endif
            fixed4 frag(VertexOutput i) : COLOR {
                #if UNITY_UV_STARTS_AT_TOP
                    float grabSign = -_ProjectionParams.x;
                #else
                    float grabSign = _ProjectionParams.x;
                #endif
                i.normalDir = normalize(i.normalDir);
                i.screenPos = float4( i.screenPos.xy / i.screenPos.w, 0, 0 );
                i.screenPos.y *= _ProjectionParams.x;
                float2 sceneUVs = float2(1,grabSign)*i.screenPos.xy*0.5+0.5;
/////// Vectors:
                SHADOW_CASTER_FRAGMENT(i)
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
