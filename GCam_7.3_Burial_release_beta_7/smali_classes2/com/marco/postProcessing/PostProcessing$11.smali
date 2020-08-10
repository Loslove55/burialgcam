.class Lcom/marco/postProcessing/PostProcessing$11;
.super Ljava/lang/Object;
.source "PostProcessing.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/marco/postProcessing/PostProcessing;->runHist()Ljava/lang/Runnable;
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

    iput-object p1, p0, Lcom/marco/postProcessing/PostProcessing$11;->this$0:Lcom/marco/postProcessing/PostProcessing;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    iget-object v0, p0, Lcom/marco/postProcessing/PostProcessing$11;->this$0:Lcom/marco/postProcessing/PostProcessing;

    invoke-static {v0}, Lcom/marco/postProcessing/PostProcessing;->access$400(Lcom/marco/postProcessing/PostProcessing;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/marco/postProcessing/PostProcessing$11;->this$0:Lcom/marco/postProcessing/PostProcessing;

    invoke-static {v1}, Lcom/marco/postProcessing/PostProcessing;->access$400(Lcom/marco/postProcessing/PostProcessing;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    iget-object v2, p0, Lcom/marco/postProcessing/PostProcessing$11;->this$0:Lcom/marco/postProcessing/PostProcessing;

    invoke-static {v2}, Lcom/marco/postProcessing/PostProcessing;->access$400(Lcom/marco/postProcessing/PostProcessing;)Landroid/graphics/Bitmap;

    move-result-object v2

    iget-object v3, p0, Lcom/marco/postProcessing/PostProcessing$11;->this$0:Lcom/marco/postProcessing/PostProcessing;

    invoke-static {v3}, Lcom/marco/postProcessing/PostProcessing;->access$400(Lcom/marco/postProcessing/PostProcessing;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v2

    sget-object v3, Lcom/marco/FixMarco;->staticContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/renderscript/RenderScript;->create(Landroid/content/Context;)Landroid/renderscript/RenderScript;

    move-result-object v3

    invoke-static {v3, v2}, Landroid/renderscript/Allocation;->createFromBitmap(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;)Landroid/renderscript/Allocation;

    move-result-object v4

    invoke-virtual {v4}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/renderscript/Allocation;->createTyped(Landroid/renderscript/RenderScript;Landroid/renderscript/Type;)Landroid/renderscript/Allocation;

    move-result-object v5

    new-instance v6, Lcom/marco/postProcessing/ScriptC_histEq;

    invoke-direct {v6, v3}, Lcom/marco/postProcessing/ScriptC_histEq;-><init>(Landroid/renderscript/RenderScript;)V

    mul-int/2addr v0, v1

    invoke-virtual {v6, v0}, Lcom/marco/postProcessing/ScriptC_histEq;->set_size(I)V

    invoke-virtual {v6, v4, v5}, Lcom/marco/postProcessing/ScriptC_histEq;->forEach_root(Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;)V

    invoke-virtual {v6}, Lcom/marco/postProcessing/ScriptC_histEq;->invoke_createRemapArray()V

    invoke-virtual {v6, v5, v4}, Lcom/marco/postProcessing/ScriptC_histEq;->forEach_remaptoRGB(Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;)V

    invoke-virtual {v4, v2}, Landroid/renderscript/Allocation;->copyTo(Landroid/graphics/Bitmap;)V

    invoke-virtual {v4}, Landroid/renderscript/Allocation;->destroy()V

    invoke-virtual {v5}, Landroid/renderscript/Allocation;->destroy()V

    invoke-virtual {v6}, Lcom/marco/postProcessing/ScriptC_histEq;->destroy()V

    invoke-virtual {v3}, Landroid/renderscript/RenderScript;->destroy()V

    iget-object v0, p0, Lcom/marco/postProcessing/PostProcessing$11;->this$0:Lcom/marco/postProcessing/PostProcessing;

    invoke-static {v0, v2}, Lcom/marco/postProcessing/PostProcessing;->access$402(Lcom/marco/postProcessing/PostProcessing;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/marco/postProcessing/PostProcessing$11;->this$0:Lcom/marco/postProcessing/PostProcessing;

    invoke-static {v0}, Lcom/marco/postProcessing/PostProcessing;->access$500(Lcom/marco/postProcessing/PostProcessing;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/marco/postProcessing/PostProcessing$11;->this$0:Lcom/marco/postProcessing/PostProcessing;

    const-string v1, "hist"

    invoke-static {v0, v1}, Lcom/marco/postProcessing/PostProcessing;->access$600(Lcom/marco/postProcessing/PostProcessing;Ljava/lang/String;)Z

    :cond_0
    return-void
.end method
