.class Lcom/marco/postProcessing/PostProcessing$1;
.super Ljava/lang/Object;
.source "PostProcessing.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/marco/postProcessing/PostProcessing;-><init>(Ljava/io/File;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/marco/postProcessing/PostProcessing;

.field final synthetic val$file:Ljava/io/File;

.field final synthetic val$handler:Landroid/os/Handler;


# direct methods
.method constructor <init>(Lcom/marco/postProcessing/PostProcessing;Landroid/os/Handler;Ljava/io/File;)V
    .locals 0

    iput-object p1, p0, Lcom/marco/postProcessing/PostProcessing$1;->this$0:Lcom/marco/postProcessing/PostProcessing;

    iput-object p2, p0, Lcom/marco/postProcessing/PostProcessing$1;->val$handler:Landroid/os/Handler;

    iput-object p3, p0, Lcom/marco/postProcessing/PostProcessing$1;->val$file:Ljava/io/File;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/marco/postProcessing/PostProcessing$1;->this$0:Lcom/marco/postProcessing/PostProcessing;

    invoke-static {v0}, Lcom/marco/postProcessing/PostProcessing;->access$008(Lcom/marco/postProcessing/PostProcessing;)I

    move-result v0

    const/16 v1, 0x96

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lcom/marco/postProcessing/PostProcessing$1;->this$0:Lcom/marco/postProcessing/PostProcessing;

    invoke-static {v0}, Lcom/marco/postProcessing/PostProcessing;->access$100(Lcom/marco/postProcessing/PostProcessing;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    return-void

    :cond_0
    sget v0, Lcom/FixBSG;->sHdr_process:I

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/marco/postProcessing/PostProcessing$1;->val$handler:Landroid/os/Handler;

    const-wide/16 v1, 0x64

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/marco/postProcessing/PostProcessing$1;->val$file:Ljava/io/File;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/marco/postProcessing/PostProcessing$1;->this$0:Lcom/marco/postProcessing/PostProcessing;

    invoke-static {v0}, Lcom/marco/postProcessing/PostProcessing;->access$100(Lcom/marco/postProcessing/PostProcessing;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    return-void

    :cond_2
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    iget-object v0, p0, Lcom/marco/postProcessing/PostProcessing$1;->this$0:Lcom/marco/postProcessing/PostProcessing;

    invoke-static {v0}, Lcom/marco/postProcessing/PostProcessing;->access$200(Lcom/marco/postProcessing/PostProcessing;)V

    :goto_0
    return-void
.end method
