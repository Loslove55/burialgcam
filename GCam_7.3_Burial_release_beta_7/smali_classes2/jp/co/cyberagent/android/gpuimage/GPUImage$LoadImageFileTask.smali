.class Ljp/co/cyberagent/android/gpuimage/GPUImage$LoadImageFileTask;
.super Ljp/co/cyberagent/android/gpuimage/GPUImage$LoadImageTask;
.source "GPUImage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljp/co/cyberagent/android/gpuimage/GPUImage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoadImageFileTask"
.end annotation


# instance fields
.field private final imageFile:Ljava/io/File;

.field final synthetic this$0:Ljp/co/cyberagent/android/gpuimage/GPUImage;


# direct methods
.method public constructor <init>(Ljp/co/cyberagent/android/gpuimage/GPUImage;Ljp/co/cyberagent/android/gpuimage/GPUImage;Ljava/io/File;)V
    .locals 0

    iput-object p1, p0, Ljp/co/cyberagent/android/gpuimage/GPUImage$LoadImageFileTask;->this$0:Ljp/co/cyberagent/android/gpuimage/GPUImage;

    invoke-direct {p0, p1, p2}, Ljp/co/cyberagent/android/gpuimage/GPUImage$LoadImageTask;-><init>(Ljp/co/cyberagent/android/gpuimage/GPUImage;Ljp/co/cyberagent/android/gpuimage/GPUImage;)V

    iput-object p3, p0, Ljp/co/cyberagent/android/gpuimage/GPUImage$LoadImageFileTask;->imageFile:Ljava/io/File;

    return-void
.end method


# virtual methods
.method protected decode(Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/GPUImage$LoadImageFileTask;->imageFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method protected getImageOrientation()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Landroid/media/ExifInterface;

    iget-object v1, p0, Ljp/co/cyberagent/android/gpuimage/GPUImage$LoadImageFileTask;->imageFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    const-string v1, "Orientation"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x6

    if-eq v0, v1, :cond_1

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/16 v0, 0x10e

    return v0

    :cond_1
    const/16 v0, 0x5a

    return v0

    :cond_2
    const/16 v0, 0xb4

    return v0
.end method
