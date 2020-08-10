.class Lcom/marco/fixes/Thumbnail$3;
.super Ljava/lang/Object;
.source "Thumbnail.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/marco/fixes/Thumbnail;->setThumbnail()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/marco/fixes/Thumbnail;

.field final synthetic val$handler:Landroid/os/Handler;


# direct methods
.method constructor <init>(Lcom/marco/fixes/Thumbnail;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/marco/fixes/Thumbnail$3;->this$0:Lcom/marco/fixes/Thumbnail;

    iput-object p2, p0, Lcom/marco/fixes/Thumbnail$3;->val$handler:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    sget v0, Lcom/FixBSG;->sHdr_process:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/marco/fixes/Thumbnail$3;->val$handler:Landroid/os/Handler;

    const-wide/16 v1, 0x64

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/marco/fixes/Thumbnail$3;->this$0:Lcom/marco/fixes/Thumbnail;

    invoke-static {v0}, Lcom/marco/fixes/Thumbnail;->access$1100(Lcom/marco/fixes/Thumbnail;)Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;->setEnabled(Z)V

    iget-object v0, p0, Lcom/marco/fixes/Thumbnail$3;->this$0:Lcom/marco/fixes/Thumbnail;

    invoke-static {v0}, Lcom/marco/fixes/Thumbnail;->access$1100(Lcom/marco/fixes/Thumbnail;)Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;->setClickable(Z)V

    :goto_0
    return-void
.end method
