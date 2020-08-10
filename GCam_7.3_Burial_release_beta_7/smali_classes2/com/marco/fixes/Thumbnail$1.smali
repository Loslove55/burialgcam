.class Lcom/marco/fixes/Thumbnail$1;
.super Ljava/lang/Object;
.source "Thumbnail.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/marco/fixes/Thumbnail;->delayThumbnail()V
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

    iput-object p1, p0, Lcom/marco/fixes/Thumbnail$1;->this$0:Lcom/marco/fixes/Thumbnail;

    iput-object p2, p0, Lcom/marco/fixes/Thumbnail$1;->val$handler:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    sget v0, Lcom/marco/fixes/Thumbnail;->counter:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/marco/fixes/Thumbnail$1;->this$0:Lcom/marco/fixes/Thumbnail;

    const v1, 0x7f020319

    invoke-static {v1}, Lcom/marco/fixes/Fixes;->bitmapFromDrawables(I)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/marco/fixes/Thumbnail;->access$002(Lcom/marco/fixes/Thumbnail;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/marco/fixes/Thumbnail$1;->this$0:Lcom/marco/fixes/Thumbnail;

    const v1, 0x7f02031a

    invoke-static {v1}, Lcom/marco/fixes/Fixes;->bitmapFromDrawables(I)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/marco/fixes/Thumbnail;->access$102(Lcom/marco/fixes/Thumbnail;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/marco/fixes/Thumbnail$1;->this$0:Lcom/marco/fixes/Thumbnail;

    const v1, 0x7f02031b

    invoke-static {v1}, Lcom/marco/fixes/Fixes;->bitmapFromDrawables(I)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/marco/fixes/Thumbnail;->access$202(Lcom/marco/fixes/Thumbnail;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/marco/fixes/Thumbnail$1;->this$0:Lcom/marco/fixes/Thumbnail;

    const v1, 0x7f02031c

    invoke-static {v1}, Lcom/marco/fixes/Fixes;->bitmapFromDrawables(I)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/marco/fixes/Thumbnail;->access$302(Lcom/marco/fixes/Thumbnail;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/marco/fixes/Thumbnail$1;->this$0:Lcom/marco/fixes/Thumbnail;

    const v1, 0x7f02031d

    invoke-static {v1}, Lcom/marco/fixes/Fixes;->bitmapFromDrawables(I)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/marco/fixes/Thumbnail;->access$402(Lcom/marco/fixes/Thumbnail;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/marco/fixes/Thumbnail$1;->this$0:Lcom/marco/fixes/Thumbnail;

    const v1, 0x7f02031e

    invoke-static {v1}, Lcom/marco/fixes/Fixes;->bitmapFromDrawables(I)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/marco/fixes/Thumbnail;->access$502(Lcom/marco/fixes/Thumbnail;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/marco/fixes/Thumbnail$1;->this$0:Lcom/marco/fixes/Thumbnail;

    const v1, 0x7f02031f

    invoke-static {v1}, Lcom/marco/fixes/Fixes;->bitmapFromDrawables(I)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/marco/fixes/Thumbnail;->access$602(Lcom/marco/fixes/Thumbnail;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/marco/fixes/Thumbnail$1;->this$0:Lcom/marco/fixes/Thumbnail;

    const v1, 0x7f020320

    invoke-static {v1}, Lcom/marco/fixes/Fixes;->bitmapFromDrawables(I)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/marco/fixes/Thumbnail;->access$702(Lcom/marco/fixes/Thumbnail;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    :cond_0
    sget v0, Lcom/FixBSG;->sHdr_process:I

    if-nez v0, :cond_1

    sget v0, Lcom/marco/fixes/Thumbnail;->counter:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/marco/fixes/Thumbnail$1;->this$0:Lcom/marco/fixes/Thumbnail;

    invoke-static {v0}, Lcom/marco/fixes/Thumbnail;->access$800(Lcom/marco/fixes/Thumbnail;)Z

    return-void

    :cond_1
    sget v0, Lcom/FixBSG;->sHdr_process:I

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/marco/fixes/Thumbnail$1;->this$0:Lcom/marco/fixes/Thumbnail;

    invoke-static {v0}, Lcom/marco/fixes/Thumbnail;->access$900(Lcom/marco/fixes/Thumbnail;)I

    move-result v0

    sget v1, Lcom/marco/FixMarco;->mode:I

    if-eq v0, v1, :cond_3

    :cond_2
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DCIM/Camera/.nomedia"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/marco/fixes/Thumbnail$1;->this$0:Lcom/marco/fixes/Thumbnail;

    invoke-static {v0}, Lcom/marco/fixes/Thumbnail;->access$1000(Lcom/marco/fixes/Thumbnail;)V

    return-void

    :cond_3
    sget v0, Lcom/marco/fixes/Thumbnail;->counter:I

    rem-int/lit8 v0, v0, 0x8

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/marco/fixes/Thumbnail$1;->this$0:Lcom/marco/fixes/Thumbnail;

    invoke-static {v0}, Lcom/marco/fixes/Thumbnail;->access$1100(Lcom/marco/fixes/Thumbnail;)Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;

    move-result-object v0

    iget-object v2, p0, Lcom/marco/fixes/Thumbnail$1;->this$0:Lcom/marco/fixes/Thumbnail;

    invoke-static {v2}, Lcom/marco/fixes/Thumbnail;->access$700(Lcom/marco/fixes/Thumbnail;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;->setThumbnail(Landroid/graphics/Bitmap;I)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/marco/fixes/Thumbnail$1;->this$0:Lcom/marco/fixes/Thumbnail;

    invoke-static {v0}, Lcom/marco/fixes/Thumbnail;->access$1100(Lcom/marco/fixes/Thumbnail;)Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;

    move-result-object v0

    iget-object v2, p0, Lcom/marco/fixes/Thumbnail$1;->this$0:Lcom/marco/fixes/Thumbnail;

    invoke-static {v2}, Lcom/marco/fixes/Thumbnail;->access$600(Lcom/marco/fixes/Thumbnail;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;->setThumbnail(Landroid/graphics/Bitmap;I)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/marco/fixes/Thumbnail$1;->this$0:Lcom/marco/fixes/Thumbnail;

    invoke-static {v0}, Lcom/marco/fixes/Thumbnail;->access$1100(Lcom/marco/fixes/Thumbnail;)Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;

    move-result-object v0

    iget-object v2, p0, Lcom/marco/fixes/Thumbnail$1;->this$0:Lcom/marco/fixes/Thumbnail;

    invoke-static {v2}, Lcom/marco/fixes/Thumbnail;->access$500(Lcom/marco/fixes/Thumbnail;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;->setThumbnail(Landroid/graphics/Bitmap;I)V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/marco/fixes/Thumbnail$1;->this$0:Lcom/marco/fixes/Thumbnail;

    invoke-static {v0}, Lcom/marco/fixes/Thumbnail;->access$1100(Lcom/marco/fixes/Thumbnail;)Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;

    move-result-object v0

    iget-object v2, p0, Lcom/marco/fixes/Thumbnail$1;->this$0:Lcom/marco/fixes/Thumbnail;

    invoke-static {v2}, Lcom/marco/fixes/Thumbnail;->access$400(Lcom/marco/fixes/Thumbnail;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;->setThumbnail(Landroid/graphics/Bitmap;I)V

    goto :goto_0

    :pswitch_4
    iget-object v0, p0, Lcom/marco/fixes/Thumbnail$1;->this$0:Lcom/marco/fixes/Thumbnail;

    invoke-static {v0}, Lcom/marco/fixes/Thumbnail;->access$1100(Lcom/marco/fixes/Thumbnail;)Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;

    move-result-object v0

    iget-object v2, p0, Lcom/marco/fixes/Thumbnail$1;->this$0:Lcom/marco/fixes/Thumbnail;

    invoke-static {v2}, Lcom/marco/fixes/Thumbnail;->access$300(Lcom/marco/fixes/Thumbnail;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;->setThumbnail(Landroid/graphics/Bitmap;I)V

    goto :goto_0

    :pswitch_5
    iget-object v0, p0, Lcom/marco/fixes/Thumbnail$1;->this$0:Lcom/marco/fixes/Thumbnail;

    invoke-static {v0}, Lcom/marco/fixes/Thumbnail;->access$1100(Lcom/marco/fixes/Thumbnail;)Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;

    move-result-object v0

    iget-object v2, p0, Lcom/marco/fixes/Thumbnail$1;->this$0:Lcom/marco/fixes/Thumbnail;

    invoke-static {v2}, Lcom/marco/fixes/Thumbnail;->access$200(Lcom/marco/fixes/Thumbnail;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;->setThumbnail(Landroid/graphics/Bitmap;I)V

    goto :goto_0

    :pswitch_6
    iget-object v0, p0, Lcom/marco/fixes/Thumbnail$1;->this$0:Lcom/marco/fixes/Thumbnail;

    invoke-static {v0}, Lcom/marco/fixes/Thumbnail;->access$1100(Lcom/marco/fixes/Thumbnail;)Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;

    move-result-object v0

    iget-object v2, p0, Lcom/marco/fixes/Thumbnail$1;->this$0:Lcom/marco/fixes/Thumbnail;

    invoke-static {v2}, Lcom/marco/fixes/Thumbnail;->access$100(Lcom/marco/fixes/Thumbnail;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;->setThumbnail(Landroid/graphics/Bitmap;I)V

    goto :goto_0

    :pswitch_7
    iget-object v0, p0, Lcom/marco/fixes/Thumbnail$1;->this$0:Lcom/marco/fixes/Thumbnail;

    invoke-static {v0}, Lcom/marco/fixes/Thumbnail;->access$1100(Lcom/marco/fixes/Thumbnail;)Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;

    move-result-object v0

    iget-object v2, p0, Lcom/marco/fixes/Thumbnail$1;->this$0:Lcom/marco/fixes/Thumbnail;

    invoke-static {v2}, Lcom/marco/fixes/Thumbnail;->access$000(Lcom/marco/fixes/Thumbnail;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;->setThumbnail(Landroid/graphics/Bitmap;I)V

    :goto_0
    sget v0, Lcom/marco/fixes/Thumbnail;->counter:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/marco/fixes/Thumbnail;->counter:I

    sget v0, Lcom/marco/fixes/Thumbnail;->counter:I

    const/16 v1, 0x64

    if-ge v0, v1, :cond_4

    iget-object v0, p0, Lcom/marco/fixes/Thumbnail$1;->val$handler:Landroid/os/Handler;

    const-wide/16 v1, 0x7d

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_4
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
