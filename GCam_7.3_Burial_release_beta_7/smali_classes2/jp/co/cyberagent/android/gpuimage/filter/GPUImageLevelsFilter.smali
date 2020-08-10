.class public Ljp/co/cyberagent/android/gpuimage/filter/GPUImageLevelsFilter;
.super Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilter;
.source "GPUImageLevelsFilter.java"


# static fields
.field public static final LEVELS_FRAGMET_SHADER:Ljava/lang/String; = " varying highp vec2 textureCoordinate;\n \n uniform sampler2D inputImageTexture;\n uniform mediump vec3 levelMinimum;\n uniform mediump vec3 levelMiddle;\n uniform mediump vec3 levelMaximum;\n uniform mediump vec3 minOutput;\n uniform mediump vec3 maxOutput;\n \n void main()\n {\n     mediump vec4 textureColor = texture2D(inputImageTexture, textureCoordinate);\n     \n     gl_FragColor = vec4( mix(minOutput, maxOutput, pow(min(max(textureColor.rgb -levelMinimum, vec3(0.0)) / (levelMaximum - levelMinimum  ), vec3(1.0)), 1.0 /levelMiddle)) , textureColor.a);\n }\n"

.field private static final LOGTAG:Ljava/lang/String;


# instance fields
.field private max:[F

.field private maxLocation:I

.field private maxOutput:[F

.field private maxOutputLocation:I

.field private mid:[F

.field private midLocation:I

.field private min:[F

.field private minLocation:I

.field private minOutput:[F

.field private minOutputLocation:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageLevelsFilter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageLevelsFilter;->LOGTAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 7

    const/4 v0, 0x3

    new-array v2, v0, [F

    fill-array-data v2, :array_0

    new-array v3, v0, [F

    fill-array-data v3, :array_1

    new-array v4, v0, [F

    fill-array-data v4, :array_2

    new-array v5, v0, [F

    fill-array-data v5, :array_3

    new-array v6, v0, [F

    fill-array-data v6, :array_4

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageLevelsFilter;-><init>([F[F[F[F[F)V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data

    :array_2
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data

    :array_3
    .array-data 4
        0x0
        0x0
        0x0
    .end array-data

    :array_4
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private constructor <init>([F[F[F[F[F)V
    .locals 2

    const-string v0, "attribute vec4 position;\nattribute vec4 inputTextureCoordinate;\n \nvarying vec2 textureCoordinate;\n \nvoid main()\n{\n    gl_Position = position;\n    textureCoordinate = inputTextureCoordinate.xy;\n}"

    const-string v1, " varying highp vec2 textureCoordinate;\n \n uniform sampler2D inputImageTexture;\n uniform mediump vec3 levelMinimum;\n uniform mediump vec3 levelMiddle;\n uniform mediump vec3 levelMaximum;\n uniform mediump vec3 minOutput;\n uniform mediump vec3 maxOutput;\n \n void main()\n {\n     mediump vec4 textureColor = texture2D(inputImageTexture, textureCoordinate);\n     \n     gl_FragColor = vec4( mix(minOutput, maxOutput, pow(min(max(textureColor.rgb -levelMinimum, vec3(0.0)) / (levelMaximum - levelMinimum  ), vec3(1.0)), 1.0 /levelMiddle)) , textureColor.a);\n }\n"

    invoke-direct {p0, v0, v1}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageLevelsFilter;->min:[F

    iput-object p2, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageLevelsFilter;->mid:[F

    iput-object p3, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageLevelsFilter;->max:[F

    iput-object p4, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageLevelsFilter;->minOutput:[F

    iput-object p5, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageLevelsFilter;->maxOutput:[F

    return-void
.end method


# virtual methods
.method public onInit()V
    .locals 2

    invoke-super {p0}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilter;->onInit()V

    invoke-virtual {p0}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageLevelsFilter;->getProgram()I

    move-result v0

    const-string v1, "levelMinimum"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageLevelsFilter;->minLocation:I

    invoke-virtual {p0}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageLevelsFilter;->getProgram()I

    move-result v0

    const-string v1, "levelMiddle"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageLevelsFilter;->midLocation:I

    invoke-virtual {p0}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageLevelsFilter;->getProgram()I

    move-result v0

    const-string v1, "levelMaximum"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageLevelsFilter;->maxLocation:I

    invoke-virtual {p0}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageLevelsFilter;->getProgram()I

    move-result v0

    const-string v1, "minOutput"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageLevelsFilter;->minOutputLocation:I

    invoke-virtual {p0}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageLevelsFilter;->getProgram()I

    move-result v0

    const-string v1, "maxOutput"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageLevelsFilter;->maxOutputLocation:I

    return-void
.end method

.method public onInitialized()V
    .locals 6

    invoke-super {p0}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilter;->onInitialized()V

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageLevelsFilter;->setMin(FFFFF)V

    invoke-virtual {p0}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageLevelsFilter;->updateUniforms()V

    return-void
.end method

.method public setBlueMin(FFF)V
    .locals 6

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageLevelsFilter;->setBlueMin(FFFFF)V

    return-void
.end method

.method public setBlueMin(FFFFF)V
    .locals 2

    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageLevelsFilter;->min:[F

    const/4 v1, 0x2

    aput p1, v0, v1

    iget-object p1, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageLevelsFilter;->mid:[F

    aput p2, p1, v1

    iget-object p1, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageLevelsFilter;->max:[F

    aput p3, p1, v1

    iget-object p1, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageLevelsFilter;->minOutput:[F

    aput p4, p1, v1

    iget-object p1, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageLevelsFilter;->maxOutput:[F

    aput p5, p1, v1

    invoke-virtual {p0}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageLevelsFilter;->updateUniforms()V

    return-void
.end method

.method public setGreenMin(FFF)V
    .locals 6

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageLevelsFilter;->setGreenMin(FFFFF)V

    return-void
.end method

.method public setGreenMin(FFFFF)V
    .locals 2

    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageLevelsFilter;->min:[F

    const/4 v1, 0x1

    aput p1, v0, v1

    iget-object p1, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageLevelsFilter;->mid:[F

    aput p2, p1, v1

    iget-object p1, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageLevelsFilter;->max:[F

    aput p3, p1, v1

    iget-object p1, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageLevelsFilter;->minOutput:[F

    aput p4, p1, v1

    iget-object p1, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageLevelsFilter;->maxOutput:[F

    aput p5, p1, v1

    invoke-virtual {p0}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageLevelsFilter;->updateUniforms()V

    return-void
.end method

.method public setMin(FFF)V
    .locals 6

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageLevelsFilter;->setMin(FFFFF)V

    return-void
.end method

.method public setMin(FFFFF)V
    .locals 0

    invoke-virtual/range {p0 .. p5}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageLevelsFilter;->setRedMin(FFFFF)V

    invoke-virtual/range {p0 .. p5}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageLevelsFilter;->setGreenMin(FFFFF)V

    invoke-virtual/range {p0 .. p5}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageLevelsFilter;->setBlueMin(FFFFF)V

    return-void
.end method

.method public setRedMin(FFF)V
    .locals 6

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageLevelsFilter;->setRedMin(FFFFF)V

    return-void
.end method

.method public setRedMin(FFFFF)V
    .locals 2

    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageLevelsFilter;->min:[F

    const/4 v1, 0x0

    aput p1, v0, v1

    iget-object p1, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageLevelsFilter;->mid:[F

    aput p2, p1, v1

    iget-object p1, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageLevelsFilter;->max:[F

    aput p3, p1, v1

    iget-object p1, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageLevelsFilter;->minOutput:[F

    aput p4, p1, v1

    iget-object p1, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageLevelsFilter;->maxOutput:[F

    aput p5, p1, v1

    invoke-virtual {p0}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageLevelsFilter;->updateUniforms()V

    return-void
.end method

.method public updateUniforms()V
    .locals 2

    iget v0, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageLevelsFilter;->minLocation:I

    iget-object v1, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageLevelsFilter;->min:[F

    invoke-virtual {p0, v0, v1}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageLevelsFilter;->setFloatVec3(I[F)V

    iget v0, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageLevelsFilter;->midLocation:I

    iget-object v1, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageLevelsFilter;->mid:[F

    invoke-virtual {p0, v0, v1}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageLevelsFilter;->setFloatVec3(I[F)V

    iget v0, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageLevelsFilter;->maxLocation:I

    iget-object v1, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageLevelsFilter;->max:[F

    invoke-virtual {p0, v0, v1}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageLevelsFilter;->setFloatVec3(I[F)V

    iget v0, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageLevelsFilter;->minOutputLocation:I

    iget-object v1, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageLevelsFilter;->minOutput:[F

    invoke-virtual {p0, v0, v1}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageLevelsFilter;->setFloatVec3(I[F)V

    iget v0, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageLevelsFilter;->maxOutputLocation:I

    iget-object v1, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageLevelsFilter;->maxOutput:[F

    invoke-virtual {p0, v0, v1}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageLevelsFilter;->setFloatVec3(I[F)V

    return-void
.end method
