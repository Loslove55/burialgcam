.class Lcom/marco/postProcessing/PostProcessing$4;
.super Ljava/lang/Object;
.source "PostProcessing.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/marco/postProcessing/PostProcessing;->runTonecurve()Ljava/lang/Runnable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/marco/postProcessing/PostProcessing;


# direct methods
.method constructor <init>(Lcom/marco/postProcessing/PostProcessing;)V
    .locals 0

    iput-object p1, p0, Lcom/marco/postProcessing/PostProcessing$4;->this$0:Lcom/marco/postProcessing/PostProcessing;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    new-instance v0, Ljp/co/cyberagent/android/gpuimage/GPUImage;

    sget-object v1, Lcom/marco/FixMarco;->staticContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Ljp/co/cyberagent/android/gpuimage/GPUImage;-><init>(Landroid/content/Context;)V

    new-instance v1, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageToneCurveFilter;

    invoke-direct {v1}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageToneCurveFilter;-><init>()V

    iget-object v2, p0, Lcom/marco/postProcessing/PostProcessing$4;->this$0:Lcom/marco/postProcessing/PostProcessing;

    const-string v3, "rgb"

    invoke-static {v2, v3}, Lcom/marco/postProcessing/PostProcessing;->access$700(Lcom/marco/postProcessing/PostProcessing;Ljava/lang/String;)[Landroid/graphics/PointF;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageToneCurveFilter;->setRgbCompositeControlPoints([Landroid/graphics/PointF;)V

    iget-object v2, p0, Lcom/marco/postProcessing/PostProcessing$4;->this$0:Lcom/marco/postProcessing/PostProcessing;

    const-string v3, "r"

    invoke-static {v2, v3}, Lcom/marco/postProcessing/PostProcessing;->access$700(Lcom/marco/postProcessing/PostProcessing;Ljava/lang/String;)[Landroid/graphics/PointF;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageToneCurveFilter;->setRedControlPoints([Landroid/graphics/PointF;)V

    iget-object v2, p0, Lcom/marco/postProcessing/PostProcessing$4;->this$0:Lcom/marco/postProcessing/PostProcessing;

    const-string v3, "g"

    invoke-static {v2, v3}, Lcom/marco/postProcessing/PostProcessing;->access$700(Lcom/marco/postProcessing/PostProcessing;Ljava/lang/String;)[Landroid/graphics/PointF;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageToneCurveFilter;->setGreenControlPoints([Landroid/graphics/PointF;)V

    iget-object v2, p0, Lcom/marco/postProcessing/PostProcessing$4;->this$0:Lcom/marco/postProcessing/PostProcessing;

    const-string v3, "b"

    invoke-static {v2, v3}, Lcom/marco/postProcessing/PostProcessing;->access$700(Lcom/marco/postProcessing/PostProcessing;Ljava/lang/String;)[Landroid/graphics/PointF;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageToneCurveFilter;->setBlueControlPoints([Landroid/graphics/PointF;)V

    invoke-virtual {v0, v1}, Ljp/co/cyberagent/android/gpuimage/GPUImage;->setFilter(Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilter;)V

    iget-object v1, p0, Lcom/marco/postProcessing/PostProcessing$4;->this$0:Lcom/marco/postProcessing/PostProcessing;

    invoke-static {v1}, Lcom/marco/postProcessing/PostProcessing;->access$400(Lcom/marco/postProcessing/PostProcessing;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljp/co/cyberagent/android/gpuimage/GPUImage;->getBitmapWithFilterApplied(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/marco/postProcessing/PostProcessing;->access$402(Lcom/marco/postProcessing/PostProcessing;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/marco/postProcessing/PostProcessing$4;->this$0:Lcom/marco/postProcessing/PostProcessing;

    invoke-static {v0}, Lcom/marco/postProcessing/PostProcessing;->access$500(Lcom/marco/postProcessing/PostProcessing;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/marco/postProcessing/PostProcessing$4;->this$0:Lcom/marco/postProcessing/PostProcessing;

    const-string v1, "tonecurve"

    invoke-static {v0, v1}, Lcom/marco/postProcessing/PostProcessing;->access$600(Lcom/marco/postProcessing/PostProcessing;Ljava/lang/String;)Z

    :cond_0
    return-void
.end method
