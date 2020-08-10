.class public Ljp/co/cyberagent/android/gpuimage/filter/GPUImageRGBFilter;
.super Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilter;
.source "GPUImageRGBFilter.java"


# static fields
.field public static final RGB_FRAGMENT_SHADER:Ljava/lang/String; = "  varying highp vec2 textureCoordinate;\n  \n  uniform sampler2D inputImageTexture;\n  uniform highp float red;\n  uniform highp float green;\n  uniform highp float blue;\n  \n  void main()\n  {\n      highp vec4 textureColor = texture2D(inputImageTexture, textureCoordinate);\n      \n      gl_FragColor = vec4(textureColor.r * red, textureColor.g * green, textureColor.b * blue, 1.0);\n  }\n"


# instance fields
.field private blue:F

.field private blueLocation:I

.field private green:F

.field private greenLocation:I

.field private red:F

.field private redLocation:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-direct {p0, v0, v0, v0}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageRGBFilter;-><init>(FFF)V

    return-void
.end method

.method public constructor <init>(FFF)V
    .locals 2

    const-string v0, "attribute vec4 position;\nattribute vec4 inputTextureCoordinate;\n \nvarying vec2 textureCoordinate;\n \nvoid main()\n{\n    gl_Position = position;\n    textureCoordinate = inputTextureCoordinate.xy;\n}"

    const-string v1, "  varying highp vec2 textureCoordinate;\n  \n  uniform sampler2D inputImageTexture;\n  uniform highp float red;\n  uniform highp float green;\n  uniform highp float blue;\n  \n  void main()\n  {\n      highp vec4 textureColor = texture2D(inputImageTexture, textureCoordinate);\n      \n      gl_FragColor = vec4(textureColor.r * red, textureColor.g * green, textureColor.b * blue, 1.0);\n  }\n"

    invoke-direct {p0, v0, v1}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput p1, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageRGBFilter;->red:F

    iput p2, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageRGBFilter;->green:F

    iput p3, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageRGBFilter;->blue:F

    return-void
.end method


# virtual methods
.method public onInit()V
    .locals 2

    invoke-super {p0}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilter;->onInit()V

    invoke-virtual {p0}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageRGBFilter;->getProgram()I

    move-result v0

    const-string v1, "red"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageRGBFilter;->redLocation:I

    invoke-virtual {p0}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageRGBFilter;->getProgram()I

    move-result v0

    const-string v1, "green"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageRGBFilter;->greenLocation:I

    invoke-virtual {p0}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageRGBFilter;->getProgram()I

    move-result v0

    const-string v1, "blue"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageRGBFilter;->blueLocation:I

    return-void
.end method

.method public onInitialized()V
    .locals 1

    invoke-super {p0}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilter;->onInitialized()V

    iget v0, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageRGBFilter;->red:F

    invoke-virtual {p0, v0}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageRGBFilter;->setRed(F)V

    iget v0, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageRGBFilter;->green:F

    invoke-virtual {p0, v0}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageRGBFilter;->setGreen(F)V

    iget v0, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageRGBFilter;->blue:F

    invoke-virtual {p0, v0}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageRGBFilter;->setBlue(F)V

    return-void
.end method

.method public setBlue(F)V
    .locals 1

    iput p1, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageRGBFilter;->blue:F

    iget v0, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageRGBFilter;->blueLocation:I

    invoke-virtual {p0, v0, p1}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageRGBFilter;->setFloat(IF)V

    return-void
.end method

.method public setGreen(F)V
    .locals 1

    iput p1, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageRGBFilter;->green:F

    iget v0, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageRGBFilter;->greenLocation:I

    invoke-virtual {p0, v0, p1}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageRGBFilter;->setFloat(IF)V

    return-void
.end method

.method public setRed(F)V
    .locals 1

    iput p1, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageRGBFilter;->red:F

    iget v0, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageRGBFilter;->redLocation:I

    invoke-virtual {p0, v0, p1}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageRGBFilter;->setFloat(IF)V

    return-void
.end method
