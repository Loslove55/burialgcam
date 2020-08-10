.class public Ljp/co/cyberagent/android/gpuimage/GPUImage;
.super Ljava/lang/Object;
.source "GPUImage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljp/co/cyberagent/android/gpuimage/GPUImage$ResponseListener;,
        Ljp/co/cyberagent/android/gpuimage/GPUImage$LoadImageTask;,
        Ljp/co/cyberagent/android/gpuimage/GPUImage$LoadImageFileTask;,
        Ljp/co/cyberagent/android/gpuimage/GPUImage$LoadImageUriTask;,
        Ljp/co/cyberagent/android/gpuimage/GPUImage$OnPictureSavedListener;,
        Ljp/co/cyberagent/android/gpuimage/GPUImage$SaveTask;,
        Ljp/co/cyberagent/android/gpuimage/GPUImage$ScaleType;
    }
.end annotation


# static fields
.field static final SURFACE_TYPE_SURFACE_VIEW:I = 0x0

.field static final SURFACE_TYPE_TEXTURE_VIEW:I = 0x1


# instance fields
.field private final context:Landroid/content/Context;

.field private currentBitmap:Landroid/graphics/Bitmap;

.field private filter:Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilter;

.field private glSurfaceView:Landroid/opengl/GLSurfaceView;

.field private glTextureView:Ljp/co/cyberagent/android/gpuimage/GLTextureView;

.field private final renderer:Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;

.field private scaleHeight:I

.field private scaleType:Ljp/co/cyberagent/android/gpuimage/GPUImage$ScaleType;

.field private scaleWidth:I

.field private surfaceType:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Ljp/co/cyberagent/android/gpuimage/GPUImage;->surfaceType:I

    sget-object v0, Ljp/co/cyberagent/android/gpuimage/GPUImage$ScaleType;->CENTER_CROP:Ljp/co/cyberagent/android/gpuimage/GPUImage$ScaleType;

    iput-object v0, p0, Ljp/co/cyberagent/android/gpuimage/GPUImage;->scaleType:Ljp/co/cyberagent/android/gpuimage/GPUImage$ScaleType;

    invoke-direct {p0, p1}, Ljp/co/cyberagent/android/gpuimage/GPUImage;->supportsOpenGLES2(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p1, p0, Ljp/co/cyberagent/android/gpuimage/GPUImage;->context:Landroid/content/Context;

    new-instance p1, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilter;

    invoke-direct {p1}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilter;-><init>()V

    iput-object p1, p0, Ljp/co/cyberagent/android/gpuimage/GPUImage;->filter:Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilter;

    new-instance p1, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;

    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/GPUImage;->filter:Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilter;

    invoke-direct {p1, v0}, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;-><init>(Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilter;)V

    iput-object p1, p0, Ljp/co/cyberagent/android/gpuimage/GPUImage;->renderer:Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "OpenGL ES 2.0 is not supported on this phone."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static synthetic access$000(Ljp/co/cyberagent/android/gpuimage/GPUImage;)Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilter;
    .locals 0

    iget-object p0, p0, Ljp/co/cyberagent/android/gpuimage/GPUImage;->filter:Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilter;

    return-object p0
.end method

.method static synthetic access$100(Ljp/co/cyberagent/android/gpuimage/GPUImage;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Ljp/co/cyberagent/android/gpuimage/GPUImage;->context:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$400(Ljp/co/cyberagent/android/gpuimage/GPUImage;)Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;
    .locals 0

    iget-object p0, p0, Ljp/co/cyberagent/android/gpuimage/GPUImage;->renderer:Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;

    return-object p0
.end method

.method static synthetic access$500(Ljp/co/cyberagent/android/gpuimage/GPUImage;)I
    .locals 0

    invoke-direct {p0}, Ljp/co/cyberagent/android/gpuimage/GPUImage;->getOutputWidth()I

    move-result p0

    return p0
.end method

.method static synthetic access$600(Ljp/co/cyberagent/android/gpuimage/GPUImage;)I
    .locals 0

    invoke-direct {p0}, Ljp/co/cyberagent/android/gpuimage/GPUImage;->getOutputHeight()I

    move-result p0

    return p0
.end method

.method static synthetic access$700(Ljp/co/cyberagent/android/gpuimage/GPUImage;)Ljp/co/cyberagent/android/gpuimage/GPUImage$ScaleType;
    .locals 0

    iget-object p0, p0, Ljp/co/cyberagent/android/gpuimage/GPUImage;->scaleType:Ljp/co/cyberagent/android/gpuimage/GPUImage$ScaleType;

    return-object p0
.end method

.method static synthetic access$802(Ljp/co/cyberagent/android/gpuimage/GPUImage;I)I
    .locals 0

    iput p1, p0, Ljp/co/cyberagent/android/gpuimage/GPUImage;->scaleWidth:I

    return p1
.end method

.method static synthetic access$902(Ljp/co/cyberagent/android/gpuimage/GPUImage;I)I
    .locals 0

    iput p1, p0, Ljp/co/cyberagent/android/gpuimage/GPUImage;->scaleHeight:I

    return p1
.end method

.method public static getBitmapForMultipleFilters(Landroid/graphics/Bitmap;Ljava/util/List;Ljp/co/cyberagent/android/gpuimage/GPUImage$ResponseListener;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap;",
            "Ljava/util/List<",
            "Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilter;",
            ">;",
            "Ljp/co/cyberagent/android/gpuimage/GPUImage$ResponseListener<",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;

    const/4 v1, 0x0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilter;

    invoke-direct {v0, v2}, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;-><init>(Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilter;)V

    invoke-virtual {v0, p0, v1}, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;->setImageBitmap(Landroid/graphics/Bitmap;Z)V

    new-instance v1, Ljp/co/cyberagent/android/gpuimage/PixelBuffer;

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p0

    invoke-direct {v1, v2, p0}, Ljp/co/cyberagent/android/gpuimage/PixelBuffer;-><init>(II)V

    invoke-virtual {v1, v0}, Ljp/co/cyberagent/android/gpuimage/PixelBuffer;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilter;

    invoke-virtual {v0, p1}, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;->setFilter(Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilter;)V

    invoke-virtual {v1}, Ljp/co/cyberagent/android/gpuimage/PixelBuffer;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-interface {p2, v2}, Ljp/co/cyberagent/android/gpuimage/GPUImage$ResponseListener;->response(Ljava/lang/Object;)V

    invoke-virtual {p1}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilter;->destroy()V

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;->deleteImage()V

    invoke-virtual {v1}, Ljp/co/cyberagent/android/gpuimage/PixelBuffer;->destroy()V

    return-void
.end method

.method private getOutputHeight()I
    .locals 2

    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/GPUImage;->renderer:Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;->getFrameHeight()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/GPUImage;->renderer:Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;

    invoke-virtual {v0}, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;->getFrameHeight()I

    move-result v0

    return v0

    :cond_0
    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/GPUImage;->currentBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    return v0

    :cond_1
    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/GPUImage;->context:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v0

    return v0
.end method

.method private getOutputWidth()I
    .locals 2

    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/GPUImage;->renderer:Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;->getFrameWidth()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/GPUImage;->renderer:Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;

    invoke-virtual {v0}, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;->getFrameWidth()I

    move-result v0

    return v0

    :cond_0
    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/GPUImage;->currentBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    return v0

    :cond_1
    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/GPUImage;->context:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v0

    return v0
.end method

.method private getPath(Landroid/net/Uri;)Ljava/lang/String;
    .locals 7

    const-string v0, "_data"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v3

    iget-object v1, p0, Ljp/co/cyberagent/android/gpuimage/GPUImage;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    const/4 v1, 0x0

    if-nez p1, :cond_0

    return-object v1

    :cond_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    :cond_1
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    return-object v1
.end method

.method private supportsOpenGLES2(Landroid/content/Context;)Z
    .locals 1

    const-string v0, "activity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/ActivityManager;

    invoke-virtual {p1}, Landroid/app/ActivityManager;->getDeviceConfigurationInfo()Landroid/content/pm/ConfigurationInfo;

    move-result-object p1

    iget p1, p1, Landroid/content/pm/ConfigurationInfo;->reqGlEsVersion:I

    const/high16 v0, 0x20000

    if-lt p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method


# virtual methods
.method public deleteImage()V
    .locals 1

    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/GPUImage;->renderer:Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;

    invoke-virtual {v0}, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;->deleteImage()V

    const/4 v0, 0x0

    iput-object v0, p0, Ljp/co/cyberagent/android/gpuimage/GPUImage;->currentBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Ljp/co/cyberagent/android/gpuimage/GPUImage;->requestRender()V

    return-void
.end method

.method public getBitmapWithFilterApplied()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/GPUImage;->currentBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p0, v0}, Ljp/co/cyberagent/android/gpuimage/GPUImage;->getBitmapWithFilterApplied(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getBitmapWithFilterApplied(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Ljp/co/cyberagent/android/gpuimage/GPUImage;->getBitmapWithFilterApplied(Landroid/graphics/Bitmap;Z)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method public getBitmapWithFilterApplied(Landroid/graphics/Bitmap;Z)Landroid/graphics/Bitmap;
    .locals 4

    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/GPUImage;->glSurfaceView:Landroid/opengl/GLSurfaceView;

    if-nez v0, :cond_0

    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/GPUImage;->glTextureView:Ljp/co/cyberagent/android/gpuimage/GLTextureView;

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/GPUImage;->renderer:Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;

    invoke-virtual {v0}, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;->deleteImage()V

    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/GPUImage;->renderer:Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;

    new-instance v1, Ljp/co/cyberagent/android/gpuimage/GPUImage$1;

    invoke-direct {v1, p0}, Ljp/co/cyberagent/android/gpuimage/GPUImage$1;-><init>(Ljp/co/cyberagent/android/gpuimage/GPUImage;)V

    invoke-virtual {v0, v1}, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;->runOnDraw(Ljava/lang/Runnable;)V

    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/GPUImage;->filter:Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilter;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Ljp/co/cyberagent/android/gpuimage/GPUImage;->requestRender()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v1, p0, Ljp/co/cyberagent/android/gpuimage/GPUImage;->filter:Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilter;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_2
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    :goto_0
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_1
    new-instance v0, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;

    iget-object v1, p0, Ljp/co/cyberagent/android/gpuimage/GPUImage;->filter:Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilter;

    invoke-direct {v0, v1}, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;-><init>(Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilter;)V

    sget-object v1, Ljp/co/cyberagent/android/gpuimage/util/Rotation;->NORMAL:Ljp/co/cyberagent/android/gpuimage/util/Rotation;

    iget-object v2, p0, Ljp/co/cyberagent/android/gpuimage/GPUImage;->renderer:Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;

    invoke-virtual {v2}, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;->isFlippedHorizontally()Z

    move-result v2

    iget-object v3, p0, Ljp/co/cyberagent/android/gpuimage/GPUImage;->renderer:Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;

    invoke-virtual {v3}, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;->isFlippedVertically()Z

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;->setRotation(Ljp/co/cyberagent/android/gpuimage/util/Rotation;ZZ)V

    iget-object v1, p0, Ljp/co/cyberagent/android/gpuimage/GPUImage;->scaleType:Ljp/co/cyberagent/android/gpuimage/GPUImage$ScaleType;

    invoke-virtual {v0, v1}, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;->setScaleType(Ljp/co/cyberagent/android/gpuimage/GPUImage$ScaleType;)V

    new-instance v1, Ljp/co/cyberagent/android/gpuimage/PixelBuffer;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-direct {v1, v2, v3}, Ljp/co/cyberagent/android/gpuimage/PixelBuffer;-><init>(II)V

    invoke-virtual {v1, v0}, Ljp/co/cyberagent/android/gpuimage/PixelBuffer;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    invoke-virtual {v0, p1, p2}, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;->setImageBitmap(Landroid/graphics/Bitmap;Z)V

    invoke-virtual {v1}, Ljp/co/cyberagent/android/gpuimage/PixelBuffer;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    iget-object p2, p0, Ljp/co/cyberagent/android/gpuimage/GPUImage;->filter:Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilter;

    invoke-virtual {p2}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilter;->destroy()V

    invoke-virtual {v0}, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;->deleteImage()V

    invoke-virtual {v1}, Ljp/co/cyberagent/android/gpuimage/PixelBuffer;->destroy()V

    iget-object p2, p0, Ljp/co/cyberagent/android/gpuimage/GPUImage;->renderer:Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;

    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/GPUImage;->filter:Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilter;

    invoke-virtual {p2, v0}, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;->setFilter(Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilter;)V

    iget-object p2, p0, Ljp/co/cyberagent/android/gpuimage/GPUImage;->currentBitmap:Landroid/graphics/Bitmap;

    if-eqz p2, :cond_2

    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/GPUImage;->renderer:Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;

    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;->setImageBitmap(Landroid/graphics/Bitmap;Z)V

    :cond_2
    invoke-virtual {p0}, Ljp/co/cyberagent/android/gpuimage/GPUImage;->requestRender()V

    return-object p1

    :catchall_0
    move-exception p1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1
.end method

.method public getScaleSize()[I
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [I

    iget v1, p0, Ljp/co/cyberagent/android/gpuimage/GPUImage;->scaleWidth:I

    const/4 v2, 0x0

    aput v1, v0, v2

    iget v1, p0, Ljp/co/cyberagent/android/gpuimage/GPUImage;->scaleHeight:I

    const/4 v2, 0x1

    aput v1, v0, v2

    return-object v0
.end method

.method public requestRender()V
    .locals 2

    iget v0, p0, Ljp/co/cyberagent/android/gpuimage/GPUImage;->surfaceType:I

    if-nez v0, :cond_0

    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/GPUImage;->glSurfaceView:Landroid/opengl/GLSurfaceView;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/opengl/GLSurfaceView;->requestRender()V

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/GPUImage;->glTextureView:Ljp/co/cyberagent/android/gpuimage/GLTextureView;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljp/co/cyberagent/android/gpuimage/GLTextureView;->requestRender()V

    :cond_1
    :goto_0
    return-void
.end method

.method runOnGLThread(Ljava/lang/Runnable;)V
    .locals 1

    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/GPUImage;->renderer:Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;

    invoke-virtual {v0, p1}, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;->runOnDrawEnd(Ljava/lang/Runnable;)V

    return-void
.end method

.method public saveToPictures(Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Ljp/co/cyberagent/android/gpuimage/GPUImage$OnPictureSavedListener;)V
    .locals 7

    new-instance v6, Ljp/co/cyberagent/android/gpuimage/GPUImage$SaveTask;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Ljp/co/cyberagent/android/gpuimage/GPUImage$SaveTask;-><init>(Ljp/co/cyberagent/android/gpuimage/GPUImage;Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Ljp/co/cyberagent/android/gpuimage/GPUImage$OnPictureSavedListener;)V

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Void;

    invoke-virtual {v6, p1}, Ljp/co/cyberagent/android/gpuimage/GPUImage$SaveTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public saveToPictures(Ljava/lang/String;Ljava/lang/String;Ljp/co/cyberagent/android/gpuimage/GPUImage$OnPictureSavedListener;)V
    .locals 1

    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/GPUImage;->currentBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p0, v0, p1, p2, p3}, Ljp/co/cyberagent/android/gpuimage/GPUImage;->saveToPictures(Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Ljp/co/cyberagent/android/gpuimage/GPUImage$OnPictureSavedListener;)V

    return-void
.end method

.method public setBackgroundColor(FFF)V
    .locals 1

    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/GPUImage;->renderer:Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;

    invoke-virtual {v0, p1, p2, p3}, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;->setBackgroundColor(FFF)V

    return-void
.end method

.method public setFilter(Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilter;)V
    .locals 1

    iput-object p1, p0, Ljp/co/cyberagent/android/gpuimage/GPUImage;->filter:Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilter;

    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/GPUImage;->renderer:Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;

    invoke-virtual {v0, p1}, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;->setFilter(Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilter;)V

    invoke-virtual {p0}, Ljp/co/cyberagent/android/gpuimage/GPUImage;->requestRender()V

    return-void
.end method

.method public setGLSurfaceView(Landroid/opengl/GLSurfaceView;)V
    .locals 9

    const/4 v0, 0x0

    iput v0, p0, Ljp/co/cyberagent/android/gpuimage/GPUImage;->surfaceType:I

    iput-object p1, p0, Ljp/co/cyberagent/android/gpuimage/GPUImage;->glSurfaceView:Landroid/opengl/GLSurfaceView;

    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Landroid/opengl/GLSurfaceView;->setEGLContextClientVersion(I)V

    iget-object v2, p0, Ljp/co/cyberagent/android/gpuimage/GPUImage;->glSurfaceView:Landroid/opengl/GLSurfaceView;

    const/16 v3, 0x8

    const/16 v4, 0x8

    const/16 v5, 0x8

    const/16 v6, 0x8

    const/16 v7, 0x10

    const/4 v8, 0x0

    invoke-virtual/range {v2 .. v8}, Landroid/opengl/GLSurfaceView;->setEGLConfigChooser(IIIIII)V

    iget-object p1, p0, Ljp/co/cyberagent/android/gpuimage/GPUImage;->glSurfaceView:Landroid/opengl/GLSurfaceView;

    invoke-virtual {p1}, Landroid/opengl/GLSurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object p1

    const/4 v1, 0x1

    invoke-interface {p1, v1}, Landroid/view/SurfaceHolder;->setFormat(I)V

    iget-object p1, p0, Ljp/co/cyberagent/android/gpuimage/GPUImage;->glSurfaceView:Landroid/opengl/GLSurfaceView;

    iget-object v1, p0, Ljp/co/cyberagent/android/gpuimage/GPUImage;->renderer:Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;

    invoke-virtual {p1, v1}, Landroid/opengl/GLSurfaceView;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    iget-object p1, p0, Ljp/co/cyberagent/android/gpuimage/GPUImage;->glSurfaceView:Landroid/opengl/GLSurfaceView;

    invoke-virtual {p1, v0}, Landroid/opengl/GLSurfaceView;->setRenderMode(I)V

    iget-object p1, p0, Ljp/co/cyberagent/android/gpuimage/GPUImage;->glSurfaceView:Landroid/opengl/GLSurfaceView;

    invoke-virtual {p1}, Landroid/opengl/GLSurfaceView;->requestRender()V

    return-void
.end method

.method public setGLTextureView(Ljp/co/cyberagent/android/gpuimage/GLTextureView;)V
    .locals 8

    const/4 v0, 0x1

    iput v0, p0, Ljp/co/cyberagent/android/gpuimage/GPUImage;->surfaceType:I

    iput-object p1, p0, Ljp/co/cyberagent/android/gpuimage/GPUImage;->glTextureView:Ljp/co/cyberagent/android/gpuimage/GLTextureView;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Ljp/co/cyberagent/android/gpuimage/GLTextureView;->setEGLContextClientVersion(I)V

    iget-object v1, p0, Ljp/co/cyberagent/android/gpuimage/GPUImage;->glTextureView:Ljp/co/cyberagent/android/gpuimage/GLTextureView;

    const/16 v2, 0x8

    const/16 v3, 0x8

    const/16 v4, 0x8

    const/16 v5, 0x8

    const/16 v6, 0x10

    const/4 v7, 0x0

    invoke-virtual/range {v1 .. v7}, Ljp/co/cyberagent/android/gpuimage/GLTextureView;->setEGLConfigChooser(IIIIII)V

    iget-object p1, p0, Ljp/co/cyberagent/android/gpuimage/GPUImage;->glTextureView:Ljp/co/cyberagent/android/gpuimage/GLTextureView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljp/co/cyberagent/android/gpuimage/GLTextureView;->setOpaque(Z)V

    iget-object p1, p0, Ljp/co/cyberagent/android/gpuimage/GPUImage;->glTextureView:Ljp/co/cyberagent/android/gpuimage/GLTextureView;

    iget-object v1, p0, Ljp/co/cyberagent/android/gpuimage/GPUImage;->renderer:Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;

    invoke-virtual {p1, v1}, Ljp/co/cyberagent/android/gpuimage/GLTextureView;->setRenderer(Ljp/co/cyberagent/android/gpuimage/GLTextureView$Renderer;)V

    iget-object p1, p0, Ljp/co/cyberagent/android/gpuimage/GPUImage;->glTextureView:Ljp/co/cyberagent/android/gpuimage/GLTextureView;

    invoke-virtual {p1, v0}, Ljp/co/cyberagent/android/gpuimage/GLTextureView;->setRenderMode(I)V

    iget-object p1, p0, Ljp/co/cyberagent/android/gpuimage/GPUImage;->glTextureView:Ljp/co/cyberagent/android/gpuimage/GLTextureView;

    invoke-virtual {p1}, Ljp/co/cyberagent/android/gpuimage/GLTextureView;->requestRender()V

    return-void
.end method

.method public setImage(Landroid/graphics/Bitmap;)V
    .locals 2

    iput-object p1, p0, Ljp/co/cyberagent/android/gpuimage/GPUImage;->currentBitmap:Landroid/graphics/Bitmap;

    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/GPUImage;->renderer:Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;->setImageBitmap(Landroid/graphics/Bitmap;Z)V

    invoke-virtual {p0}, Ljp/co/cyberagent/android/gpuimage/GPUImage;->requestRender()V

    return-void
.end method

.method public setImage(Landroid/net/Uri;)V
    .locals 1

    new-instance v0, Ljp/co/cyberagent/android/gpuimage/GPUImage$LoadImageUriTask;

    invoke-direct {v0, p0, p0, p1}, Ljp/co/cyberagent/android/gpuimage/GPUImage$LoadImageUriTask;-><init>(Ljp/co/cyberagent/android/gpuimage/GPUImage;Ljp/co/cyberagent/android/gpuimage/GPUImage;Landroid/net/Uri;)V

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Void;

    invoke-virtual {v0, p1}, Ljp/co/cyberagent/android/gpuimage/GPUImage$LoadImageUriTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public setImage(Ljava/io/File;)V
    .locals 1

    new-instance v0, Ljp/co/cyberagent/android/gpuimage/GPUImage$LoadImageFileTask;

    invoke-direct {v0, p0, p0, p1}, Ljp/co/cyberagent/android/gpuimage/GPUImage$LoadImageFileTask;-><init>(Ljp/co/cyberagent/android/gpuimage/GPUImage;Ljp/co/cyberagent/android/gpuimage/GPUImage;Ljava/io/File;)V

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Void;

    invoke-virtual {v0, p1}, Ljp/co/cyberagent/android/gpuimage/GPUImage$LoadImageFileTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public setRotation(Ljp/co/cyberagent/android/gpuimage/util/Rotation;)V
    .locals 1

    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/GPUImage;->renderer:Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;

    invoke-virtual {v0, p1}, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;->setRotation(Ljp/co/cyberagent/android/gpuimage/util/Rotation;)V

    return-void
.end method

.method public setRotation(Ljp/co/cyberagent/android/gpuimage/util/Rotation;ZZ)V
    .locals 1

    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/GPUImage;->renderer:Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;

    invoke-virtual {v0, p1, p2, p3}, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;->setRotation(Ljp/co/cyberagent/android/gpuimage/util/Rotation;ZZ)V

    return-void
.end method

.method public setScaleType(Ljp/co/cyberagent/android/gpuimage/GPUImage$ScaleType;)V
    .locals 1

    iput-object p1, p0, Ljp/co/cyberagent/android/gpuimage/GPUImage;->scaleType:Ljp/co/cyberagent/android/gpuimage/GPUImage$ScaleType;

    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/GPUImage;->renderer:Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;

    invoke-virtual {v0, p1}, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;->setScaleType(Ljp/co/cyberagent/android/gpuimage/GPUImage$ScaleType;)V

    iget-object p1, p0, Ljp/co/cyberagent/android/gpuimage/GPUImage;->renderer:Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;

    invoke-virtual {p1}, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;->deleteImage()V

    const/4 p1, 0x0

    iput-object p1, p0, Ljp/co/cyberagent/android/gpuimage/GPUImage;->currentBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Ljp/co/cyberagent/android/gpuimage/GPUImage;->requestRender()V

    return-void
.end method

.method public setUpCamera(Landroid/hardware/Camera;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v0, v0}, Ljp/co/cyberagent/android/gpuimage/GPUImage;->setUpCamera(Landroid/hardware/Camera;IZZ)V

    return-void
.end method

.method public setUpCamera(Landroid/hardware/Camera;IZZ)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget v0, p0, Ljp/co/cyberagent/android/gpuimage/GPUImage;->surfaceType:I

    const/4 v1, 0x1

    if-nez v0, :cond_0

    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/GPUImage;->glSurfaceView:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v0, v1}, Landroid/opengl/GLSurfaceView;->setRenderMode(I)V

    goto :goto_0

    :cond_0
    if-ne v0, v1, :cond_1

    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/GPUImage;->glTextureView:Ljp/co/cyberagent/android/gpuimage/GLTextureView;

    invoke-virtual {v0, v1}, Ljp/co/cyberagent/android/gpuimage/GLTextureView;->setRenderMode(I)V

    :cond_1
    :goto_0
    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/GPUImage;->renderer:Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;

    invoke-virtual {v0, p1}, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;->setUpSurfaceTexture(Landroid/hardware/Camera;)V

    sget-object p1, Ljp/co/cyberagent/android/gpuimage/util/Rotation;->NORMAL:Ljp/co/cyberagent/android/gpuimage/util/Rotation;

    const/16 v0, 0x5a

    if-eq p2, v0, :cond_4

    const/16 v0, 0xb4

    if-eq p2, v0, :cond_3

    const/16 v0, 0x10e

    if-eq p2, v0, :cond_2

    goto :goto_1

    :cond_2
    sget-object p1, Ljp/co/cyberagent/android/gpuimage/util/Rotation;->ROTATION_270:Ljp/co/cyberagent/android/gpuimage/util/Rotation;

    goto :goto_1

    :cond_3
    sget-object p1, Ljp/co/cyberagent/android/gpuimage/util/Rotation;->ROTATION_180:Ljp/co/cyberagent/android/gpuimage/util/Rotation;

    goto :goto_1

    :cond_4
    sget-object p1, Ljp/co/cyberagent/android/gpuimage/util/Rotation;->ROTATION_90:Ljp/co/cyberagent/android/gpuimage/util/Rotation;

    :goto_1
    iget-object p2, p0, Ljp/co/cyberagent/android/gpuimage/GPUImage;->renderer:Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;

    invoke-virtual {p2, p1, p3, p4}, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;->setRotationCamera(Ljp/co/cyberagent/android/gpuimage/util/Rotation;ZZ)V

    return-void
.end method

.method public updatePreviewFrame([BII)V
    .locals 1

    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/GPUImage;->renderer:Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;

    invoke-virtual {v0, p1, p2, p3}, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;->onPreviewFrame([BII)V

    return-void
.end method
