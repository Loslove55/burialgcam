.class Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer$2;
.super Ljava/lang/Object;
.source "GPUImageRenderer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;->setUpSurfaceTexture(Landroid/hardware/Camera;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;

.field final synthetic val$camera:Landroid/hardware/Camera;


# direct methods
.method constructor <init>(Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;Landroid/hardware/Camera;)V
    .locals 0

    iput-object p1, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer$2;->this$0:Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;

    iput-object p2, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer$2;->val$camera:Landroid/hardware/Camera;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer$2;->this$0:Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;

    new-instance v3, Landroid/graphics/SurfaceTexture;

    aget v1, v1, v2

    invoke-direct {v3, v1}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    invoke-static {v0, v3}, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;->access$502(Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;Landroid/graphics/SurfaceTexture;)Landroid/graphics/SurfaceTexture;

    :try_start_0
    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer$2;->val$camera:Landroid/hardware/Camera;

    iget-object v1, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer$2;->this$0:Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;

    invoke-static {v1}, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;->access$500(Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;)Landroid/graphics/SurfaceTexture;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setPreviewTexture(Landroid/graphics/SurfaceTexture;)V

    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer$2;->val$camera:Landroid/hardware/Camera;

    iget-object v1, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer$2;->this$0:Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer$2;->val$camera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->startPreview()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :goto_0
    return-void
.end method
