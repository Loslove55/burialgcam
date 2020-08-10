.class Lcom/marco/postProcessing/PostProcessing$13;
.super Ljava/lang/Object;
.source "PostProcessing.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/marco/postProcessing/PostProcessing;->runSmoothen(I)Ljava/lang/Runnable;
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

    iput-object p1, p0, Lcom/marco/postProcessing/PostProcessing$13;->this$0:Lcom/marco/postProcessing/PostProcessing;

    iput p2, p0, Lcom/marco/postProcessing/PostProcessing$13;->val$x:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    iget-object v0, p0, Lcom/marco/postProcessing/PostProcessing$13;->this$0:Lcom/marco/postProcessing/PostProcessing;

    invoke-static {v0}, Lcom/marco/postProcessing/PostProcessing;->access$400(Lcom/marco/postProcessing/PostProcessing;)Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v1, p0, Lcom/marco/postProcessing/PostProcessing$13;->this$0:Lcom/marco/postProcessing/PostProcessing;

    invoke-static {v1}, Lcom/marco/postProcessing/PostProcessing;->access$400(Lcom/marco/postProcessing/PostProcessing;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    sget-object v1, Lcom/marco/FixMarco;->staticContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/renderscript/RenderScript;->create(Landroid/content/Context;)Landroid/renderscript/RenderScript;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/renderscript/Allocation;->createFromBitmap(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;)Landroid/renderscript/Allocation;

    move-result-object v2

    invoke-virtual {v2}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/renderscript/Allocation;->createTyped(Landroid/renderscript/RenderScript;Landroid/renderscript/Type;)Landroid/renderscript/Allocation;

    move-result-object v3

    new-instance v4, Lcom/marco/postProcessing/ScriptC_median;

    invoke-direct {v4, v1}, Lcom/marco/postProcessing/ScriptC_median;-><init>(Landroid/renderscript/RenderScript;)V

    iget v5, p0, Lcom/marco/postProcessing/PostProcessing$13;->val$x:I

    int-to-float v5, v5

    const/high16 v6, 0x42c80000    # 100.0f

    div-float/2addr v5, v6

    invoke-virtual {v4, v5}, Lcom/marco/postProcessing/ScriptC_median;->set_strength(F)V

    invoke-virtual {v4, v2}, Lcom/marco/postProcessing/ScriptC_median;->set_input(Landroid/renderscript/Allocation;)V

    iget-object v5, p0, Lcom/marco/postProcessing/PostProcessing$13;->this$0:Lcom/marco/postProcessing/PostProcessing;

    invoke-static {v5}, Lcom/marco/postProcessing/PostProcessing;->access$400(Lcom/marco/postProcessing/PostProcessing;)Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    int-to-long v5, v5

    invoke-virtual {v4, v5, v6}, Lcom/marco/postProcessing/ScriptC_median;->set_width(J)V

    iget-object v5, p0, Lcom/marco/postProcessing/PostProcessing$13;->this$0:Lcom/marco/postProcessing/PostProcessing;

    invoke-static {v5}, Lcom/marco/postProcessing/PostProcessing;->access$400(Lcom/marco/postProcessing/PostProcessing;)Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    int-to-long v5, v5

    invoke-virtual {v4, v5, v6}, Lcom/marco/postProcessing/ScriptC_median;->set_height(J)V

    invoke-virtual {v4, v2, v3}, Lcom/marco/postProcessing/ScriptC_median;->forEach_median3(Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;)V

    invoke-virtual {v3, v0}, Landroid/renderscript/Allocation;->copyTo(Landroid/graphics/Bitmap;)V

    invoke-virtual {v2}, Landroid/renderscript/Allocation;->destroy()V

    invoke-virtual {v3}, Landroid/renderscript/Allocation;->destroy()V

    invoke-virtual {v4}, Lcom/marco/postProcessing/ScriptC_median;->destroy()V

    invoke-virtual {v1}, Landroid/renderscript/RenderScript;->destroy()V

    iget-object v1, p0, Lcom/marco/postProcessing/PostProcessing$13;->this$0:Lcom/marco/postProcessing/PostProcessing;

    invoke-static {v1, v0}, Lcom/marco/postProcessing/PostProcessing;->access$402(Lcom/marco/postProcessing/PostProcessing;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/marco/postProcessing/PostProcessing$13;->this$0:Lcom/marco/postProcessing/PostProcessing;

    invoke-static {v0}, Lcom/marco/postProcessing/PostProcessing;->access$500(Lcom/marco/postProcessing/PostProcessing;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/marco/postProcessing/PostProcessing$13;->this$0:Lcom/marco/postProcessing/PostProcessing;

    const-string v1, "smoothen"

    invoke-static {v0, v1}, Lcom/marco/postProcessing/PostProcessing;->access$600(Lcom/marco/postProcessing/PostProcessing;Ljava/lang/String;)Z

    :cond_0
    return-void
.end method
