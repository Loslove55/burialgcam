.class Lcom/marco/postProcessing/PostProcessing$3;
.super Ljava/lang/Object;
.source "PostProcessing.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/marco/postProcessing/PostProcessing;->runVignette(I)Ljava/lang/Runnable;
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

    iput-object p1, p0, Lcom/marco/postProcessing/PostProcessing$3;->this$0:Lcom/marco/postProcessing/PostProcessing;

    iput p2, p0, Lcom/marco/postProcessing/PostProcessing$3;->val$x:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 15

    iget v0, p0, Lcom/marco/postProcessing/PostProcessing$3;->val$x:I

    const/4 v1, 0x1

    if-nez v0, :cond_0

    move v0, v1

    :cond_0
    iget-object v2, p0, Lcom/marco/postProcessing/PostProcessing$3;->this$0:Lcom/marco/postProcessing/PostProcessing;

    invoke-static {v2}, Lcom/marco/postProcessing/PostProcessing;->access$400(Lcom/marco/postProcessing/PostProcessing;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/marco/postProcessing/PostProcessing$3;->this$0:Lcom/marco/postProcessing/PostProcessing;

    invoke-static {v3}, Lcom/marco/postProcessing/PostProcessing;->access$400(Lcom/marco/postProcessing/PostProcessing;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iget-object v4, p0, Lcom/marco/postProcessing/PostProcessing$3;->this$0:Lcom/marco/postProcessing/PostProcessing;

    invoke-static {v4}, Lcom/marco/postProcessing/PostProcessing;->access$400(Lcom/marco/postProcessing/PostProcessing;)Landroid/graphics/Bitmap;

    move-result-object v4

    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v6, v6, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    iget-object v4, p0, Lcom/marco/postProcessing/PostProcessing$3;->this$0:Lcom/marco/postProcessing/PostProcessing;

    invoke-static {v4}, Lcom/marco/postProcessing/PostProcessing;->access$400(Lcom/marco/postProcessing/PostProcessing;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    iget-object v5, p0, Lcom/marco/postProcessing/PostProcessing$3;->this$0:Lcom/marco/postProcessing/PostProcessing;

    invoke-static {v5}, Lcom/marco/postProcessing/PostProcessing;->access$400(Lcom/marco/postProcessing/PostProcessing;)Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    const/16 v6, 0x64

    const/4 v7, 0x3

    if-ge v4, v5, :cond_1

    iget-object v4, p0, Lcom/marco/postProcessing/PostProcessing$3;->this$0:Lcom/marco/postProcessing/PostProcessing;

    invoke-static {v4}, Lcom/marco/postProcessing/PostProcessing;->access$400(Lcom/marco/postProcessing/PostProcessing;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    mul-int/lit8 v4, v4, 0x2

    div-int/2addr v4, v6

    iget-object v5, p0, Lcom/marco/postProcessing/PostProcessing$3;->this$0:Lcom/marco/postProcessing/PostProcessing;

    invoke-static {v5}, Lcom/marco/postProcessing/PostProcessing;->access$400(Lcom/marco/postProcessing/PostProcessing;)Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    mul-int/2addr v4, v0

    div-int/2addr v4, v7

    goto :goto_0

    :cond_1
    iget-object v4, p0, Lcom/marco/postProcessing/PostProcessing$3;->this$0:Lcom/marco/postProcessing/PostProcessing;

    invoke-static {v4}, Lcom/marco/postProcessing/PostProcessing;->access$400(Lcom/marco/postProcessing/PostProcessing;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    mul-int/lit8 v4, v4, 0x2

    div-int/2addr v4, v6

    iget-object v5, p0, Lcom/marco/postProcessing/PostProcessing$3;->this$0:Lcom/marco/postProcessing/PostProcessing;

    invoke-static {v5}, Lcom/marco/postProcessing/PostProcessing;->access$400(Lcom/marco/postProcessing/PostProcessing;)Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    mul-int/2addr v4, v0

    div-int/2addr v4, v7

    :goto_0
    sub-int/2addr v5, v4

    new-instance v0, Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/marco/postProcessing/PostProcessing$3;->this$0:Lcom/marco/postProcessing/PostProcessing;

    invoke-static {v4}, Lcom/marco/postProcessing/PostProcessing;->access$400(Lcom/marco/postProcessing/PostProcessing;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    iget-object v8, p0, Lcom/marco/postProcessing/PostProcessing$3;->this$0:Lcom/marco/postProcessing/PostProcessing;

    invoke-static {v8}, Lcom/marco/postProcessing/PostProcessing;->access$400(Lcom/marco/postProcessing/PostProcessing;)Landroid/graphics/Bitmap;

    move-result-object v8

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    const/4 v9, 0x0

    invoke-direct {v0, v9, v9, v4, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4, v0}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    new-array v12, v7, [I

    fill-array-data v12, :array_0

    new-array v13, v7, [F

    fill-array-data v13, :array_1

    new-instance v7, Landroid/graphics/RadialGradient;

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v8

    int-to-float v9, v8

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerY()I

    move-result v0

    int-to-float v10, v0

    int-to-float v11, v5

    sget-object v14, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object v8, v7

    invoke-direct/range {v8 .. v14}, Landroid/graphics/RadialGradient;-><init>(FFF[I[FLandroid/graphics/Shader$TileMode;)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    invoke-virtual {v0, v7}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setDither(Z)V

    const-string v5, "pref_vignette_strengh_key"

    invoke-static {v5}, Lcom/FixBSG;->MenuValue(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_2

    goto :goto_1

    :cond_2
    move v1, v5

    :goto_1
    const/16 v5, 0xff

    div-int/2addr v6, v1

    div-int/2addr v5, v6

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setAlpha(I)V

    invoke-virtual {v3, v4, v0}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/marco/postProcessing/PostProcessing$3;->this$0:Lcom/marco/postProcessing/PostProcessing;

    invoke-static {v0, v2}, Lcom/marco/postProcessing/PostProcessing;->access$402(Lcom/marco/postProcessing/PostProcessing;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/marco/postProcessing/PostProcessing$3;->this$0:Lcom/marco/postProcessing/PostProcessing;

    invoke-static {v0}, Lcom/marco/postProcessing/PostProcessing;->access$500(Lcom/marco/postProcessing/PostProcessing;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/marco/postProcessing/PostProcessing$3;->this$0:Lcom/marco/postProcessing/PostProcessing;

    const-string v1, "vignette"

    invoke-static {v0, v1}, Lcom/marco/postProcessing/PostProcessing;->access$600(Lcom/marco/postProcessing/PostProcessing;Ljava/lang/String;)Z

    :cond_3
    return-void

    :array_0
    .array-data 4
        0x0
        0x0
        -0x1000000
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3dcccccd    # 0.1f
        0x3f800000    # 1.0f
    .end array-data
.end method
