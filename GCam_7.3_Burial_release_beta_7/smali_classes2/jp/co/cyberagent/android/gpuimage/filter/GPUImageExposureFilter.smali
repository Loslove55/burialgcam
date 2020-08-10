.class public Ljp/co/cyberagent/android/gpuimage/filter/GPUImageExposureFilter;
.super Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilter;
.source "GPUImageExposureFilter.java"


# static fields
.field public static final EXPOSURE_FRAGMENT_SHADER:Ljava/lang/String; = " varying highp vec2 textureCoordinate;\n \n uniform sampler2D inputImageTexture;\n uniform highp float exposure;\n \n void main()\n {\n     highp vec4 textureColor = texture2D(inputImageTexture, textureCoordinate);\n     \n     gl_FragColor = vec4(textureColor.rgb * pow(2.0, exposure), textureColor.w);\n } "


# instance fields
.field private exposure:F

.field private exposureLocation:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-direct {p0, v0}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageExposureFilter;-><init>(F)V

    return-void
.end method

.method public constructor <init>(F)V
    .locals 2

    const-string v0, "attribute vec4 position;\nattribute vec4 inputTextureCoordinate;\n \nvarying vec2 textureCoordinate;\n \nvoid main()\n{\n    gl_Position = position;\n    textureCoordinate = inputTextureCoordinate.xy;\n}"

    const-string v1, " varying highp vec2 textureCoordinate;\n \n uniform sampler2D inputImageTexture;\n uniform highp float exposure;\n \n void main()\n {\n     highp vec4 textureColor = texture2D(inputImageTexture, textureCoordinate);\n     \n     gl_FragColor = vec4(textureColor.rgb * pow(2.0, exposure), textureColor.w);\n } "

    invoke-direct {p0, v0, v1}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput p1, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageExposureFilter;->exposure:F

    return-void
.end method


# virtual methods
.method public onInit()V
    .locals 2

    invoke-super {p0}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilter;->onInit()V

    invoke-virtual {p0}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageExposureFilter;->getProgram()I

    move-result v0

    const-string v1, "exposure"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageExposureFilter;->exposureLocation:I

    return-void
.end method

.method public onInitialized()V
    .locals 1

    invoke-super {p0}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilter;->onInitialized()V

    iget v0, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageExposureFilter;->exposure:F

    invoke-virtual {p0, v0}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageExposureFilter;->setExposure(F)V

    return-void
.end method

.method public setExposure(F)V
    .locals 1

    iput p1, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageExposureFilter;->exposure:F

    iget v0, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageExposureFilter;->exposureLocation:I

    invoke-virtual {p0, v0, p1}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageExposureFilter;->setFloat(IF)V

    return-void
.end method
