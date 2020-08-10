.class final Lcom/marco/fixes/Fixes$8;
.super Ljava/lang/Object;
.source "Fixes.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/marco/fixes/Fixes;->waitExifWriteAgain(Landroid/media/ExifInterface;Ljava/io/File;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$exifInterface:Landroid/media/ExifInterface;

.field final synthetic val$file:Ljava/io/File;

.field final synthetic val$handler:Landroid/os/Handler;


# direct methods
.method constructor <init>(Ljava/io/File;Landroid/os/Handler;Landroid/media/ExifInterface;)V
    .locals 0

    iput-object p1, p0, Lcom/marco/fixes/Fixes$8;->val$file:Ljava/io/File;

    iput-object p2, p0, Lcom/marco/fixes/Fixes$8;->val$handler:Landroid/os/Handler;

    iput-object p3, p0, Lcom/marco/fixes/Fixes$8;->val$exifInterface:Landroid/media/ExifInterface;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/marco/fixes/Fixes$8;->val$file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/marco/fixes/Fixes$8;->val$handler:Landroid/os/Handler;

    const-wide/16 v1, 0x64

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/marco/fixes/Fixes$8;->val$exifInterface:Landroid/media/ExifInterface;

    invoke-virtual {v0}, Landroid/media/ExifInterface;->saveAttributes()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :goto_0
    return-void
.end method
