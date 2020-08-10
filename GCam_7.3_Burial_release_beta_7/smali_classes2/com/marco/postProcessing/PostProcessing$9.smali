.class Lcom/marco/postProcessing/PostProcessing$9;
.super Ljava/lang/Object;
.source "PostProcessing.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/marco/postProcessing/PostProcessing;->runSharpen2(I)Ljava/lang/Runnable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/marco/postProcessing/PostProcessing;

.field final synthetic val$x:I


# direct methods
.method constructor <init>(Lcom/marco/postProcessing/PostProcessing;I)V
    .locals 0

    iput-object p1, p0, Lcom/marco/postProcessing/PostProcessing$9;->this$0:Lcom/marco/postProcessing/PostProcessing;

    iput p2, p0, Lcom/marco/postProcessing/PostProcessing$9;->val$x:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget v0, p0, Lcom/marco/postProcessing/PostProcessing$9;->val$x:I

    int-to-float v0, v0

    const/high16 v1, 0x41200000    # 10.0f

    div-float/2addr v0, v1

    new-instance v1, Ljp/co/cyberagent/android/gpuimage/GPUImage;

    sget-object v2, Lcom/marco/FixMarco;->staticContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Ljp/co/cyberagent/android/gpuimage/GPUImage;-><init>(Landroid/content/Context;)V

    new-instance v2, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageSharpenFilter;

    invoke-direct {v2, v0}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageSharpenFilter;-><init>(F)V

    invoke-virtual {v1, v2}, Ljp/co/cyberagent/android/gpuimage/GPUImage;->setFilter(Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilter;)V

    iget-object v0, p0, Lcom/marco/postProcessing/PostProcessing$9;->this$0:Lcom/marco/postProcessing/PostProcessing;

    invoke-static {v0}, Lcom/marco/postProcessing/PostProcessing;->access$400(Lcom/marco/postProcessing/PostProcessing;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljp/co/cyberagent/android/gpuimage/GPUImage;->getBitmapWithFilterApplied(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/marco/postProcessing/PostProcessing;->access$402(Lcom/marco/postProcessing/PostProcessing;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/marco/postProcessing/PostProcessing$9;->this$0:Lcom/marco/postProcessing/PostProcessing;

    invoke-static {v0}, Lcom/marco/postProcessing/PostProcessing;->access$500(Lcom/marco/postProcessing/PostProcessing;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/marco/postProcessing/PostProcessing$9;->this$0:Lcom/marco/postProcessing/PostProcessing;

    const-string v1, "sharpen2"

    invoke-static {v0, v1}, Lcom/marco/postProcessing/PostProcessing;->access$600(Lcom/marco/postProcessing/PostProcessing;Ljava/lang/String;)Z

    :cond_0
    return-void
.end method
