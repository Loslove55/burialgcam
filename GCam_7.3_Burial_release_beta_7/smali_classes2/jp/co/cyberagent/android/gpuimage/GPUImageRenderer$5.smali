.class Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer$5;
.super Ljava/lang/Object;
.source "GPUImageRenderer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;->setImageBitmap(Landroid/graphics/Bitmap;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;

.field final synthetic val$bitmap:Landroid/graphics/Bitmap;

.field final synthetic val$recycle:Z


# direct methods
.method constructor <init>(Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;Landroid/graphics/Bitmap;Z)V
    .locals 0

    iput-object p1, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer$5;->this$0:Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;

    iput-object p2, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer$5;->val$bitmap:Landroid/graphics/Bitmap;

    iput-boolean p3, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer$5;->val$recycle:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer$5;->val$bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer$5;->val$bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    add-int/2addr v0, v2

    iget-object v4, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer$5;->val$bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v4, Landroid/graphics/Canvas;

    invoke-direct {v4, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v4, v3, v3, v3, v3}, Landroid/graphics/Canvas;->drawARGB(IIII)V

    iget-object v3, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer$5;->val$bitmap:Landroid/graphics/Bitmap;

    const/4 v5, 0x0

    invoke-virtual {v4, v3, v5, v5, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    iget-object v1, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer$5;->this$0:Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;

    invoke-static {v1, v2}, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;->access$902(Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;I)I

    move-object v1, v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer$5;->this$0:Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;

    invoke-static {v0, v3}, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;->access$902(Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;I)I

    :goto_0
    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer$5;->this$0:Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;

    if-eqz v1, :cond_1

    move-object v2, v1

    goto :goto_1

    :cond_1
    iget-object v2, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer$5;->val$bitmap:Landroid/graphics/Bitmap;

    :goto_1
    iget-object v3, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer$5;->this$0:Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;

    invoke-static {v3}, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;->access$100(Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;)I

    move-result v3

    iget-boolean v4, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer$5;->val$recycle:Z

    invoke-static {v2, v3, v4}, Ljp/co/cyberagent/android/gpuimage/util/OpenGlUtils;->loadTexture(Landroid/graphics/Bitmap;IZ)I

    move-result v2

    invoke-static {v0, v2}, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;->access$102(Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;I)I

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    :cond_2
    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer$5;->this$0:Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;

    iget-object v1, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer$5;->val$bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-static {v0, v1}, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;->access$202(Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;I)I

    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer$5;->this$0:Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;

    iget-object v1, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer$5;->val$bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-static {v0, v1}, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;->access$302(Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;I)I

    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer$5;->this$0:Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;

    invoke-static {v0}, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;->access$400(Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;)V

    return-void
.end method
