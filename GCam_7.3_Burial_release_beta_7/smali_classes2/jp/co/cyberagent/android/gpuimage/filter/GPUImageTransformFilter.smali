.class public Ljp/co/cyberagent/android/gpuimage/filter/GPUImageTransformFilter;
.super Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilter;
.source "GPUImageTransformFilter.java"


# static fields
.field public static final TRANSFORM_VERTEX_SHADER:Ljava/lang/String; = "attribute vec4 position;\n attribute vec4 inputTextureCoordinate;\n \n uniform mat4 transformMatrix;\n uniform mat4 orthographicMatrix;\n \n varying vec2 textureCoordinate;\n \n void main()\n {\n     gl_Position = transformMatrix * vec4(position.xyz, 1.0) * orthographicMatrix;\n     textureCoordinate = inputTextureCoordinate.xy;\n }"


# instance fields
.field private anchorTopLeft:Z

.field private ignoreAspectRatio:Z

.field private orthographicMatrix:[F

.field private orthographicMatrixUniform:I

.field private transform3D:[F

.field private transformMatrixUniform:I


# direct methods
.method public constructor <init>()V
    .locals 9

    const-string v0, "attribute vec4 position;\n attribute vec4 inputTextureCoordinate;\n \n uniform mat4 transformMatrix;\n uniform mat4 orthographicMatrix;\n \n varying vec2 textureCoordinate;\n \n void main()\n {\n     gl_Position = transformMatrix * vec4(position.xyz, 1.0) * orthographicMatrix;\n     textureCoordinate = inputTextureCoordinate.xy;\n }"

    const-string v1, "varying highp vec2 textureCoordinate;\n \nuniform sampler2D inputImageTexture;\n \nvoid main()\n{\n     gl_FragColor = texture2D(inputImageTexture, textureCoordinate);\n}"

    invoke-direct {p0, v0, v1}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x10

    new-array v1, v0, [F

    iput-object v1, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageTransformFilter;->orthographicMatrix:[F

    const/4 v2, 0x0

    const/high16 v3, -0x40800000    # -1.0f

    const/high16 v4, 0x3f800000    # 1.0f

    const/high16 v5, -0x40800000    # -1.0f

    const/high16 v6, 0x3f800000    # 1.0f

    const/high16 v7, -0x40800000    # -1.0f

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-static/range {v1 .. v8}, Landroid/opengl/Matrix;->orthoM([FIFFFFFF)V

    new-array v0, v0, [F

    iput-object v0, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageTransformFilter;->transform3D:[F

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    return-void
.end method


# virtual methods
.method public anchorTopLeft()Z
    .locals 1

    iget-boolean v0, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageTransformFilter;->anchorTopLeft:Z

    return v0
.end method

.method public getTransform3D()[F
    .locals 1

    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageTransformFilter;->transform3D:[F

    return-object v0
.end method

.method public ignoreAspectRatio()Z
    .locals 1

    iget-boolean v0, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageTransformFilter;->ignoreAspectRatio:Z

    return v0
.end method

.method public onDraw(ILjava/nio/FloatBuffer;Ljava/nio/FloatBuffer;)V
    .locals 4

    iget-boolean v0, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageTransformFilter;->ignoreAspectRatio:Z

    if-nez v0, :cond_0

    const/16 v0, 0x8

    new-array v0, v0, [F

    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {p2, v0}, Ljava/nio/FloatBuffer;->get([F)Ljava/nio/FloatBuffer;

    invoke-virtual {p0}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageTransformFilter;->getOutputHeight()I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {p0}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageTransformFilter;->getOutputWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr p2, v2

    const/4 v2, 0x1

    aget v3, v0, v2

    mul-float/2addr v3, p2

    aput v3, v0, v2

    const/4 v2, 0x3

    aget v3, v0, v2

    mul-float/2addr v3, p2

    aput v3, v0, v2

    const/4 v2, 0x5

    aget v3, v0, v2

    mul-float/2addr v3, p2

    aput v3, v0, v2

    const/4 v2, 0x7

    aget v3, v0, v2

    mul-float/2addr v3, p2

    aput v3, v0, v2

    const/16 p2, 0x20

    invoke-static {p2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object p2

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object p2

    invoke-virtual {p2, v0}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    :cond_0
    invoke-super {p0, p1, p2, p3}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilter;->onDraw(ILjava/nio/FloatBuffer;Ljava/nio/FloatBuffer;)V

    return-void
.end method

.method public onInit()V
    .locals 2

    invoke-super {p0}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilter;->onInit()V

    invoke-virtual {p0}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageTransformFilter;->getProgram()I

    move-result v0

    const-string v1, "transformMatrix"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageTransformFilter;->transformMatrixUniform:I

    invoke-virtual {p0}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageTransformFilter;->getProgram()I

    move-result v0

    const-string v1, "orthographicMatrix"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageTransformFilter;->orthographicMatrixUniform:I

    return-void
.end method

.method public onInitialized()V
    .locals 2

    invoke-super {p0}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilter;->onInitialized()V

    iget v0, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageTransformFilter;->transformMatrixUniform:I

    iget-object v1, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageTransformFilter;->transform3D:[F

    invoke-virtual {p0, v0, v1}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageTransformFilter;->setUniformMatrix4f(I[F)V

    iget v0, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageTransformFilter;->orthographicMatrixUniform:I

    iget-object v1, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageTransformFilter;->orthographicMatrix:[F

    invoke-virtual {p0, v0, v1}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageTransformFilter;->setUniformMatrix4f(I[F)V

    return-void
.end method

.method public onOutputSizeChanged(II)V
    .locals 9

    invoke-super {p0, p1, p2}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilter;->onOutputSizeChanged(II)V

    iget-boolean v0, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageTransformFilter;->ignoreAspectRatio:Z

    if-nez v0, :cond_0

    iget-object v1, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageTransformFilter;->orthographicMatrix:[F

    const/4 v2, 0x0

    const/high16 v3, -0x40800000    # -1.0f

    const/high16 v4, 0x3f800000    # 1.0f

    const/high16 v0, -0x40800000    # -1.0f

    int-to-float p2, p2

    mul-float/2addr v0, p2

    int-to-float p1, p1

    div-float v5, v0, p1

    const/high16 v0, 0x3f800000    # 1.0f

    mul-float/2addr p2, v0

    div-float v6, p2, p1

    const/high16 v7, -0x40800000    # -1.0f

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-static/range {v1 .. v8}, Landroid/opengl/Matrix;->orthoM([FIFFFFFF)V

    iget p1, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageTransformFilter;->orthographicMatrixUniform:I

    iget-object p2, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageTransformFilter;->orthographicMatrix:[F

    invoke-virtual {p0, p1, p2}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageTransformFilter;->setUniformMatrix4f(I[F)V

    :cond_0
    return-void
.end method

.method public setAnchorTopLeft(Z)V
    .locals 0

    iput-boolean p1, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageTransformFilter;->anchorTopLeft:Z

    iget-boolean p1, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageTransformFilter;->ignoreAspectRatio:Z

    invoke-virtual {p0, p1}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageTransformFilter;->setIgnoreAspectRatio(Z)V

    return-void
.end method

.method public setIgnoreAspectRatio(Z)V
    .locals 8

    iput-boolean p1, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageTransformFilter;->ignoreAspectRatio:Z

    if-eqz p1, :cond_0

    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageTransformFilter;->orthographicMatrix:[F

    const/4 v1, 0x0

    const/high16 v2, -0x40800000    # -1.0f

    const/high16 v3, 0x3f800000    # 1.0f

    const/high16 v4, -0x40800000    # -1.0f

    const/high16 v5, 0x3f800000    # 1.0f

    const/high16 v6, -0x40800000    # -1.0f

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-static/range {v0 .. v7}, Landroid/opengl/Matrix;->orthoM([FIFFFFFF)V

    iget p1, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageTransformFilter;->orthographicMatrixUniform:I

    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageTransformFilter;->orthographicMatrix:[F

    invoke-virtual {p0, p1, v0}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageTransformFilter;->setUniformMatrix4f(I[F)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageTransformFilter;->getOutputWidth()I

    move-result p1

    invoke-virtual {p0}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageTransformFilter;->getOutputHeight()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageTransformFilter;->onOutputSizeChanged(II)V

    :goto_0
    return-void
.end method

.method public setTransform3D([F)V
    .locals 1

    iput-object p1, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageTransformFilter;->transform3D:[F

    iget v0, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageTransformFilter;->transformMatrixUniform:I

    invoke-virtual {p0, v0, p1}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageTransformFilter;->setUniformMatrix4f(I[F)V

    return-void
.end method
