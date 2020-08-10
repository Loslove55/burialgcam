.class Lcom/marco/postProcessing/PostProcessing$8;
.super Ljava/lang/Object;
.source "PostProcessing.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/marco/postProcessing/PostProcessing;->runSharpen(I)Ljava/lang/Runnable;
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

    iput-object p1, p0, Lcom/marco/postProcessing/PostProcessing$8;->this$0:Lcom/marco/postProcessing/PostProcessing;

    iput p2, p0, Lcom/marco/postProcessing/PostProcessing$8;->val$x:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    iget v0, p0, Lcom/marco/postProcessing/PostProcessing$8;->val$x:I

    int-to-float v0, v0

    const v1, -0x43333333    # -0.025f

    mul-float/2addr v0, v1

    const v1, 0x3e4ccccd    # 0.2f

    mul-float/2addr v1, v0

    const/high16 v2, 0x40800000    # 4.0f

    mul-float v3, v0, v2

    mul-float/2addr v2, v1

    add-float/2addr v3, v2

    neg-float v2, v3

    const/high16 v3, 0x3f800000    # 1.0f

    add-float/2addr v2, v3

    const/16 v3, 0x9

    new-array v3, v3, [F

    const/4 v4, 0x0

    aput v0, v3, v4

    const/4 v4, 0x1

    aput v1, v3, v4

    const/4 v4, 0x2

    aput v0, v3, v4

    const/4 v4, 0x3

    aput v1, v3, v4

    const/4 v4, 0x4

    aput v2, v3, v4

    const/4 v2, 0x5

    aput v1, v3, v2

    const/4 v2, 0x6

    aput v0, v3, v2

    const/4 v2, 0x7

    aput v1, v3, v2

    const/16 v1, 0x8

    aput v0, v3, v1

    iget-object v0, p0, Lcom/marco/postProcessing/PostProcessing$8;->this$0:Lcom/marco/postProcessing/PostProcessing;

    invoke-static {v0}, Lcom/marco/postProcessing/PostProcessing;->access$400(Lcom/marco/postProcessing/PostProcessing;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/marco/postProcessing/PostProcessing$8;->this$0:Lcom/marco/postProcessing/PostProcessing;

    invoke-static {v1}, Lcom/marco/postProcessing/PostProcessing;->access$400(Lcom/marco/postProcessing/PostProcessing;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    sget-object v1, Lcom/marco/FixMarco;->staticContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/renderscript/RenderScript;->create(Landroid/content/Context;)Landroid/renderscript/RenderScript;

    move-result-object v1

    invoke-static {v1}, Landroid/renderscript/Element;->U8_4(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/renderscript/ScriptIntrinsicConvolve3x3;->create(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;)Landroid/renderscript/ScriptIntrinsicConvolve3x3;

    move-result-object v2

    iget-object v4, p0, Lcom/marco/postProcessing/PostProcessing$8;->this$0:Lcom/marco/postProcessing/PostProcessing;

    invoke-static {v4}, Lcom/marco/postProcessing/PostProcessing;->access$400(Lcom/marco/postProcessing/PostProcessing;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/renderscript/Allocation;->createFromBitmap(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;)Landroid/renderscript/Allocation;

    move-result-object v4

    invoke-static {v1, v0}, Landroid/renderscript/Allocation;->createFromBitmap(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;)Landroid/renderscript/Allocation;

    move-result-object v5

    invoke-virtual {v2, v4}, Landroid/renderscript/ScriptIntrinsicConvolve3x3;->setInput(Landroid/renderscript/Allocation;)V

    invoke-virtual {v2, v3}, Landroid/renderscript/ScriptIntrinsicConvolve3x3;->setCoefficients([F)V

    invoke-virtual {v2, v5}, Landroid/renderscript/ScriptIntrinsicConvolve3x3;->forEach(Landroid/renderscript/Allocation;)V

    invoke-virtual {v5, v0}, Landroid/renderscript/Allocation;->copyTo(Landroid/graphics/Bitmap;)V

    invoke-virtual {v4}, Landroid/renderscript/Allocation;->destroy()V

    invoke-virtual {v5}, Landroid/renderscript/Allocation;->destroy()V

    invoke-virtual {v2}, Landroid/renderscript/ScriptIntrinsicConvolve3x3;->destroy()V

    invoke-virtual {v1}, Landroid/renderscript/RenderScript;->destroy()V

    iget-object v1, p0, Lcom/marco/postProcessing/PostProcessing$8;->this$0:Lcom/marco/postProcessing/PostProcessing;

    invoke-static {v1, v0}, Lcom/marco/postProcessing/PostProcessing;->access$402(Lcom/marco/postProcessing/PostProcessing;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/marco/postProcessing/PostProcessing$8;->this$0:Lcom/marco/postProcessing/PostProcessing;

    invoke-static {v0}, Lcom/marco/postProcessing/PostProcessing;->access$500(Lcom/marco/postProcessing/PostProcessing;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/marco/postProcessing/PostProcessing$8;->this$0:Lcom/marco/postProcessing/PostProcessing;

    const-string v1, "sharpen"

    invoke-static {v0, v1}, Lcom/marco/postProcessing/PostProcessing;->access$600(Lcom/marco/postProcessing/PostProcessing;Ljava/lang/String;)Z

    :cond_0
    return-void
.end method
