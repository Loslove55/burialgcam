.class public Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilterGroup;
.super Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilter;
.source "GPUImageFilterGroup.java"


# instance fields
.field private filters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilter;",
            ">;"
        }
    .end annotation
.end field

.field private frameBufferTextures:[I

.field private frameBuffers:[I

.field private final glCubeBuffer:Ljava/nio/FloatBuffer;

.field private final glTextureBuffer:Ljava/nio/FloatBuffer;

.field private final glTextureFlipBuffer:Ljava/nio/FloatBuffer;

.field private mergedFilters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilterGroup;-><init>(Ljava/util/List;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilter;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilter;-><init>()V

    iput-object p1, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilterGroup;->filters:Ljava/util/List;

    if-nez p1, :cond_0

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilterGroup;->filters:Ljava/util/List;

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilterGroup;->updateMergedFilters()V

    :goto_0
    sget-object p1, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;->CUBE:[F

    array-length p1, p1

    mul-int/lit8 p1, p1, 0x4

    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object p1

    iput-object p1, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilterGroup;->glCubeBuffer:Ljava/nio/FloatBuffer;

    sget-object v0, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;->CUBE:[F

    invoke-virtual {p1, v0}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    sget-object p1, Ljp/co/cyberagent/android/gpuimage/util/TextureRotationUtil;->TEXTURE_NO_ROTATION:[F

    array-length p1, p1

    mul-int/lit8 p1, p1, 0x4

    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object p1

    iput-object p1, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilterGroup;->glTextureBuffer:Ljava/nio/FloatBuffer;

    sget-object v1, Ljp/co/cyberagent/android/gpuimage/util/TextureRotationUtil;->TEXTURE_NO_ROTATION:[F

    invoke-virtual {p1, v1}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    sget-object p1, Ljp/co/cyberagent/android/gpuimage/util/Rotation;->NORMAL:Ljp/co/cyberagent/android/gpuimage/util/Rotation;

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Ljp/co/cyberagent/android/gpuimage/util/TextureRotationUtil;->getRotation(Ljp/co/cyberagent/android/gpuimage/util/Rotation;ZZ)[F

    move-result-object p1

    array-length v1, p1

    mul-int/lit8 v1, v1, 0x4

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v1

    iput-object v1, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilterGroup;->glTextureFlipBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v1, p1}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    return-void
.end method

.method private destroyFramebuffers()V
    .locals 4

    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilterGroup;->frameBufferTextures:[I

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    array-length v3, v0

    invoke-static {v3, v0, v2}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    iput-object v1, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilterGroup;->frameBufferTextures:[I

    :cond_0
    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilterGroup;->frameBuffers:[I

    if-eqz v0, :cond_1

    array-length v3, v0

    invoke-static {v3, v0, v2}, Landroid/opengl/GLES20;->glDeleteFramebuffers(I[II)V

    iput-object v1, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilterGroup;->frameBuffers:[I

    :cond_1
    return-void
.end method


# virtual methods
.method public addFilter(Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilter;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilterGroup;->filters:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilterGroup;->updateMergedFilters()V

    return-void
.end method

.method public getFilters()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilter;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilterGroup;->filters:Ljava/util/List;

    return-object v0
.end method

.method public getMergedFilters()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilter;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilterGroup;->mergedFilters:Ljava/util/List;

    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    invoke-direct {p0}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilterGroup;->destroyFramebuffers()V

    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilterGroup;->filters:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilter;

    invoke-virtual {v1}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilter;->destroy()V

    goto :goto_0

    :cond_0
    invoke-super {p0}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilter;->onDestroy()V

    return-void
.end method

.method public onDraw(ILjava/nio/FloatBuffer;Ljava/nio/FloatBuffer;)V
    .locals 8

    invoke-virtual {p0}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilterGroup;->runPendingOnDrawTasks()V

    invoke-virtual {p0}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilterGroup;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilterGroup;->frameBuffers:[I

    if-eqz v0, :cond_7

    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilterGroup;->frameBufferTextures:[I

    if-nez v0, :cond_0

    goto :goto_4

    :cond_0
    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilterGroup;->mergedFilters:Ljava/util/List;

    if-eqz v0, :cond_7

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_7

    iget-object v3, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilterGroup;->mergedFilters:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilter;

    add-int/lit8 v4, v0, -0x1

    if-ge v2, v4, :cond_1

    const/4 v5, 0x1

    goto :goto_1

    :cond_1
    move v5, v1

    :goto_1
    const v6, 0x8d40

    if-eqz v5, :cond_2

    iget-object v7, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilterGroup;->frameBuffers:[I

    aget v7, v7, v2

    invoke-static {v6, v7}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    const/4 v7, 0x0

    invoke-static {v7, v7, v7, v7}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    :cond_2
    if-nez v2, :cond_3

    invoke-virtual {v3, p1, p2, p3}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilter;->onDraw(ILjava/nio/FloatBuffer;Ljava/nio/FloatBuffer;)V

    goto :goto_3

    :cond_3
    if-ne v2, v4, :cond_5

    iget-object v4, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilterGroup;->glCubeBuffer:Ljava/nio/FloatBuffer;

    rem-int/lit8 v7, v0, 0x2

    if-nez v7, :cond_4

    iget-object v7, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilterGroup;->glTextureFlipBuffer:Ljava/nio/FloatBuffer;

    goto :goto_2

    :cond_4
    iget-object v7, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilterGroup;->glTextureBuffer:Ljava/nio/FloatBuffer;

    :goto_2
    invoke-virtual {v3, p1, v4, v7}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilter;->onDraw(ILjava/nio/FloatBuffer;Ljava/nio/FloatBuffer;)V

    goto :goto_3

    :cond_5
    iget-object v4, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilterGroup;->glCubeBuffer:Ljava/nio/FloatBuffer;

    iget-object v7, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilterGroup;->glTextureBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v3, p1, v4, v7}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilter;->onDraw(ILjava/nio/FloatBuffer;Ljava/nio/FloatBuffer;)V

    :goto_3
    if-eqz v5, :cond_6

    invoke-static {v6, v1}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    iget-object p1, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilterGroup;->frameBufferTextures:[I

    aget p1, p1, v2

    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_7
    :goto_4
    return-void
.end method

.method public onInit()V
    .locals 2

    invoke-super {p0}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilter;->onInit()V

    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilterGroup;->filters:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilter;

    invoke-virtual {v1}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilter;->ifNeedInit()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onOutputSizeChanged(II)V
    .locals 17

    move-object/from16 v0, p0

    invoke-super/range {p0 .. p2}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilter;->onOutputSizeChanged(II)V

    iget-object v1, v0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilterGroup;->frameBuffers:[I

    if-eqz v1, :cond_0

    invoke-direct/range {p0 .. p0}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilterGroup;->destroyFramebuffers()V

    :cond_0
    iget-object v1, v0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilterGroup;->filters:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    iget-object v4, v0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilterGroup;->filters:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilter;

    move/from16 v14, p1

    move/from16 v15, p2

    invoke-virtual {v4, v14, v15}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilter;->onOutputSizeChanged(II)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    move/from16 v14, p1

    move/from16 v15, p2

    iget-object v1, v0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilterGroup;->mergedFilters:Ljava/util/List;

    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2

    iget-object v1, v0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilterGroup;->mergedFilters:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v3, 0x1

    sub-int/2addr v1, v3

    new-array v4, v1, [I

    iput-object v4, v0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilterGroup;->frameBuffers:[I

    new-array v4, v1, [I

    iput-object v4, v0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilterGroup;->frameBufferTextures:[I

    move v4, v2

    :goto_1
    if-ge v4, v1, :cond_2

    iget-object v5, v0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilterGroup;->frameBuffers:[I

    invoke-static {v3, v5, v4}, Landroid/opengl/GLES20;->glGenFramebuffers(I[II)V

    iget-object v5, v0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilterGroup;->frameBufferTextures:[I

    invoke-static {v3, v5, v4}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    iget-object v5, v0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilterGroup;->frameBufferTextures:[I

    aget v5, v5, v4

    const/16 v13, 0xde1

    invoke-static {v13, v5}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const/16 v5, 0xde1

    const/4 v6, 0x0

    const/16 v7, 0x1908

    const/4 v10, 0x0

    const/16 v11, 0x1908

    const/16 v12, 0x1401

    const/16 v16, 0x0

    move/from16 v8, p1

    move/from16 v9, p2

    move v3, v13

    move-object/from16 v13, v16

    invoke-static/range {v5 .. v13}, Landroid/opengl/GLES20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    const/16 v5, 0x2800

    const v6, 0x46180400    # 9729.0f

    invoke-static {v3, v5, v6}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 v5, 0x2801

    invoke-static {v3, v5, v6}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 v5, 0x2802

    const v6, 0x47012f00    # 33071.0f

    invoke-static {v3, v5, v6}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 v5, 0x2803

    invoke-static {v3, v5, v6}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    iget-object v5, v0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilterGroup;->frameBuffers:[I

    aget v5, v5, v4

    const v6, 0x8d40

    invoke-static {v6, v5}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    const v5, 0x8ce0

    iget-object v7, v0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilterGroup;->frameBufferTextures:[I

    aget v7, v7, v4

    invoke-static {v6, v5, v3, v7, v2}, Landroid/opengl/GLES20;->glFramebufferTexture2D(IIIII)V

    invoke-static {v3, v2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    invoke-static {v6, v2}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    add-int/lit8 v4, v4, 0x1

    const/4 v3, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method public updateMergedFilters()V
    .locals 3

    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilterGroup;->filters:Ljava/util/List;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilterGroup;->mergedFilters:Ljava/util/List;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilterGroup;->mergedFilters:Ljava/util/List;

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Ljava/util/List;->clear()V

    :goto_0
    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilterGroup;->filters:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilter;

    instance-of v2, v1, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilterGroup;

    if-eqz v2, :cond_4

    check-cast v1, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilterGroup;

    invoke-virtual {v1}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilterGroup;->updateMergedFilters()V

    invoke-virtual {v1}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilterGroup;->getMergedFilters()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_1

    :cond_3
    iget-object v2, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilterGroup;->mergedFilters:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    :cond_4
    iget-object v2, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilterGroup;->mergedFilters:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_5
    return-void
.end method
