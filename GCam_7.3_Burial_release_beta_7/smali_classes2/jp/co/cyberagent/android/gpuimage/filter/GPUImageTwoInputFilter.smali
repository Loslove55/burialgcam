.class public Ljp/co/cyberagent/android/gpuimage/filter/GPUImageTwoInputFilter;
.super Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilter;
.source "GPUImageTwoInputFilter.java"


# static fields
.field private static final VERTEX_SHADER:Ljava/lang/String; = "attribute vec4 position;\nattribute vec4 inputTextureCoordinate;\nattribute vec4 inputTextureCoordinate2;\n \nvarying vec2 textureCoordinate;\nvarying vec2 textureCoordinate2;\n \nvoid main()\n{\n    gl_Position = position;\n    textureCoordinate = inputTextureCoordinate.xy;\n    textureCoordinate2 = inputTextureCoordinate2.xy;\n}"


# instance fields
.field private bitmap:Landroid/graphics/Bitmap;

.field private filterInputTextureUniform2:I

.field private filterSecondTextureCoordinateAttribute:I

.field private filterSourceTexture2:I

.field private texture2CoordinatesBuffer:Ljava/nio/ByteBuffer;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const-string v0, "attribute vec4 position;\nattribute vec4 inputTextureCoordinate;\nattribute vec4 inputTextureCoordinate2;\n \nvarying vec2 textureCoordinate;\nvarying vec2 textureCoordinate2;\n \nvoid main()\n{\n    gl_Position = position;\n    textureCoordinate = inputTextureCoordinate.xy;\n    textureCoordinate2 = inputTextureCoordinate2.xy;\n}"

    invoke-direct {p0, v0, p1}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageTwoInputFilter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, -0x1

    iput p1, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageTwoInputFilter;->filterSourceTexture2:I

    sget-object p1, Ljp/co/cyberagent/android/gpuimage/util/Rotation;->NORMAL:Ljp/co/cyberagent/android/gpuimage/util/Rotation;

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2, p2}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageTwoInputFilter;->setRotation(Ljp/co/cyberagent/android/gpuimage/util/Rotation;ZZ)V

    return-void
.end method

.method static synthetic access$000(Ljp/co/cyberagent/android/gpuimage/filter/GPUImageTwoInputFilter;)I
    .locals 0

    iget p0, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageTwoInputFilter;->filterSourceTexture2:I

    return p0
.end method

.method static synthetic access$002(Ljp/co/cyberagent/android/gpuimage/filter/GPUImageTwoInputFilter;I)I
    .locals 0

    iput p1, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageTwoInputFilter;->filterSourceTexture2:I

    return p1
.end method


# virtual methods
.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageTwoInputFilter;->bitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public onDestroy()V
    .locals 4

    invoke-super {p0}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilter;->onDestroy()V

    const/4 v0, 0x1

    new-array v1, v0, [I

    iget v2, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageTwoInputFilter;->filterSourceTexture2:I

    const/4 v3, 0x0

    aput v2, v1, v3

    invoke-static {v0, v1, v3}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    const/4 v0, -0x1

    iput v0, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageTwoInputFilter;->filterSourceTexture2:I

    return-void
.end method

.method protected onDrawArraysPre()V
    .locals 8

    iget v0, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageTwoInputFilter;->filterSecondTextureCoordinateAttribute:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    const v0, 0x84c3

    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    iget v0, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageTwoInputFilter;->filterSourceTexture2:I

    const/16 v1, 0xde1

    invoke-static {v1, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    iget v0, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageTwoInputFilter;->filterInputTextureUniform2:I

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1i(II)V

    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageTwoInputFilter;->texture2CoordinatesBuffer:Ljava/nio/ByteBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iget v2, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageTwoInputFilter;->filterSecondTextureCoordinateAttribute:I

    iget-object v7, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageTwoInputFilter;->texture2CoordinatesBuffer:Ljava/nio/ByteBuffer;

    const/4 v3, 0x2

    const/16 v4, 0x1406

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v2 .. v7}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    return-void
.end method

.method public onInit()V
    .locals 2

    invoke-super {p0}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilter;->onInit()V

    invoke-virtual {p0}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageTwoInputFilter;->getProgram()I

    move-result v0

    const-string v1, "inputTextureCoordinate2"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageTwoInputFilter;->filterSecondTextureCoordinateAttribute:I

    invoke-virtual {p0}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageTwoInputFilter;->getProgram()I

    move-result v0

    const-string v1, "inputImageTexture2"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageTwoInputFilter;->filterInputTextureUniform2:I

    iget v0, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageTwoInputFilter;->filterSecondTextureCoordinateAttribute:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    return-void
.end method

.method public onInitialized()V
    .locals 1

    invoke-super {p0}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilter;->onInitialized()V

    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageTwoInputFilter;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageTwoInputFilter;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p0, v0}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageTwoInputFilter;->setBitmap(Landroid/graphics/Bitmap;)V

    :cond_0
    return-void
.end method

.method public recycleBitmap()V
    .locals 1

    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageTwoInputFilter;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageTwoInputFilter;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v0, 0x0

    iput-object v0, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageTwoInputFilter;->bitmap:Landroid/graphics/Bitmap;

    :cond_0
    return-void
.end method

.method public setBitmap(Landroid/graphics/Bitmap;)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageTwoInputFilter;->bitmap:Landroid/graphics/Bitmap;

    if-nez p1, :cond_1

    return-void

    :cond_1
    new-instance v0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageTwoInputFilter$1;

    invoke-direct {v0, p0, p1}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageTwoInputFilter$1;-><init>(Ljp/co/cyberagent/android/gpuimage/filter/GPUImageTwoInputFilter;Landroid/graphics/Bitmap;)V

    invoke-virtual {p0, v0}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageTwoInputFilter;->runOnDraw(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setRotation(Ljp/co/cyberagent/android/gpuimage/util/Rotation;ZZ)V
    .locals 0

    invoke-static {p1, p2, p3}, Ljp/co/cyberagent/android/gpuimage/util/TextureRotationUtil;->getRotation(Ljp/co/cyberagent/android/gpuimage/util/Rotation;ZZ)[F

    move-result-object p1

    const/16 p2, 0x20

    invoke-static {p2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object p2

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object p3

    invoke-virtual {p3, p1}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    invoke-virtual {p3}, Ljava/nio/FloatBuffer;->flip()Ljava/nio/Buffer;

    iput-object p2, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageTwoInputFilter;->texture2CoordinatesBuffer:Ljava/nio/ByteBuffer;

    return-void
.end method
