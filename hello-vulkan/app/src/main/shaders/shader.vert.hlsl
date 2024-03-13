// Generated with:
// ~/Android/Sdk/ndk/25.2.9519653/shader-tools/linux-x86_64/glslc app/src/main/shaders/shader.vert -o - | ~/code/SPIRV-Cross/build/spirv-cross --hlsl - --output app/src/main/shaders/shader.vert.hlsl --shader-model 66

static const float2 _19[3] = { float2(0.0f, -0.5f), 0.5f.xx, float2(-0.5f, 0.5f) };
static const float3 _28[3] = { float3(0.670000016689300537109375f, 0.100000001490116119384765625f, 0.20000000298023223876953125f), float3(0.670000016689300537109375f, 0.100000001490116119384765625f, 0.20000000298023223876953125f), float3(0.670000016689300537109375f, 0.100000001490116119384765625f, 0.20000000298023223876953125f) };

cbuffer UniformBufferObject : register(b0, space0)
{
    row_major float4x4 ubo_MVP : packoffset(c0);
};


static float4 gl_Position;
static int gl_VertexIndex;
static float3 fragColor;

struct SPIRV_Cross_Input
{
    uint gl_VertexIndex : SV_VertexID;
};

struct SPIRV_Cross_Output
{
    float3 fragColor : TEXCOORD0;
    float4 gl_Position : SV_Position;
};

void vert_main()
{
    gl_Position = mul(float4(_19[gl_VertexIndex], 0.0f, 1.0f), ubo_MVP);
    fragColor = _28[gl_VertexIndex];
}

SPIRV_Cross_Output main(SPIRV_Cross_Input stage_input)
{
    gl_VertexIndex = int(stage_input.gl_VertexIndex);
    vert_main();
    SPIRV_Cross_Output stage_output;
    stage_output.gl_Position = gl_Position;
    stage_output.fragColor = fragColor;
    return stage_output;
}
