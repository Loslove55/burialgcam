.class public Ljp/co/cyberagent/android/gpuimage/GPUImageView;
.super Landroid/widget/FrameLayout;
.source "GPUImageView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljp/co/cyberagent/android/gpuimage/GPUImageView$OnPictureSavedListener;,
        Ljp/co/cyberagent/android/gpuimage/GPUImageView$SaveTask;,
        Ljp/co/cyberagent/android/gpuimage/GPUImageView$LoadingView;,
        Ljp/co/cyberagent/android/gpuimage/GPUImageView$GPUImageGLTextureView;,
        Ljp/co/cyberagent/android/gpuimage/GPUImageView$GPUImageGLSurfaceView;,
        Ljp/co/cyberagent/android/gpuimage/GPUImageView$Size;
    }
.end annotation


# static fields
.field public static final RENDERMODE_CONTINUOUSLY:I = 0x1

.field public static final RENDERMODE_WHEN_DIRTY:I


# instance fields
.field private filter:Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilter;

.field public forceSize:Ljp/co/cyberagent/android/gpuimage/GPUImageView$Size;

.field private gpuImage:Ljp/co/cyberagent/android/gpuimage/GPUImage;

.field private isShowLoading:Z

.field private ratio:F

.field private surfaceType:I

.field private surfaceView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput v0, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageView;->surfaceType:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageView;->isShowLoading:Z

    const/4 v0, 0x0

    iput-object v0, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageView;->forceSize:Ljp/co/cyberagent/android/gpuimage/GPUImageView$Size;

    const/4 v1, 0x0

    iput v1, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageView;->ratio:F

    invoke-direct {p0, p1, v0}, Ljp/co/cyberagent/android/gpuimage/GPUImageView;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput v0, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageView;->surfaceType:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageView;->isShowLoading:Z

    const/4 v0, 0x0

    iput-object v0, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageView;->forceSize:Ljp/co/cyberagent/android/gpuimage/GPUImageView$Size;

    const/4 v0, 0x0

    iput v0, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageView;->ratio:F

    invoke-direct {p0, p1, p2}, Ljp/co/cyberagent/android/gpuimage/GPUImageView;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method static synthetic access$000(Ljp/co/cyberagent/android/gpuimage/GPUImageView;)Z
    .locals 0

    iget-boolean p0, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageView;->isShowLoading:Z

    return p0
.end method

.method static synthetic access$100(Ljp/co/cyberagent/android/gpuimage/GPUImageView;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageView;->surfaceView:Landroid/view/View;

    return-object p0
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    sget-object v1, Ljp/co/cyberagent/android/gpuimage/R$styleable;->GPUImageView:[I

    const/4 v2, 0x0

    invoke-virtual {v0, p2, v1, v2, v2}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    :try_start_0
    sget v1, Ljp/co/cyberagent/android/gpuimage/R$styleable;->GPUImageView_gpuimage_surface_type:I

    iget v2, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageView;->surfaceType:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageView;->surfaceType:I

    sget v1, Ljp/co/cyberagent/android/gpuimage/R$styleable;->GPUImageView_gpuimage_show_loading:I

    iget-boolean v2, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageView;->isShowLoading:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageView;->isShowLoading:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    throw p1

    :cond_0
    :goto_0
    new-instance v0, Ljp/co/cyberagent/android/gpuimage/GPUImage;

    invoke-direct {v0, p1}, Ljp/co/cyberagent/android/gpuimage/GPUImage;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageView;->gpuImage:Ljp/co/cyberagent/android/gpuimage/GPUImage;

    iget v0, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageView;->surfaceType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    new-instance v0, Ljp/co/cyberagent/android/gpuimage/GPUImageView$GPUImageGLTextureView;

    invoke-direct {v0, p0, p1, p2}, Ljp/co/cyberagent/android/gpuimage/GPUImageView$GPUImageGLTextureView;-><init>(Ljp/co/cyberagent/android/gpuimage/GPUImageView;Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v0, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageView;->surfaceView:Landroid/view/View;

    iget-object p1, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageView;->gpuImage:Ljp/co/cyberagent/android/gpuimage/GPUImage;

    check-cast v0, Ljp/co/cyberagent/android/gpuimage/GLTextureView;

    invoke-virtual {p1, v0}, Ljp/co/cyberagent/android/gpuimage/GPUImage;->setGLTextureView(Ljp/co/cyberagent/android/gpuimage/GLTextureView;)V

    goto :goto_1

    :cond_1
    new-instance v0, Ljp/co/cyberagent/android/gpuimage/GPUImageView$GPUImageGLSurfaceView;

    invoke-direct {v0, p0, p1, p2}, Ljp/co/cyberagent/android/gpuimage/GPUImageView$GPUImageGLSurfaceView;-><init>(Ljp/co/cyberagent/android/gpuimage/GPUImageView;Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v0, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageView;->surfaceView:Landroid/view/View;

    iget-object p1, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageView;->gpuImage:Ljp/co/cyberagent/android/gpuimage/GPUImage;

    check-cast v0, Landroid/opengl/GLSurfaceView;

    invoke-virtual {p1, v0}, Ljp/co/cyberagent/android/gpuimage/GPUImage;->setGLSurfaceView(Landroid/opengl/GLSurfaceView;)V

    :goto_1
    iget-object p1, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageView;->surfaceView:Landroid/view/View;

    invoke-virtual {p0, p1}, Ljp/co/cyberagent/android/gpuimage/GPUImageView;->addView(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public capture()Landroid/graphics/Bitmap;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    new-instance v0, Ljava/util/concurrent/Semaphore;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    iget-object v1, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageView;->surfaceView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    iget-object v2, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageView;->surfaceView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    iget-object v2, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageView;->gpuImage:Ljp/co/cyberagent/android/gpuimage/GPUImage;

    new-instance v3, Ljp/co/cyberagent/android/gpuimage/GPUImageView$6;

    invoke-direct {v3, p0, v1, v0}, Ljp/co/cyberagent/android/gpuimage/GPUImageView$6;-><init>(Ljp/co/cyberagent/android/gpuimage/GPUImageView;Landroid/graphics/Bitmap;Ljava/util/concurrent/Semaphore;)V

    invoke-virtual {v2, v3}, Ljp/co/cyberagent/android/gpuimage/GPUImage;->runOnGLThread(Ljava/lang/Runnable;)V

    invoke-virtual {p0}, Ljp/co/cyberagent/android/gpuimage/GPUImageView;->requestRender()V

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->acquire()V

    return-object v1
.end method

.method public capture(II)Landroid/graphics/Bitmap;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_1

    new-instance v0, Ljp/co/cyberagent/android/gpuimage/GPUImageView$Size;

    invoke-direct {v0, p1, p2}, Ljp/co/cyberagent/android/gpuimage/GPUImageView$Size;-><init>(II)V

    iput-object v0, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageView;->forceSize:Ljp/co/cyberagent/android/gpuimage/GPUImageView$Size;

    new-instance p1, Ljava/util/concurrent/Semaphore;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    invoke-virtual {p0}, Ljp/co/cyberagent/android/gpuimage/GPUImageView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p2

    new-instance v0, Ljp/co/cyberagent/android/gpuimage/GPUImageView$1;

    invoke-direct {v0, p0, p1}, Ljp/co/cyberagent/android/gpuimage/GPUImageView$1;-><init>(Ljp/co/cyberagent/android/gpuimage/GPUImageView;Ljava/util/concurrent/Semaphore;)V

    invoke-virtual {p2, v0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    new-instance p2, Ljp/co/cyberagent/android/gpuimage/GPUImageView$2;

    invoke-direct {p2, p0}, Ljp/co/cyberagent/android/gpuimage/GPUImageView$2;-><init>(Ljp/co/cyberagent/android/gpuimage/GPUImageView;)V

    invoke-virtual {p0, p2}, Ljp/co/cyberagent/android/gpuimage/GPUImageView;->post(Ljava/lang/Runnable;)Z

    invoke-virtual {p1}, Ljava/util/concurrent/Semaphore;->acquire()V

    iget-object p2, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageView;->gpuImage:Ljp/co/cyberagent/android/gpuimage/GPUImage;

    new-instance v0, Ljp/co/cyberagent/android/gpuimage/GPUImageView$3;

    invoke-direct {v0, p0, p1}, Ljp/co/cyberagent/android/gpuimage/GPUImageView$3;-><init>(Ljp/co/cyberagent/android/gpuimage/GPUImageView;Ljava/util/concurrent/Semaphore;)V

    invoke-virtual {p2, v0}, Ljp/co/cyberagent/android/gpuimage/GPUImage;->runOnGLThread(Ljava/lang/Runnable;)V

    invoke-virtual {p0}, Ljp/co/cyberagent/android/gpuimage/GPUImageView;->requestRender()V

    invoke-virtual {p1}, Ljava/util/concurrent/Semaphore;->acquire()V

    invoke-virtual {p0}, Ljp/co/cyberagent/android/gpuimage/GPUImageView;->capture()Landroid/graphics/Bitmap;

    move-result-object p1

    const/4 p2, 0x0

    iput-object p2, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageView;->forceSize:Ljp/co/cyberagent/android/gpuimage/GPUImageView$Size;

    new-instance p2, Ljp/co/cyberagent/android/gpuimage/GPUImageView$4;

    invoke-direct {p2, p0}, Ljp/co/cyberagent/android/gpuimage/GPUImageView$4;-><init>(Ljp/co/cyberagent/android/gpuimage/GPUImageView;)V

    invoke-virtual {p0, p2}, Ljp/co/cyberagent/android/gpuimage/GPUImageView;->post(Ljava/lang/Runnable;)Z

    invoke-virtual {p0}, Ljp/co/cyberagent/android/gpuimage/GPUImageView;->requestRender()V

    iget-boolean p2, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageView;->isShowLoading:Z

    if-eqz p2, :cond_0

    new-instance p2, Ljp/co/cyberagent/android/gpuimage/GPUImageView$5;

    invoke-direct {p2, p0}, Ljp/co/cyberagent/android/gpuimage/GPUImageView$5;-><init>(Ljp/co/cyberagent/android/gpuimage/GPUImageView;)V

    const-wide/16 v0, 0x12c

    invoke-virtual {p0, p2, v0, v1}, Ljp/co/cyberagent/android/gpuimage/GPUImageView;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-object p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Do not call this method from the UI thread!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getFilter()Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilter;
    .locals 1

    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageView;->filter:Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilter;

    return-object v0
.end method

.method public getGPUImage()Ljp/co/cyberagent/android/gpuimage/GPUImage;
    .locals 1

    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageView;->gpuImage:Ljp/co/cyberagent/android/gpuimage/GPUImage;

    return-object v0
.end method

.method protected onMeasure(II)V
    .locals 4

    iget v0, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageView;->ratio:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_1

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    int-to-float v0, p1

    iget v1, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageView;->ratio:F

    div-float v2, v0, v1

    int-to-float v3, p2

    cmpg-float v2, v2, v3

    if-gez v2, :cond_0

    div-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result p2

    goto :goto_0

    :cond_0
    mul-float/2addr v3, v1

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result p1

    :goto_0
    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {p1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    goto :goto_1

    :cond_1
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    :goto_1
    return-void
.end method

.method public onPause()V
    .locals 2

    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageView;->surfaceView:Landroid/view/View;

    instance-of v1, v0, Landroid/opengl/GLSurfaceView;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/opengl/GLSurfaceView;

    invoke-virtual {v0}, Landroid/opengl/GLSurfaceView;->onPause()V

    goto :goto_0

    :cond_0
    instance-of v1, v0, Ljp/co/cyberagent/android/gpuimage/GLTextureView;

    if-eqz v1, :cond_1

    check-cast v0, Ljp/co/cyberagent/android/gpuimage/GLTextureView;

    invoke-virtual {v0}, Ljp/co/cyberagent/android/gpuimage/GLTextureView;->onPause()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onResume()V
    .locals 2

    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageView;->surfaceView:Landroid/view/View;

    instance-of v1, v0, Landroid/opengl/GLSurfaceView;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/opengl/GLSurfaceView;

    invoke-virtual {v0}, Landroid/opengl/GLSurfaceView;->onResume()V

    goto :goto_0

    :cond_0
    instance-of v1, v0, Ljp/co/cyberagent/android/gpuimage/GLTextureView;

    if-eqz v1, :cond_1

    check-cast v0, Ljp/co/cyberagent/android/gpuimage/GLTextureView;

    invoke-virtual {v0}, Ljp/co/cyberagent/android/gpuimage/GLTextureView;->onResume()V

    :cond_1
    :goto_0
    return-void
.end method

.method public requestRender()V
    .locals 2

    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageView;->surfaceView:Landroid/view/View;

    instance-of v1, v0, Landroid/opengl/GLSurfaceView;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/opengl/GLSurfaceView;

    invoke-virtual {v0}, Landroid/opengl/GLSurfaceView;->requestRender()V

    goto :goto_0

    :cond_0
    instance-of v1, v0, Ljp/co/cyberagent/android/gpuimage/GLTextureView;

    if-eqz v1, :cond_1

    check-cast v0, Ljp/co/cyberagent/android/gpuimage/GLTextureView;

    invoke-virtual {v0}, Ljp/co/cyberagent/android/gpuimage/GLTextureView;->requestRender()V

    :cond_1
    :goto_0
    return-void
.end method

.method public saveToPictures(Ljava/lang/String;Ljava/lang/String;IILjp/co/cyberagent/android/gpuimage/GPUImageView$OnPictureSavedListener;)V
    .locals 8

    new-instance v7, Ljp/co/cyberagent/android/gpuimage/GPUImageView$SaveTask;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Ljp/co/cyberagent/android/gpuimage/GPUImageView$SaveTask;-><init>(Ljp/co/cyberagent/android/gpuimage/GPUImageView;Ljava/lang/String;Ljava/lang/String;IILjp/co/cyberagent/android/gpuimage/GPUImageView$OnPictureSavedListener;)V

    sget-object p1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/Void;

    invoke-virtual {v7, p1, p2}, Ljp/co/cyberagent/android/gpuimage/GPUImageView$SaveTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public saveToPictures(Ljava/lang/String;Ljava/lang/String;Ljp/co/cyberagent/android/gpuimage/GPUImageView$OnPictureSavedListener;)V
    .locals 1

    new-instance v0, Ljp/co/cyberagent/android/gpuimage/GPUImageView$SaveTask;

    invoke-direct {v0, p0, p1, p2, p3}, Ljp/co/cyberagent/android/gpuimage/GPUImageView$SaveTask;-><init>(Ljp/co/cyberagent/android/gpuimage/GPUImageView;Ljava/lang/String;Ljava/lang/String;Ljp/co/cyberagent/android/gpuimage/GPUImageView$OnPictureSavedListener;)V

    sget-object p1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/Void;

    invoke-virtual {v0, p1, p2}, Ljp/co/cyberagent/android/gpuimage/GPUImageView$SaveTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public setBackgroundColor(FFF)V
    .locals 1

    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageView;->gpuImage:Ljp/co/cyberagent/android/gpuimage/GPUImage;

    invoke-virtual {v0, p1, p2, p3}, Ljp/co/cyberagent/android/gpuimage/GPUImage;->setBackgroundColor(FFF)V

    return-void
.end method

.method public setFilter(Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilter;)V
    .locals 1

    iput-object p1, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageView;->filter:Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilter;

    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageView;->gpuImage:Ljp/co/cyberagent/android/gpuimage/GPUImage;

    invoke-virtual {v0, p1}, Ljp/co/cyberagent/android/gpuimage/GPUImage;->setFilter(Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilter;)V

    invoke-virtual {p0}, Ljp/co/cyberagent/android/gpuimage/GPUImageView;->requestRender()V

    return-void
.end method

.method public setImage(Landroid/graphics/Bitmap;)V
    .locals 1

    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageView;->gpuImage:Ljp/co/cyberagent/android/gpuimage/GPUImage;

    invoke-virtual {v0, p1}, Ljp/co/cyberagent/android/gpuimage/GPUImage;->setImage(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public setImage(Landroid/net/Uri;)V
    .locals 1

    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageView;->gpuImage:Ljp/co/cyberagent/android/gpuimage/GPUImage;

    invoke-virtual {v0, p1}, Ljp/co/cyberagent/android/gpuimage/GPUImage;->setImage(Landroid/net/Uri;)V

    return-void
.end method

.method public setImage(Ljava/io/File;)V
    .locals 1

    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageView;->gpuImage:Ljp/co/cyberagent/android/gpuimage/GPUImage;

    invoke-virtual {v0, p1}, Ljp/co/cyberagent/android/gpuimage/GPUImage;->setImage(Ljava/io/File;)V

    return-void
.end method

.method public setRatio(F)V
    .locals 0

    iput p1, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageView;->ratio:F

    iget-object p1, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageView;->surfaceView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    iget-object p1, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageView;->gpuImage:Ljp/co/cyberagent/android/gpuimage/GPUImage;

    invoke-virtual {p1}, Ljp/co/cyberagent/android/gpuimage/GPUImage;->deleteImage()V

    return-void
.end method

.method public setRenderMode(I)V
    .locals 2

    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageView;->surfaceView:Landroid/view/View;

    instance-of v1, v0, Landroid/opengl/GLSurfaceView;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/opengl/GLSurfaceView;

    invoke-virtual {v0, p1}, Landroid/opengl/GLSurfaceView;->setRenderMode(I)V

    goto :goto_0

    :cond_0
    instance-of v1, v0, Ljp/co/cyberagent/android/gpuimage/GLTextureView;

    if-eqz v1, :cond_1

    check-cast v0, Ljp/co/cyberagent/android/gpuimage/GLTextureView;

    invoke-virtual {v0, p1}, Ljp/co/cyberagent/android/gpuimage/GLTextureView;->setRenderMode(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setRotation(Ljp/co/cyberagent/android/gpuimage/util/Rotation;)V
    .locals 1

    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageView;->gpuImage:Ljp/co/cyberagent/android/gpuimage/GPUImage;

    invoke-virtual {v0, p1}, Ljp/co/cyberagent/android/gpuimage/GPUImage;->setRotation(Ljp/co/cyberagent/android/gpuimage/util/Rotation;)V

    invoke-virtual {p0}, Ljp/co/cyberagent/android/gpuimage/GPUImageView;->requestRender()V

    return-void
.end method

.method public setScaleType(Ljp/co/cyberagent/android/gpuimage/GPUImage$ScaleType;)V
    .locals 1

    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageView;->gpuImage:Ljp/co/cyberagent/android/gpuimage/GPUImage;

    invoke-virtual {v0, p1}, Ljp/co/cyberagent/android/gpuimage/GPUImage;->setScaleType(Ljp/co/cyberagent/android/gpuimage/GPUImage$ScaleType;)V

    return-void
.end method

.method public setUpCamera(Landroid/hardware/Camera;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageView;->gpuImage:Ljp/co/cyberagent/android/gpuimage/GPUImage;

    invoke-virtual {v0, p1}, Ljp/co/cyberagent/android/gpuimage/GPUImage;->setUpCamera(Landroid/hardware/Camera;)V

    return-void
.end method

.method public setUpCamera(Landroid/hardware/Camera;IZZ)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageView;->gpuImage:Ljp/co/cyberagent/android/gpuimage/GPUImage;

    invoke-virtual {v0, p1, p2, p3, p4}, Ljp/co/cyberagent/android/gpuimage/GPUImage;->setUpCamera(Landroid/hardware/Camera;IZZ)V

    return-void
.end method

.method public updatePreviewFrame([BII)V
    .locals 1

    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageView;->gpuImage:Ljp/co/cyberagent/android/gpuimage/GPUImage;

    invoke-virtual {v0, p1, p2, p3}, Ljp/co/cyberagent/android/gpuimage/GPUImage;->updatePreviewFrame([BII)V

    return-void
.end method
