.class Ljp/co/cyberagent/android/gpuimage/GPUImageView$SaveTask$1;
.super Ljava/lang/Object;
.source "GPUImageView.java"

# interfaces
.implements Landroid/media/MediaScannerConnection$OnScanCompletedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljp/co/cyberagent/android/gpuimage/GPUImageView$SaveTask;->saveImage(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Ljp/co/cyberagent/android/gpuimage/GPUImageView$SaveTask;


# direct methods
.method constructor <init>(Ljp/co/cyberagent/android/gpuimage/GPUImageView$SaveTask;)V
    .locals 0

    iput-object p1, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageView$SaveTask$1;->this$1:Ljp/co/cyberagent/android/gpuimage/GPUImageView$SaveTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScanCompleted(Ljava/lang/String;Landroid/net/Uri;)V
    .locals 1

    iget-object p1, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageView$SaveTask$1;->this$1:Ljp/co/cyberagent/android/gpuimage/GPUImageView$SaveTask;

    invoke-static {p1}, Ljp/co/cyberagent/android/gpuimage/GPUImageView$SaveTask;->access$200(Ljp/co/cyberagent/android/gpuimage/GPUImageView$SaveTask;)Ljp/co/cyberagent/android/gpuimage/GPUImageView$OnPictureSavedListener;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageView$SaveTask$1;->this$1:Ljp/co/cyberagent/android/gpuimage/GPUImageView$SaveTask;

    invoke-static {p1}, Ljp/co/cyberagent/android/gpuimage/GPUImageView$SaveTask;->access$300(Ljp/co/cyberagent/android/gpuimage/GPUImageView$SaveTask;)Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Ljp/co/cyberagent/android/gpuimage/GPUImageView$SaveTask$1$1;

    invoke-direct {v0, p0, p2}, Ljp/co/cyberagent/android/gpuimage/GPUImageView$SaveTask$1$1;-><init>(Ljp/co/cyberagent/android/gpuimage/GPUImageView$SaveTask$1;Landroid/net/Uri;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method
