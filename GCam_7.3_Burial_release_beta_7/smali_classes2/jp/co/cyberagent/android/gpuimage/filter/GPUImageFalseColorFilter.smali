.class public Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFalseColorFilter;
.super Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilter;
.source "GPUImageFalseColorFilter.java"


# static fields
.field public static final FALSECOLOR_FRAGMENT_SHADER:Ljava/lang/String; = "precision lowp float;\n\nvarying highp vec2 textureCoordinate;\n\nuniform sampler2D inputImageTexture;\nuniform float intensity;\nuniform vec3 firstColor;\nuniform vec3 secondColor;\n\nconst mediump vec3 luminanceWeighting = vec3(0.2125, 0.7154, 0.0721);\n\nvoid main()\n{\nlowp vec4 textureColor = texture2D(inputImageTexture, textureCoordinate);\nfloat luminance = dot(textureColor.rgb, luminanceWeighting);\n\ngl_FragColor = vec4( mix(firstColor.rgb, secondColor.rgb, luminance), textureColor.a);\n}\n"


# instance fields
.field private firstColor:[F

.field private firstColorLocation:I

.field private secondColor:[F

.field private secondColorLocation:I


# direct methods
.method public constructor <init>()V
    .locals 7

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/high16 v3, 0x3f000000    # 0.5f

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFalseColorFilter;-><init>(FFFFFF)V

    return-void
.end method

.method public constructor <init>(FFFFFF)V
    .locals 3

    const/4 v0, 0x3

    new-array v1, v0, [F

    const/4 v2, 0x0

    aput p1, v1, v2

    const/4 p1, 0x1

    aput p2, v1, p1

    const/4 p2, 0x2

    aput p3, v1, p2

    new-array p3, v0, [F

    aput p4, p3, v2

    aput p5, p3, p1

    aput p6, p3, p2

    invoke-direct {p0, v1, p3}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFalseColorFilter;-><init>([F[F)V

    return-void
.end method

.method public constructor <init>([F[F)V
    .locals 2

    const-string v0, "attribute vec4 position;\nattribute vec4 inputTextureCoordinate;\n \nvarying vec2 textureCoordinate;\n \nvoid main()\n{\n    gl_Position = position;\n    textureCoordinate = inputTextureCoordinate.xy;\n}"

    const-string v1, "precision lowp float;\n\nvarying highp vec2 textureCoordinate;\n\nuniform sampler2D inputImageTexture;\nuniform float intensity;\nuniform vec3 firstColor;\nuniform vec3 secondColor;\n\nconst mediump vec3 luminanceWeighting = vec3(0.2125, 0.7154, 0.0721);\n\nvoid main()\n{\nlowp vec4 textureColor = texture2D(inputImageTexture, textureCoordinate);\nfloat luminance = dot(textureColor.rgb, luminanceWeighting);\n\ngl_FragColor = vec4( mix(firstColor.rgb, secondColor.rgb, luminance), textureColor.a);\n}\n"

    invoke-direct {p0, v0, v1}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFalseColorFilter;->firstColor:[F

    iput-object p2, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFalseColorFilter;->secondColor:[F

    return-void
.end method


# virtual methods
.method public onInit()V
    .locals 2

    invoke-super {p0}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilter;->onInit()V

    invoke-virtual {p0}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFalseColorFilter;->getProgram()I

    move-result v0

    const-string v1, "firstColor"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFalseColorFilter;->firstColorLocation:I

    invoke-virtual {p0}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFalseColorFilter;->getProgram()I

    move-result v0

    const-string v1, "secondColor"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFalseColorFilter;->secondColorLocation:I

    return-void
.end method

.method public onInitialized()V
    .locals 1

    invoke-super {p0}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilter;->onInitialized()V

    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFalseColorFilter;->firstColor:[F

    invoke-virtual {p0, v0}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFalseColorFilter;->setFirstColor([F)V

    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFalseColorFilter;->secondColor:[F

    invoke-virtual {p0, v0}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFalseColorFilter;->setSecondColor([F)V

    return-void
.end method

.method public setFirstColor([F)V
    .locals 1

    iput-object p1, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFalseColorFilter;->firstColor:[F

    iget v0, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFalseColorFilter;->firstColorLocation:I

    invoke-virtual {p0, v0, p1}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFalseColorFilter;->setFloatVec3(I[F)V

    return-void
.end method

.method public setSecondColor([F)V
    .locals 1

    iput-object p1, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFalseColorFilter;->secondColor:[F

    iget v0, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFalseColorFilter;->secondColorLocation:I

    invoke-virtual {p0, v0, p1}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFalseColorFilter;->setFloatVec3(I[F)V

    return-void
.end method
