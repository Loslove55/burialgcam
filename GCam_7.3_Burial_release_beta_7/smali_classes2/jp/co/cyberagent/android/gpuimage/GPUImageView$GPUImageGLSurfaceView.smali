.class Ljp/co/cyberagent/android/gpuimage/GPUImageView$GPUImageGLSurfaceView;
.super Landroid/opengl/GLSurfaceView;
.source "GPUImageView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljp/co/cyberagent/android/gpuimage/GPUImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GPUImageGLSurfaceView"
.end annotation


# instance fields
.field final synthetic this$0:Ljp/co/cyberagent/android/gpuimage/GPUImageView;


# direct methods
.method public constructor <init>(Ljp/co/cyberagent/android/gpuimage/GPUImageView;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageView$GPUImageGLSurfaceView;->this$0:Ljp/co/cyberagent/android/gpuimage/GPUImageView;

    invoke-direct {p0, p2}, Landroid/opengl/GLSurfaceView;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Ljp/co/cyberagent/android/gpuimage/GPUImageView;Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    iput-object p1, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageView$GPUImageGLSurfaceView;->this$0:Ljp/co/cyberagent/android/gpuimage/GPUImageView;

    invoke-direct {p0, p2, p3}, Landroid/opengl/GLSurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 1

    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageView$GPUImageGLSurfaceView;->this$0:Ljp/co/cyberagent/android/gpuimage/GPUImageView;

    iget-object v0, v0, Ljp/co/cyberagent/android/gpuimage/GPUImageView;->forceSize:Ljp/co/cyberagent/android/gpuimage/GPUImageView$Size;

    if-eqz v0, :cond_0

    iget-object p1, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageView$GPUImageGLSurfaceView;->this$0:Ljp/co/cyberagent/android/gpuimage/GPUImageView;

    iget-object p1, p1, Ljp/co/cyberagent/android/gpuimage/GPUImageView;->forceSize:Ljp/co/cyberagent/android/gpuimage/GPUImageView$Size;

    iget p1, p1, Ljp/co/cyberagent/android/gpuimage/GPUImageView$Size;->width:I

    const/high16 p2, 0x40000000    # 2.0f

    invoke-static {p1, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageView$GPUImageGLSurfaceView;->this$0:Ljp/co/cyberagent/android/gpuimage/GPUImageView;

    iget-object v0, v0, Ljp/co/cyberagent/android/gpuimage/GPUImageView;->forceSize:Ljp/co/cyberagent/android/gpuimage/GPUImageView$Size;

    iget v0, v0, Ljp/co/cyberagent/android/gpuimage/GPUImageView$Size;->height:I

    invoke-static {v0, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-super {p0, p1, p2}, Landroid/opengl/GLSurfaceView;->onMeasure(II)V

    goto :goto_0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/opengl/GLSurfaceView;->onMeasure(II)V

    :goto_0
    return-void
.end method
