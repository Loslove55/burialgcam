.class Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilter$9;
.super Ljava/lang/Object;
.source "GPUImageFilter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilter;->setUniformMatrix4f(I[F)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilter;

.field final synthetic val$location:I

.field final synthetic val$matrix:[F


# direct methods
.method constructor <init>(Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilter;I[F)V
    .locals 0

    iput-object p1, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilter$9;->this$0:Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilter;

    iput p2, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilter$9;->val$location:I

    iput-object p3, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilter$9;->val$matrix:[F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilter$9;->this$0:Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilter;

    invoke-virtual {v0}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilter;->ifNeedInit()V

    iget v0, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilter$9;->val$location:I

    iget-object v1, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilter$9;->val$matrix:[F

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v0, v3, v2, v1, v2}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    return-void
.end method
